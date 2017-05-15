<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Product extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
	}
	public function index()
	{
		$data = $this->Product_model->getProduct();
		$temps['title'] = 'Danh sách sản phẩm';
		$temps['site'] = 'product_list';
		$temps['data'] = $data;
		$this->load->view("admin/index", $temps);
	}
	public function lists()
	{
		$this->index();
	}

	public function news()
	{
		$temps['title'] = 'Thêm sản phẩm mới';
		$temps['site'] = 'product_edit';
		$this->load->view("admin/index", $temps);
	}

	public function edit($id = FALSE)
	{
		if(!$id)
		{
			redirect(ROOT.'product/lists.html', 'location');
		}

		$data = $this->Product_model->getProduct($id);
		if(!$data) redirect(ROOT.'product/lists.html', 'location');
		$temps['title'] = 'Sửa sản phẩm';
		$temps['site'] = 'product_edit';
		$temps['data'] = $data[0];
		$this->load->view("admin/index", $temps);

	}

	public function news_sm()
	{
		$name 		= $this->input->post('name');
		$slug 		= $this->input->post('slug');
		$price 		= $this->input->post('price');
		$cate 		= $this->input->post('cate');
		$qty 		= $this->input->post('qty');
		$color 		= $this->input->post('color');
		$size 		= $this->input->post('size');
		$water 		= $this->input->post('water');
		$detail 	= $this->input->post('detail', FALSE);
		$time 		= time();

		$image = $_FILES['image'];

		if(!$name) {message('Tên sản phẩm không được để trống!');return;}
		if($this->Product_model->getProductSlug($slug)) {message('Slug sản phẩm này đã có!');return;}
		if(!$cate) {message('Danh mục sản phẩm không được để trống!');return;}

		if(!$image['tmp_name']) {message('Hình ảnh chính không được bỏ trống!'); return; } 
		if(!is_image($image)) {message('Hình ảnh chính được chọn không phải hình ảnh!'); return; }
		
		if(!$this->Cate_model->getCate($cate)){message('Danh mục này không tồn tại!'); return; }


		$imageSize = getimagesize($image['tmp_name']);
		$listImage = array();


		$config['upload_path'] = BASE.'upload/product/450/';
		$config['allowed_types'] = 'gif|jpg|png|bmp|jpeg';
		$config['max_size']	= '1500';
		$config['max_width']  = '1600';
		$config['max_height']  = '1280';
        $this->load->library("upload", $config);
        if($this->upload->do_upload("image")){
            $check = $this->upload->data();
            if(!move_uploaded_file($image['tmp_name'], BASE.'upload/product/origin/'.$check['file_name']))
            {
            	copy($image['tmp_name'], BASE.'upload/product/origin/'.$check['file_name']);
            }
            $listImage[] = $check['file_name'];
            $this->load->library("image_lib");

           	$config['image_library'] = 'gd2';
            $config['source_image']	= BASE.'upload/product/450/'.$check['file_name'];
            $config['create_thumb'] = FALSE;
            $config['maintain_ratio'] = TRUE;
            $config['width'] = 450;
            $config['height'] = $config['width'] * $imageSize[1] / $imageSize[0];
            $this->image_lib->initialize($config);
            $this->image_lib->resize();

   //          $config['wm_type'] = 'overlay';
			// $config['wm_overlay_path'] = BASE.'upload/watermark.png';
			// $config['wm_vrt_alignment'] = 'bottom';
			// $config['wm_hor_alignment'] = 'right';
			// $config['wm_padding'] = -10;
			// $config['wm_opacity'] = 50;
   //          $this->image_lib->initialize($config);
   //          $this->image_lib->watermark();


        	$param = array(
        		'name'		=> $name,
        		'price'		=> $price,
        		'slug'		=> $slug,
        		'cate'		=> $cate,
        		'qty'		=> $qty,
        		'color'		=> $color,
        		'size'		=> $size,
        		'image'		=> implode('|', $listImage),
        		'detail'	=> $detail,
        		'time'		=> $time
        		);
        	if(1==1) //$this->Product_model->insertProduct($param))
        	{
        		message('Thêm sản phẩm:<b>'.$name.'</b> thành công',3000, false, 'success');return;
        	}
        	else
        	{
       			message('Thêm sản phẩm:<b>'.$name.'</b> thất bại');return;
        	}


        }else{
            message($this->upload->display_errors());return;
        }

	}

	public function edit_sm($id = FALSE)
	{
		$name 		= $this->input->post('name');
		$slug 		= $this->input->post('slug');
    $price    = $this->input->post('price');
		$unit 		= $this->input->post('unit');
		$cate 		= $this->input->post('cate');
		$qty 		= $this->input->post('qty');
		$color 		= $this->input->post('color');
		$size 		= $this->input->post('size');
		$water 		= $this->input->post('water');
		$detail 	= $this->input->post('detail', FALSE);
		$time 		= time();

		$image = $_FILES?$_FILES['image']:FALSE;

		if(!$prod = $this->Product_model->getProduct($id)) {message('Sản phẩm không tồn tại trong hệ thống!');return;}

		if(!$name) {message('Tên sản phẩm không được để trống!');return;}
    echo $id;
		if($this->Product_model->getProductSlug($slug, $id)) {message('Slug sản phẩm này đã có!');return;}
		if(!$cate) {message('Danh mục sản phẩm không được để trống!');return;}

		
    	$param = array(
    		'name'		=> $name,
    		'slug'		=> $slug,
        'price'   => $price,
    		'unit'		=> $unit,
    		'cate'		=> $cate,
    		'qty'		=> $qty,
    		'color'		=> $color,
    		'size'		=> $size,
    		'detail'	=> $detail,
    		'time'		=> $time
    		);
		if(!$this->Cate_model->getCate($cate)){message('Danh mục này không tồn tại!'); return; }
		$listImage = array();

		if($image['tmp_name']){
			$imageSize = getimagesize($image['tmp_name']);


			$config['upload_path'] = BASE.'upload/product/450/';
			$config['allowed_types'] = 'gif|jpg|png|bmp|jpeg';
			$config['max_size']	= '1500';
			$config['max_width']  = '1600';
			$config['max_height']  = '1280';
	        $this->load->library("upload", $config);
	        if($this->upload->do_upload("image")){
	            $check = $this->upload->data();
	            if(!move_uploaded_file($image['tmp_name'], BASE.'upload/product/origin/'.$check['file_name']))
	            {
	            	copy($image['tmp_name'], BASE.'upload/product/origin/'.$check['file_name']);
	            }
	            $listImage[] = $check['file_name'];
              $this->load->library("image_lib");

              $config['image_library'] = 'gd2';
              $config['source_image'] = BASE.'upload/product/450/'.$check['file_name'];
              $config['create_thumb'] = FALSE;
              $config['maintain_ratio'] = TRUE;
              $config['width'] = 450;
              $config['height'] = $config['width'] * $imageSize[1] / $imageSize[0];
              $this->image_lib->initialize($config);
              $this->image_lib->resize();

    			$param['image']		= implode('|', $listImage);
	        }else{
	            message($this->upload->display_errors());return;
	        }
	    }
    	if($id?($this->Product_model->updateProduct($id,$param)):($this->Product_model->insertProduct($param)))
    	{
    		message('Cập nhật sản phẩm:<b>'.$name.'</b> thành công',3000, false, 'success');return;
    	}
    	else
    	{
   			message('Cập nhật sản phẩm:<b>'.$name.'</b> thất bại');return;
    	}


	}

  public function remove($id = FALSE)
  {
    if(!$id) {message('Vui lòng kiểm tra lại!');return;}
    $param = array(
      'active' => -1 
    );
    if($this->Product_model->updateProduct($id,$param))
    {
      message('Xóa sản phẩm thành công',3000, false, 'success');return;
    }
    else
    {
      message('Xóa sản phẩm thành công thất bại');return;
    }

  }


}