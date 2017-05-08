<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Video extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
		$this->load->model('Video_model');
	}
	public function index($slug = FALSE)
	{
		if(!$slug){
			return $this->videos();
		}else{
			return $this->read($slug);
		}
	}

	public function videos()
	{
		$listParent = array(0=>array('name'=>'Videos'));
		$data = $this->Video_model->getVideoSlug();
		$data_view = $this->Video_model->getVideoView();


		$temps['site'] = 'video';
		$temps['data'] = $data;
		$temps['title'] = 'Video - Hải sản Ông Vũ';
		$temps['data_view'] = $data_view;
		$temps['listParent'] = $listParent;
		return $this->load->view("user/index", $temps);
	}

	public function read($slug = FALSE)
	{
		$slug = str_replace('_', '-', $slug);
		if(!$slug){
			return $this->load->view("error/404");
		}

		$data = $this->Video_model->getVideoSlug($slug);
		if(!isset($data[0])){
			return $this->load->view("error/404");
		}
		$data_view = $this->Video_model->getVideoView($data[0]['id']);
		$listParent = array(0=>array('name'=>'Videos', 'slug'=>'video'), 1=>array('name'=>$data[0]['name']));

		$temps['site'] = 'video_detail';
		$temps['data'] = $data[0];
		$temps['title'] = $data[0]['name'].' - Video';
		$temps['data_view'] = $data_view;
		$temps['listParent'] = $listParent;
		return $this->load->view("user/index", $temps);
	}

	
}