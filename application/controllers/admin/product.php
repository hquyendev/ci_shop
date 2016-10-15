<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Product extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
	}
	public function index()
	{
		$temps['site'] = 'product_list';
		$this->load->view("admin/index", $temps);
	}
	public function lists()
	{
		$this->index();
	}

	public function news()
	{
		$temps['title'] = 'Thêm sản phẩm mới';
		$temps['site'] = 'product_new';
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
		$price 		= $this->input->post('price');
		$cate 		= $this->input->post('cate');
		$qty 		= $this->input->post('qty');
		$color 		= $this->input->post('color');
		$size 		= $this->input->post('size');
		$water 		= $this->input->post('water');
		$detail 	= $this->input->post('detail', FALSE);
		$time 		= time();

		$image = $_FILES['image'];
		$imageSub = $_FILES['image2'];

		if(!$name) {message('Tên sản phẩm không được để trống!');return;}
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

            $config['wm_type'] = 'overlay';
			$config['wm_overlay_path'] = BASE.'upload/watermark.png';
			$config['wm_vrt_alignment'] = 'bottom';
			$config['wm_hor_alignment'] = 'right';
			$config['wm_padding'] = -10;
			$config['wm_opacity'] = 50;
            $this->image_lib->initialize($config);
            $this->image_lib->watermark();

            if(isset($imageSub['tmp_name'][0]))
            {
            	$accept = array('jpg', 'jpeg', 'bmp', 'png', 'gif');
            	foreach ($imageSub['tmp_name'] as $key => $value) {
            		$extention = explode('.', $imageSub['name'][$key]);
					$extention = end($extention);
					$imageSubName = md5('quyendev.com-2015'.$time.md5($key)).'.'.$extention;
					$listImage[] = $imageSubName;

					$type = str_replace('image/', '', $imageSub['type'][$key]);
					$sizeImage = getimagesize($imageSub['tmp_name'][$key]);

					if(!$sizeImage) {message('Ảnh phụ số '.$key.' không phải là ảnh!');return;}
					
					else
					{
						$mime = str_replace('image/', '', $sizeImage['mime']);
						if(!in_array($mime, $accept)) {message('Ảnh phụ số '.$key.' không phải là ảnh!');return;}
					}
					if(!in_array(strtolower($extention), $accept) OR !in_array($type, $accept)) {message('Ảnh phụ số '.$key.' không phải là ảnh!');return;}

					if(!copy($imageSub['tmp_name'][$key], BASE.'upload/product/origin/'.$imageSubName))
					{
						move_uploaded_file($imageSub['tmp_name'][$key], BASE.'upload/product/origin/'.$imageSubName);
						move_uploaded_file($imageSub['tmp_name'][$key], BASE.'upload/product/450/'.$imageSubName);
					}
					else
					{
						move_uploaded_file($imageSub['tmp_name'][$key], BASE.'upload/product/450/'.$imageSubName);
					}

					$config['image_library'] = 'gd2';
		            $config['source_image']	= BASE.'upload/product/450/'.$imageSubName;
		            $config['create_thumb'] = FALSE;
		            $config['maintain_ratio'] = TRUE;
		            $config['width'] = 450;
		            $config['height'] = $config['width'] * $sizeImage[1] / $sizeImage[0];
		            $this->image_lib->initialize($config);
		            $this->image_lib->resize();

		            $config['wm_type'] = 'overlay';
					$config['wm_overlay_path'] = BASE.'upload/watermark.png';
					$config['wm_vrt_alignment'] = 'bottom';
					$config['wm_hor_alignment'] = 'right';
					$config['wm_padding'] = -10;
					$config['wm_opacity'] = 50;
		            $this->image_lib->initialize($config);
		            $this->image_lib->watermark();
            	}

            	$param = array(
            		'name'		=> $name,
            		'price'		=> $price,
            		'cate'		=> $cate,
            		'qty'		=> $qty,
            		'color'		=> $color,
            		'size'		=> $size,
            		'image'		=> implode('|', $listImage),
            		'detail'	=> $detail,
            		'time'		=> $time
            		);
            	if($this->Product_model->insertProduct($param))
            	{
            		message('Thêm sản phẩm:<b>'.$name.'</b> thành công',3000, false, 'success');return;
            	}
            	else
            	{
           			message('Thêm sản phẩm:<b>'.$name.'</b> thất bại');return;
            	}

            }

        }else{
            message($this->upload->display_errors());return;
        }

	}


}