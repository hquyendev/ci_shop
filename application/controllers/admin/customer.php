<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Customer extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
    $this->load->model('Customer_model');
	}
	public function index()
	{
		$data = $this->Customer_model->getCustomer();
		$temps['title'] = 'Khách hàng';
		$temps['site'] = 'customer_list';
		$temps['data'] = $data;	
		$this->load->view("admin/index", $temps);
	}
	public function lists()
	{
		$this->index();
	}
}