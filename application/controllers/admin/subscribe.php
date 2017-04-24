<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Subscribe extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
		$this->load->model("Subscribe_model");
	}
	public function index()
	{
		$data = $this->Subscribe_model->getSubscribe();
		$temps['title'] = 'Danh sách đăng ký';
		$temps['site'] = 'subscribe_list';
		$temps['data'] = $data;
		$this->load->view("admin/index", $temps);
	}


}