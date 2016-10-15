<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Gio_hang extends HQ_Controller{
	function __construct(){
		parent:: __construct();	
	}
	public function index($slug = FALSE)
	{
		$data = array();
		$carts = $this->cart->contents();
		foreach ($carts as $key => $value) {
			if($product = $this->Product_model->getProduct($value['id']))
			{
				$product[0]['_qty'] = $value['qty'];
				$product[0]['option'] = $value['option'];
				$data[] = $product[0];
			}
		}
		$listParent = array(0=>array('name'=>'Giỏ hàng'));
		$temps['site'] = 'cart';
		$temps['data'] = $data;
		$temps['listParent'] = $listParent;
		$this->load->view("user/index", $temps);
	}

	public function remove($id = FALSE)
	{
		if(!$id)
		{
			$this->cart->destroy();
			toast('Đã xóa giỏ hàng.');
        	java('showNullCart();');
        	java('updateCartTable("", 0,0, 0, 0)');
        	java('updateCart(0,0)');
        	return;
		}
		else
		{
			$carts = $this->cart->contents();
			foreach ($carts as $key => $value)
		    {
		         if($value['id'] == $id)
		         {
		            $data = array(
		                  'rowid' 	=> $key,
		                  'qty'   	=> 0,
		                  'name'	=> $value['name'],
		                  'price'	=> $value['price'],
		            ); 
		            if($this->cart->update($data))
		            {
		            	toast('Đã xóa sản phẩm <b>'.$value['name'].'</b> khỏi giỏ hàng.');
		            	java('removeItem("#item-'.$id.'");');
		            	java('updateCartTable("", 0,0, "'.$this->cart->total_items().'", "'.number_format($this->cart->total()).'");');
        				java('updateCart("'.$this->cart->total_items().'","'.number_format($this->cart->total()).'");');
		            	transfer(FALSE, 2000);
		            	return;
		            }
		            else
		            	toast('Cập nhật giỏ hàng thất bại.', 3000,'error', ROOT.'gio-hang.html', 'Tải lại trang');

		            return;
		            break;
		         }
		    }
		}

	}

	public function update($id = FALSE)
	{
		is_ajax();
		if(!$id){message('Không tìm thấy sản phẩm này!'); return;}
		$qty = $this->input->post('qty');
		$color = $this->input->post('color');
		$size = $this->input->post('size');
		$carts = $this->cart->contents();
		foreach ($carts as $key => $value)
	    {
	         if($value['id'] == $id)
	         {
	         	if($qty > 10) {message('Bạn chỉ được mua tối đa 10 sản phẩm trong 1 lần mua. Nếu mua nhiều hơn, xin vui lòng đến trực tiếp cửa hàng để thỏa thuận giá cả hợp lý hơn!', 5000); return;}
	            $data = array(
	                  'rowid' 	=> $key,
	                  'qty'   	=> $qty,
	                  'name'	=> $value['name'],
	                  'price'	=> $value['price'],
	                  'option' 	=> array('color'=>$color, 'size'=>$size)
	            ); 
	            if($this->cart->update($data))
	            {
	            	toast('Cập nhật giỏ hàng thành công.', 3000,'success');
	            	java('updateCartTable('.($id).', "'.number_format($value['price']*$qty).'","'.$this->cart->total_items().'","'.number_format($this->cart->total()).'")');
	            	java('updateCart("'.$this->cart->total_items().'","'.number_format($this->cart->total()).'")');
	            }
	            else
	            	toast('Cập nhật giỏ hàng thất bại.', 3000,'error', ROOT.'gio-hang.html', 'Tải lại trang');

	            return;
	            break;
	         }
	    }
	}

	public function add($id = FALSE)
	{
		is_ajax();
		if(!$id){message('Không tìm thấy sản phẩm này!'); return;}
		$product = $this->Product_model->getProduct($id);
		if(!$product || !isset($product[0])) {message('Không tìm thấy sản phẩm này!'); return;}
		$_size = explode(',', $product[0]['size']);
		$_color = explode(',', $product[0]['color']);

		$qty = $this->input->post('qty');
		$color = $this->input->post('color');
		$size = $this->input->post('size');

		$qty = $qty?intval($qty):1;
		$color = $color?$color:0;
		$size = $size?$size:0;

		if($qty>10){message('Bạn chỉ được mua tối đa 10 sản phẩm trong 1 lần mua. Nếu mua nhiều hơn, xin vui lòng đến trực tiếp cửa hàng để thỏa thuận giá cả hợp lý hơn!', 5000); return;}
		if(!array_key_exists($color, $_color) OR !array_key_exists($size, $_size)) {message('Thao tác bị lỗi, vui lòng tải lại trang!'); return;}

		$carts = $this->cart->contents();
		//$this->cart->destroy();return;
		//echo '<pre>';
	    //print_r($carts);return;
		foreach ($carts as $key => $value)
	    {
	         if($value['id'] == $id)
	         {
	         	if(($value['qty'] + $qty) > 10) {message('Bạn chỉ được mua tối đa 10 sản phẩm trong 1 lần mua. Nếu mua nhiều hơn, xin vui lòng đến trực tiếp cửa hàng để thỏa thuận giá cả hợp lý hơn!', 5000); return;}
	            $data = array(
	                  'rowid' 	=> $key,
	                  'qty'   	=> $value['qty'] + $qty,
	                  'price' 	=> $product[0]['price'],
	                  'name'	=> $product[0]['name'],
	                  'option' 	=> array('color'=>$color, 'size'=>$size)
	            ); 
	            $this->cart->update($data);
	            toast('Đã thêm sản phẩm <b>'.$product[0]['name'].'</b> vào giỏ hàng.', 3000,'success', ROOT.'gio-hang.html', 'Xem giỏ hàng');
	            java('updateCart("'.$this->cart->total_items().'","'.number_format($this->cart->total()).'")');
	            return;
	            break;
	         }
	    }

	    $cart = array(
	    	'id' 		=>	$id,
	    	'qty'		=>	$qty,
          	'price' 	=> 	$product[0]['price'],
          	'name'		=>	$product[0]['name'],
	    	'option'	=>	array('color'=>$color, 'size'=>$size)
	    	);
	    if($this->cart->insert($cart))
	    {
	    	toast('Đã thêm sản phẩm <b>'.$product[0]['name'].'</b> vào giỏ hàng.', 3000,'success', ROOT.'gio-hang.html', 'Xem giỏ hàng');
	        java('updateCart("'.$this->cart->total_items().'","'.number_format($this->cart->total()).'")');
	        return;
	    }
	    else
	    {
	    	message('Có lỗi xảy ra, vui lòng tải lại trang!', 4000); return;
	    }
	}

	public function submit()
	{
		is_ajax();
		if(!$carts = $this->cart->contents())
		{
			message('Bạn chưa có sản phẩm nào trong giỏ hàng!'); return;
		}

		$name = $this->input->post('name');
		$phone = $this->input->post('phone');
		$add = $this->input->post('add');
		$note = $this->input->post('note');

		if(!$name OR !$phone OR !$add)
		{
			message('Vui lòng điền đủ thông tin trước khi gửi đơn hàng!'); return;
		}
		$user = $this->login['id']?$this->login['id']:0;
		$time = time();
		$param = array(
			'_name' 	=> $name,
			'_phone' 	=> $phone,
			'_add' 		=> $add,
			'_note' 	=> $note,
			'user'		=> $user,
			'count'		=> $this->cart->total_items(),
			'money'		=> $this->cart->total(),
			'time'		=> $time
			);

		if($id = $this->Cart_model->insertCart($param))
		{
			foreach ($carts as $key => $value)
		    {
		    	if($product = $this->Product_model->getProduct($value['id']))
		    	{
		            $param = array(
						'order'		=> $id,
						'product' 	=> $value['id'],
						'qty'   	=> $value['qty'],
						'name'   	=> $value['name'],
						'price' 	=> $product[0]['price'],
						'color'		=> $value['option']['color'],
						'size'		=> $value['option']['size'],
		            ); 
		            $this->Cart_model->insertCartDetail($param);
		    	}
		    	else
		    	{
		    		$this->Cart_model->deleteCartError($id);
		    		message('Gửi đơn hàng thất bại. Vui lòng xóa giỏ hàng và thử lại sau!');
					transfer(FALSE);
					return;
		    	}
		    }

			$this->cart->destroy();
			message('Gửi đơn hàng thành công. Bạn vui lòng chờ nhân viên gọi điện lại xác nhận thông tin đơn hàng!', 5000, ROOT.'tai-khoan/danh-sach-dat-hang/'.$id.'.html', 'success');
			transfer(ROOT.'tai-khoan/danh-sach-dat-hang/'.$id.'.html', 5000);
			return;
		}
		else{
			message('Gửi đơn hàng thất bại. Vui lòng xóa giỏ hàng và thử lại sau!');
			transfer(FALSE);
			return;
		}

	}

	public function danh_sach_dat_hang($id = FALSE)
	{
		$data = array();
		$listParent = array(0=>array('name'=>'Giỏ hàng', 'slug'=>'gio-hang'), 1=>array('name'=>'Danh sách đơn hàng'));
		$data = $this->Cart_model->getOrder($this->login['id']);
		$temps['site'] = 'list_order';
		$temps['data'] = $data;
		$temps['listParent'] = $listParent;
		$this->load->view("user/index", $temps);
	}
}