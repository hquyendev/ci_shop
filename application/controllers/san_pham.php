<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class San_pham extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
	}
	public function index($slug = FALSE)
	{
		$slug = explode('_', $slug);
		$id = intval($slug[0]);

		$data = $this->Product_model->getProduct($id);
		if(!isset($data[0])){
			$this->load->view("error/404");
			return;	
		}

		$data_relate = $this->Product_model->getProductByCate($data[0]['cate'], 0,5);

		$listParent = $this->Product_model->getAllParent($data[0]['cate'], $allParent = array());
		$listParent = array_reverse ($listParent);
		$listParent[] = array('name'=>$data[0]['name']);

		$temps['site'] = 'product';
		$temps['data'] = $data[0];
		$temps['data_relate'] = $data_relate;
		$temps['listParent'] = $listParent;
		$this->load->view("user/index", $temps);
	}
}