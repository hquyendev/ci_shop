<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Home extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
	}
	public function index()
	{
		$saleProduct = $this->Product_model->getSale(16);
		$showView = TRUE;
		$data = $this->Product_model->getNew();
		$perpage = 20;
		$total = $this->Product_model->total();
		if($perpage>$total)
		{
			$showView = FALSE;
		}
		//echo '<pre>';print_r($data);exit();
		$temps['site'] = 'home';
		$temps['saleProduct'] = $saleProduct;
		$temps['showView'] = $showView;
		$temps['data'] = $data;
		$this->load->view("v2/index", $temps);
		$this->output->cache(10);
	}
	
}