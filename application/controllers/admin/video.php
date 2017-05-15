<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Video extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
		$this->load->model('Video_model');
	}
	public function index()
	{
		$data = $this->Video_model->getVideo();
		$temps['title'] = 'Video';
		$temps['site'] = 'video_list';
		$temps['data'] = $data;	
		$this->load->view("admin/index", $temps);
	}
	public function lists()
	{
		$this->index();
	}

	public function news()
	{
		$temps['title'] = 'Thêm video mới';
		$temps['site'] = 'video_new';
		$this->load->view("admin/index", $temps);
	}

	public function edit($id = FALSE)
	{
		if(!$id)
		{
			redirect(ROOT.'admin/video/lists.html', 'location');
		}

		$data = $this->Video_model->getVideo($id);
		if(!$data) redirect(ROOT.'admin/video/lists.html', 'location');
		$temps['title'] = 'Sửa video';
		$temps['site'] = 'video_new';
		$temps['data'] = $data[0];
		$this->load->view("admin/index", $temps);

	}

	public function news_sm($id = FALSE)
	{
		is_ajax();
		$name 		= $this->input->post('name');
		$slug 		= $this->input->post('slug');
		$image 		= $this->input->post('image');
		$content 	= $this->input->post('content', FALSE);
		$time 		= time();


		if(!$name) {message('Tiêu đề video không được để trống!');return;}
		if(!$image) {message('Tiêu đề video không được để trống!');return;}
		if(!$slug) {message('Slug video không được để trống!');return;}
		if($this->Video_model->getSlug($slug, $id)){message('Slug video này đã có. Vui lòng dùng slug khác!');return;}

        $param = array(
    		'name'		=> $name,
    		'slug'		=> $slug,
    		'content'	=> $content,
    		'image'	    => $image,
    		'time'		=> $time,
    		'type'		=> 'video',
    		'status'    => 1
    		);

    	if($id?$this->Video_model->updateVideo($id, $param):$this->Video_model->insertVideo($param))
    	{
    		message(($id?'Cập nhật':'Thêm').' video: <b>'.$name.'</b> thành công',3000, false, 'success');return;
    	}
    	else
    	{
   			message(($id?'Cập nhật':'Thêm').' video: <b>'.$name.'</b> thất bại');return;
    	}
	}


	public function remove($id = FALSE)
	{
		is_ajax();
		if(!$id){
			message('Không tìm thấy video này');return;
		}
		$param = array(
			'status' => -1,
			);
		if($this->Video_model->updateVideo($id, $param))
    	{
    		message('Xoá video thành công',3000, false, 'success');
    		transfer(FALSE, 3000);
    		return;
    	}
    	else
    	{
   			message('Xoá video thất bại');return;
    	}
	}


}