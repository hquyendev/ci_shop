<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Blog extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
		$this->load->model('Blog_model');
	}
	public function index()
	{
		$data = $this->Blog_model->getBlog();
		$temps['title'] = 'Bài viết';
		$temps['site'] = 'blog_list';
		$temps['data'] = $data;	
		$this->load->view("admin/index", $temps);
	}
	public function lists()
	{
		$this->index();
	}

	public function news()
	{
		$temps['title'] = 'Thêm bài viết mới';
		$temps['site'] = 'blog_new';
		$this->load->view("admin/index", $temps);
	}

	public function edit($id = FALSE)
	{
		if(!$id)
		{
			redirect(ROOT.'admin/blog/lists.html', 'location');
		}

		$data = $this->Blog_model->getBlog($id);
		if(!$data) redirect(ROOT.'admin/blog/lists.html', 'location');
		$temps['title'] = 'Sửa blog';
		$temps['site'] = 'blog_new';
		$temps['data'] = $data[0];
		$this->load->view("admin/index", $temps);

	}

	public function news_sm($id = FALSE)
	{
		is_ajax();
		$name 		= $this->input->post('name');
		$slug 		= $this->input->post('slug');
		$content 	= $this->input->post('content', FALSE);
		$time 		= time();


		if(!$name) {message('Tên bài viết không được để trống!');return;}
		if(!$slug) {message('Slug bài viết không được để trống!');return;}
		if($this->Blog_model->getSlug($slug, $id)){message('Slug bài viết này đã có. Vui lòng dùng slug khác!');return;}

        $param = array(
    		'name'		=> $name,
    		'slug'		=> $slug,
    		'content'	=> $content,
    		'time'		=> $time,
    		'type'		=> 'blog',
    		'status'    => 1
    		);

		$image = $_FILES['image'];

		if($image['tmp_name']){
			if(!is_image($image)) {message('Hình ảnh chính được chọn không phải hình ảnh!'); return; }

			$imageSize = getimagesize($image['tmp_name']);

			$config['upload_path'] = BASE.'upload/post/450/';
			$config['allowed_types'] = 'gif|jpg|png|bmp|jpeg';
			$config['max_size']	= '10240';
			$config['max_width']  = '3000';
			$config['max_height']  = '2380';
	        $this->load->library("upload", $config);
	        if($this->upload->do_upload("image")){
	            $check = $this->upload->data();
	            if(!move_uploaded_file($image['tmp_name'], BASE.'upload/post/origin/'.$check['file_name']))
	            {
	            	copy($image['tmp_name'], BASE.'upload/post/origin/'.$check['file_name']);
	            }
		    	if($image)
		    		$param['image'] = $check['file_name'];
	        }else{
	            message($this->upload->display_errors());return;
	        }
	    }
    	if($id?$this->Blog_model->updateBlog($id, $param):$this->Blog_model->insertBlog($param))
    	{
    		message(($id?'Cập nhật':'Thêm').' blog: <b>'.$name.'</b> thành công',3000, false, 'success');return;
    	}
    	else
    	{
   			message(($id?'Cập nhật':'Thêm').' blog: <b>'.$name.'</b> thất bại');return;
    	}



	}

	public function edit_sm($id = FALSE)
	{
		is_ajax();
		if(!$id){
			message('Không tìm thấy bài viết này');return;
		}
		$name 		= $this->input->post('name');
		$slug 		= $this->input->post('slug');
		$content 	= $this->input->post('content', FALSE);
		$time 		= time();

		if(!$guide = $this->Guide_model->getGuide($id))
		{
			message('Không tìm thấy thông tin bài viết này');return;
		}

		if(!$name) {message('Tên bài viết không được để trống!');return;}
		if(!$slug) {message('Slug bài viết không được để trống!');return;}
		if($this->Guide_model->getSlug($slug, $id)){message('Slug bài viết này đã có. Vui lòng dùng slug khác!');return;}

    	$param = array(
    		'name'		=> $name,
    		'slug'		=> $slug,
    		'content'	=> $content,
    		'time'		=> $time
    		);
    	if($this->Guide_model->updateGuide($id,$param))
    	{
    		message('Thêm bài viết: <b>'.$name.'</b> thành công',3000, false, 'success');return;
    	}
    	else
    	{
   			message('Thêm bài viết: <b>'.$name.'</b> thất bại');return;
    	}

	}

	public function remove($id = FALSE)
	{
		is_ajax();
		if(!$id){
			message('Không tìm thấy bài viết này');return;
		}
		$param = array(
			'status' => -1,
			);
		if($this->Blog_model->updateBlog($id, $param))
    	{
    		message('Xoá bài viết thành công',3000, false, 'success');
    		transfer(FALSE, 3000);
    		return;
    	}
    	else
    	{
   			message('Xoá bài viết thất bại');return;
    	}
	}


}