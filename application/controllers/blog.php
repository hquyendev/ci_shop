<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Blog extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
		$this->load->model('Blog_model');
	}
	public function index($id = FALSE)
	{
		if(!$id){
			return $this->blogs();
		}else{
			return $this->read($id);
		}
	}

	public function blogs()
	{
		$listParent = array(0=>array('name'=>'Blogs'));
		$data = $this->Blog_model->getBlog();
		$data_view = $this->Blog_model->getBlogView();


		$temps['site'] = 'blog';
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

		$data = $this->Blog_model->getBlog($id);
		if(!isset($data[0])){
			return $this->load->view("error/404");
		}
		$data_view = $this->Blog_model->getBlogView($data[0]['id']);
		$listParent = array(0=>array('name'=>'Blogs', 'slug'=>'blog'), 1=>array('name'=>$data[0]['name']));

		$temps['site'] = 'blog_detail';
		$temps['data'] = $data[0];
		$temps['data_view'] = $data_view;
		$temps['listParent'] = $listParent;
		return $this->load->view("user/index", $temps);
	}

	
}