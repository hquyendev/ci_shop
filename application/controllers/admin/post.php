<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Guide extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
		$this->load->model('Guide_model');
	}
	public function index()
	{
		$data = $this->Guide_model->getGuide();
		$temps['title'] = 'Bài viết';
		$temps['site'] = 'guide_list';
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
		$temps['site'] = 'guide_new';
		$this->load->view("admin/index", $temps);
	}

	public function edit($id = FALSE)
	{
		if(!$id)
		{
			redirect(ROOT.'product/lists.html', 'location');
		}

		$data = $this->Guide_model->getGuide($id);
		if(!$data) redirect(ROOT.'product/lists.html', 'location');
		$temps['title'] = 'Sửa bài viết';
		$temps['site'] = 'guide_edit';
		$temps['data'] = $data[0];
		$this->load->view("admin/index", $temps);

	}

	public function news_sm()
	{
		is_ajax();
		$name 		= $this->input->post('name');
		$slug 		= $this->input->post('slug');
		$content 	= $this->input->post('content', FALSE);
		$time 		= time();


		if(!$name) {message('Tên bài viết không được để trống!');return;}
		if(!$slug) {message('Slug bài viết không được để trống!');return;}
		if($this->Guide_model->getSlug($slug)){message('Slug bài viết này đã có. Vui lòng dùng slug khác!');return;}

    	$param = array(
    		'name'		=> $name,
    		'slug'		=> $slug,
    		'content'	=> $content,
    		'time'		=> $time
    		);
    	if($this->Guide_model->insertGuide($param))
    	{
    		message('Thêm bài viết: <b>'.$name.'</b> thành công',3000, false, 'success');return;
    	}
    	else
    	{
   			message('Thêm bài viết: <b>'.$name.'</b> thất bại');return;
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
		if($this->Guide_model->deleteGuide($id))
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