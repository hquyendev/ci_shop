<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Home extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
		$this->load->model('Slider_model');
		$this->load->model('Intro_model');
		$this->load->model('Blog_model');
		$this->load->model('Video_model');
		$this->load->model('Guide_model');
		$this->load->library('cart');	
	}
	public function index()
	{
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
		$temps['blogs'] = $this->Blog_model->getBlog(FALSE, 3, 0);
		$temps['videos'] = $this->Video_model->getVideo(FALSE, 4, 0);
		$temps['about_us'] = $this->Guide_model->getGuideSlug('ve-chung-toi');
		$temps['site'] = 'home';
		$temps['showView'] = $showView;
		$temps['data'] = $data;
		$this->load->view("user/index", $temps);
		$this->output->cache(10);
	}
	
}