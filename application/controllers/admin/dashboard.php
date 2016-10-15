<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Dashboard extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
	}
	public function index()
	{
		$temps['site'] = 'dashboard';
		$this->load->view("admin/index", $temps);
	}

	public function pr_oc()
	{
		if ($this->ajax()) 
		{
		  	$this->message('QUyen', 'success', 3000, 'gôgle.com', '');
		}
		else
			echo "Page not found";
	}
	

}

