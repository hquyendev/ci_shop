<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Tai_khoan extends HQ_Controller{
	function __construct(){
		parent:: __construct();	
		if(!$this->login)
		{
			transfer(ROOT.'dang-nhap.html?next='.ROOT.URI, 0);
		}
	}
	public function index()
	{
		$data = array();
		if($data = $this->User_model->getUser($this->login['id'])){
			$data = $data[0];
		}
		else
		{
			$temps['Title'] = 'Không tìm thấy trang yêu cầu';
			$this->load->view("error/404", $temps);
			return;
		}
		$listParent = array(0=>array('name'=>'Tài khoản', 'slug'=>'tai-khoan'), 1=>array('name'=>'Thông tin tài khoản'));
		$temps['site'] = 'account';
		$temps['data'] = $data;
		$temps['listParent'] = $listParent;
		$this->load->view("user/index", $temps);
	}

	public function update()
	{
		is_ajax();
		$name = trim(strip_tags($this->input->post('name')));
		$email = trim(strip_tags($this->input->post('email')));
		$add = trim(strip_tags($this->input->post('add')));
		$phone = trim(strip_tags($this->input->post('phone')));
		$time = time();
		if(!$name) {message('Họ và tên không được để trống!');return;}
		if(!$email) {message('Email không được để trống!');return;}
		if(!$phone) {message('Số điện thoại không được để trống!');return;}
		if(!is_numeric($phone) || strlen($phone) < 10 || strlen($phone)>15) {message('Định dạng số điện thoại không đúng!');return;}

		if(!$user = $this->User_model->getUser($this->login['id']))
		{
			message('Thông tin tài khoản không được tìm thấy!');return;
		}
		$user = $user[0];
		if($this->User_model->checkCol('email', $email, $user['id'])) {message('Email này đã có người sử dụng!');return;}
		if($this->User_model->checkCol('phone', $phone, $user['id'])) {message('Số điện thoại này đã có người sử dụng!');return;}

		$param = array(
			'name'		=> $name,
			'phone'		=> $phone,
			'add'		=> $add,
			);

		if($id = $this->User_model->updateUser($this->login['id'], $param))
		{
			message('Cập nhật tài khoản thành công!', 3000, FALSE, 'success');return;
		}
		else
		{
			message('Cập nhật tài khoản thất bại!');return;
		}
	}

	public function doi_mat_khau()
	{
		$data = array();
		if($data = $this->User_model->getUser($this->login['id'])){
			$data = $data[0];
		}
		else
		{
			$temps['Title'] = 'Không tìm thấy trang yêu cầu';
			$this->load->view("error/404", $temps);
			return;
		}
		$listParent = array(0=>array('name'=>'Tài khoản', 'slug'=>'tai-khoan'), 1=>array('name'=>'Đổi mật khẩu'));
		$temps['site'] = 'change_pass';
		$temps['data'] = $data;
		$temps['listParent'] = $listParent;
		$this->load->view("user/index", $temps);
	}
	public function update_pass()
	{
		is_ajax();
		$password = trim(strip_tags($this->input->post('password')));
		$npassword = $this->input->post('npassword');
		$cnpassword = $this->input->post('cnpassword');
		if(!$password) {message('Mật khẩu cũ không được để trống!');return;}
		if(en_pass($password) != $this->login['password']) {message('Mật khẩu cũ không chính xác!');return;}
		if(!$npassword) {message('Mật khẩu mới không được để trống!');return;}
		if(strlen($npassword) > 20 OR strlen($npassword)<5) {message('Mật khẩu mới phải từ 6 đến 20 ký tự!');return;}
		if($npassword!=$cnpassword) {message('Mật khẩu mới nhập lại không chính xác!');return;}
		$param = array(
			'password'	=> en_pass($npassword),
			);

		if($id = $this->User_model->updateUser($this->login['id'], $param))
		{
			message('Cập nhật mật khẩu mới thành công!', 3000, FALSE, 'success');return;
		}
		else
		{
			message('Cập nhật mật khẩu mới thất bại!');return;
		}
	}

	public function danh_sach_dat_hang($id = FALSE)
	{
		$data = array();
		$listParent = array(0=>array('name'=>'Tài khoản', 'slug'=>'tai-khoan'), 1=>array('name'=>'Danh sách đơn hàng'));
		$data = $this->Cart_model->getOrder($this->login['id'], $id);
		if(isset($data[0])){
			$data[0]['detail'] = $this->Cart_model->getOrderDetail($data[0]['id']);
		}
		$temps['site'] = 'list_order';
		$temps['data'] = $data;
		$temps['listParent'] = $listParent;
		$this->load->view("user/index", $temps);
	}

	public function san_pham_yeu_thich($id = FALSE)
	{
		if(is_numeric($id))
		{
			is_ajax();
			if(!$product = $this->Product_model->getProduct($id))
			{
				message('Rất tiếc, chúng tối không tìm thấy thông tin sản phẩm này!');return;
			}
			if($this->User_model->getLike($this->login['id'], $id))
			{
				toast('Sản phẩm <b>'.$product[0]['name'].'</b> đã có trong danh sách yêu thích', 3000,'default', ROOT.'tai-khoan/san-pham-yeu-thich.html', 'Xem danh sách');
				return;
			}
			$param = array(
				'user'=>$this->login['id'],
				'product'=>$id,
				'time'=>time()
				);
			if($this->User_model->insertLike($param))
			{
				toast('Đã thêm sản phẩm <b>'.$product[0]['name'].'</b> vào danh sách yêu thích', 3000,'success', ROOT.'tai-khoan/san-pham-yeu-thich.html', 'Xem danh sách');
				return;
			}
		}
		else{
			$data = array();
			$listParent = array(0=>array('name'=>'Tài khoản', 'slug'=>'tai-khoan'), 1=>array('name'=>'Danh sách yêu thích'));
			$data = $this->User_model->getLike($this->login['id'], $id);
			if(isset($data[0])){
				foreach ($data as $key => $value) {
					if($product = $this->Product_model->getProduct($value['product']))
					{
						$data[$key]['name'] = $product[0]['name'];
						$data[$key]['price'] = $product[0]['price'];
						$data[$key]['image'] = $product[0]['image'];
					}
				}
			}
			$temps['site'] = 'list_like';
			$temps['data'] = $data;
			$temps['listParent'] = $listParent;
			$this->load->view("user/index", $temps);
		}
	}

	public function remove_like($id = FALSE)
	{
		is_ajax();
		if($id&&is_numeric($id))
		{
			if(!$product = $this->Product_model->getProduct($id))
			{
				message('Rất tiếc, chúng tối không tìm thấy thông tin sản phẩm này!');
			}
			if($this->User_model->removeLike($this->login['id'], $id))
			{
				toast('Đã xóa sản phẩm <b>'.$product[0]['name'].'</b> ra khỏi danh sách yêu thích', 3000,'success');
				java('removeItem("#item-'.$id.'");');
				return;
			}
			else
			{
				message('Rất tiếc, chúng tối không tìm thấy thông tin sản phẩm này!');return;
			}
		}
		else
		{
			message('Rất tiếc, chúng tối không tìm thấy thông tin sản phẩm này!');return;
		}
	}
}