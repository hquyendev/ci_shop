<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Huong_dan extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
		$this->load->model('Blog_model');
	}
	public function index($slug = FALSE)
	{
		if(!$slug){
			return $this->blogs();
		}else{
			return $this->read($slug);
		}
	}

	public function blogs()
	{
		$listParent = array(0=>array('name'=>'Hướng dẫn'));
		$data = $this->Blog_model->getBlog();
		$data_view = $this->Blog_model->getBlogView();


		$temps['site'] = 'blog';
		$temps['data'] = $data;
		$temps['title'] = 'Hướng dẫn - Hải sản Ông Vũ';
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

		$data = $this->Blog_model->getBlogSlug($slug);
		if(!isset($data[0])){
			return $this->load->view("error/404");
		}
		$data_view = $this->Blog_model->getBlogView($data[0]['id']);
		$listParent = array(0=>array('name'=>'Hướng dẫn', 'slug'=>'huong-dan'), 1=>array('name'=>$data[0]['name']));

		$temps['site'] = 'blog_detail';
		$temps['data'] = $data[0];
		$temps['title'] = $data[0]['name'].' - Hướng dẫn';
		$temps['data_view'] = $data_view;
		$temps['listParent'] = $listParent;
		return $this->load->view("user/index", $temps);
	}

	
}