<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Danh_muc extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
	}
	public function index($slug = FALSE)
	{
		$showView = TRUE;
		$slug = str_replace('_', '-', $slug);
		$cate = $this->Cate_model->getSlug($slug);
		if(!isset($cate[0])){
			$this->load->view("error/404");
			return;	
		}
		$id = $cate[0]['id'];
		$perpage = 20;
		$total = $this->Product_model->total($id);
		$res = array('total'=>$total, 'page'=>(1), 'perpage'=>$perpage);
		if($perpage>$total)
		{
			$showView = FALSE;
		}

		$data = $this->Product_model->getNew($id);
		$listParent = $this->Product_model->getAllParent($id, $allParent = array());
		$listParent = array_reverse ($listParent);

		$temps['site'] = 'cate';
		$temps['data'] = $data;
		$temps['id'] = $id;
		$temps['showView'] = $showView;
		$temps['listParent'] = $listParent;
		$this->load->view("user/index", $temps);
	}

	
}