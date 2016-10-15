<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Form extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
	}
	public function index()
	{
		$this->load->view("form");
	}

	public function pr_oc()
	{
		is_ajax();
		  	toast('hello', 3000, 'GO');
	}
	

}

