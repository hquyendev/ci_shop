<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Test_a extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
	}
	public function index()
	{
		$this->load->view("form");
	}


}

