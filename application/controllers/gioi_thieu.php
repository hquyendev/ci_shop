<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Gioi_thieu extends HQ_Controller{
	function __construct(){
		parent:: __construct();	
		$this->load->model('Intro_model');
	}
	public function index($slug = FALSE)
	{
		$this->output->cache(10);
		$slug = str_replace('_', '-', $slug);
		$data = $this->Intro_model->getIntro();
		if($data)
		{
			$listParent = array(0=>array('name'=>'Giới thiệu', 'slug'=>'gioi-thieu'), 1=>array('name'=>$data[0]['name']));
			$content = $data[0];
			if($slug AND $guide = $this->Intro_model->getIntroSlug($slug))
			{
				$content = $guide[0];
				$listParent = array(0=>array('name'=>'Giới thiệu', 'slug'=>'gioi-thieu'), 1=>array('name'=>$guide[0]['name']));
			}

			$temps['site'] = 'intro';
			$temps['title'] = $content['name'].' - Khách hàng';
			$temps['data'] = $data;
			$temps['content'] = $content;
			$temps['listParent'] = $listParent;
			$this->load->view("user/index", $temps);
		}
		else
		{
			$temps['site'] = 'error/404';
			$this->load->view("user/index", $temps);
		}
	}

}