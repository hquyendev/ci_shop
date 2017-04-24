<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Video extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
		$this->load->model('Video_model');
	}
	public function index($id = FALSE)
	{
		if(!$id){
			return $this->videos();
		}else{
			return $this->read($id);
		}
	}

	public function videos()
	{
		$listParent = array(0=>array('name'=>'Videos'));
		$data = $this->Video_model->getVideo();
		$data_view = $this->Video_model->getVideoView();


		$temps['site'] = 'video';
		$temps['data'] = $data;
		$temps['data_view'] = $data_view;
		$temps['listParent'] = $listParent;
		return $this->load->view("user/index", $temps);
	}

	public function read($id = FALSE)
	{
		if(!$id){
			return $this->load->view("error/404");
		}

		$data = $this->Video_model->getVideo($id);
		if(!isset($data[0])){
			return $this->load->view("error/404");
		}
		$data_view = $this->Video_model->getVideoView($data[0]['id']);
		$listParent = array(0=>array('name'=>'Videos', 'slug'=>'video'), 1=>array('name'=>$data[0]['name']));

		$temps['site'] = 'video_detail';
		$temps['data'] = $data[0];
		$temps['data_view'] = $data_view;
		$temps['listParent'] = $listParent;
		return $this->load->view("user/index", $temps);
	}

	
}