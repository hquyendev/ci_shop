<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Intro extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
		$this->load->model('Intro_model');
	}
	public function index()
	{
		$data = $this->Intro_model->getIntro();
		$temps['title'] = 'Bài viết';
		$temps['site'] = 'intro_list';
		$temps['data'] = $data;	
		$this->load->view("admin/index", $temps);
	}
	public function lists()
	{
		$this->index();
	}

	public function news()
	{
		$temps['title'] = 'Thêm bài giới thiệu mới';
		$temps['site'] = 'intro_new';
		$this->load->view("admin/index", $temps);
	}

	public function edit($id = FALSE)
	{
		if(!$id)
		{
			redirect(ROOT.'product/lists.html', 'location');
		}

		$data = $this->Intro_model->getIntro($id);
		if(!$data) redirect(ROOT.'product/lists.html', 'location');
		$temps['title'] = 'Sửa bài giới thiệu';
		$temps['site'] = 'intro_new';
		$temps['data'] = $data[0];
		$this->load->view("admin/index", $temps);

	}

	public function news_sm($id=FALSE)
	{
		is_ajax();
		$name 		= $this->input->post('name');
		$slug 		= $this->input->post('slug');
		$description 		= $this->input->post('description');
		$content 	= $this->input->post('content', FALSE);
		$time 		= time();


		if(!$name) {message('Tên bài giới thiệu không được để trống!');return;}
		if(!$slug) {message('Slug bài giới thiệu không được để trống!');return;}
		if($this->Intro_model->getSlug($slug, $id)){message('Slug bài giới thiệu này đã có. Vui lòng dùng slug khác!');return;}

        $param = array(
    		'name'		=> $name,
    		'slug'		=> $slug,
    		'description'		=> $description,
    		'content'	=> $content,
    		'time'		=> $time,
    		'active'		=> 1,
    		);

		$image = $_FILES['image'];

		if($image['tmp_name']){
			if(!is_image($image)) {message('Hình ảnh chính được chọn không phải hình ảnh!'); return; }

			$imageSize = getimagesize($image['tmp_name']);

			$config['upload_path'] = BASE.'upload/intro/450/';
			$config['allowed_types'] = 'gif|jpg|png|bmp|jpeg';
			$config['max_size']	= '10240';
			$config['max_width']  = '3000';
			$config['max_height']  = '2380';
	        $this->load->library("upload", $config);
	        if($this->upload->do_upload("image")){
	            $check = $this->upload->data();
	            if(!move_uploaded_file($image['tmp_name'], BASE.'upload/intro/origin/'.$check['file_name']))
	            {
	            	copy($image['tmp_name'], BASE.'upload/intro/origin/'.$check['file_name']);
	            }
		    	if($image)
		    		$param['image'] = $check['file_name'];
	        }else{
	            message($this->upload->display_errors());return;
	        }
	    }
    	if($id?$this->Intro_model->updateIntro($id, $param):$this->Intro_model->insertIntro($param))
    	{
    		message(($id?'Cập nhật':'Thêm').' bài giới thiệu: <b>'.$name.'</b> thành công',3000, false, 'success');return;
    	}
    	else
    	{
   			message(($id?'Cập nhật':'Thêm').' bài giới thiệu: <b>'.$name.'</b> thất bại');return;
    	}

	}

	public function edit_sm($id = FALSE)
	{
		is_ajax();
		if(!$id){
			message('Không tìm thấy bài giới thiệu này');return;
		}
		$name 		= $this->input->post('name');
		$slug 		= $this->input->post('slug');
		$content 	= $this->input->post('content', FALSE);
		$time 		= time();

		if(!$intro = $this->Intro_model->getIntro($id))
		{
			message('Không tìm thấy thông tin bài giới thiệu này');return;
		}

		if(!$name) {message('Tên bài giới thiệu không được để trống!');return;}
		if(!$slug) {message('Slug bài giới thiệu không được để trống!');return;}
		if($this->Intro_model->getSlug($slug, $id)){message('Slug bài giới thiệu này đã có. Vui lòng dùng slug khác!');return;}

    	$param = array(
    		'name'		=> $name,
    		'slug'		=> $slug,
    		'content'	=> $content,
    		'time'		=> $time
    		);
    	if($this->Intro_model->updateIntro($id,$param))
    	{
    		message('Thêm bài giới thiệu: <b>'.$name.'</b> thành công',3000, false, 'success');return;
    	}
    	else
    	{
   			message('Thêm bài giới thiệu: <b>'.$name.'</b> thất bại');return;
    	}

	}

	public function remove($id = FALSE)
	{
		is_ajax();
		if(!$id){
			message('Không tìm thấy bài giới thiệu này');return;
		}
		if($this->Intro_model->deleteIntro($id))
    	{
    		message('Xoá bài giới thiệu thành công',3000, false, 'success');
    		transfer(FALSE, 3000);
    		return;
    	}
    	else
    	{
   			message('Xoá bài giới thiệu thất bại');return;
    	}
	}


}