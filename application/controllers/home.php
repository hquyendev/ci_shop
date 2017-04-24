<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Home extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
		$this->load->model('Slider_model');
		$this->load->model('Intro_model');
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
		$temps['sliders'] = $this->Slider_model->getSlider();
		$temps['intros'] = $this->Intro_model->getIntro();
		$temps['site'] = 'home';
		$temps['saleProduct'] = $saleProduct;
		$temps['showView'] = $showView;
		$temps['data'] = $data;
		$this->load->view("user/index", $temps);
		$this->output->cache(10);
	}
	
}