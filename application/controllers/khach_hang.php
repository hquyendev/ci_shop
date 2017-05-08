<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Khach_hang extends HQ_Controller{
	function __construct(){
		parent:: __construct();	
		$this->load->model('Guide_model');
	}
	public function index($slug = FALSE)
	{
		$this->output->cache(10);
		$slug = str_replace('_', '-', $slug);
		$data = $this->Guide_model->getGuide();
		if($data)
		{
			$listParent = array(0=>array('name'=>'Khách hàng', 'slug'=>'khach-hang'), 1=>array('name'=>$data[0]['name']));
			$content = $data[0];
			if($slug AND $guide = $this->Guide_model->getGuideSlug($slug))
			{
				$content = $guide[0];
				$listParent = array(0=>array('name'=>'Khách hàng', 'slug'=>'khach-hang'), 1=>array('name'=>$guide[0]['name']));
			}

			$temps['site'] = 'guide';
			$temps['data'] = $data;
			$temps['title'] = $content['name'].' - Khách hàng';
			$temps['content'] = $content;
			$temps['listParent'] = $listParent;
			$this->load->view("user/index", $temps);
		}
		else
		{
			$temps['title'] = 'Không tìm thấy trang yêu cầu';
			$temps['site'] = 'error/404';
			$this->load->view("user/index", $temps);
		}
	}

}