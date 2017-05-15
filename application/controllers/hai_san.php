<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Hai_san extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
	}
	public function index($slug = FALSE, $prod=FALSE)
	{

		$slug = str_replace('_', '-', $slug);
		$cate = $this->Cate_model->getSlug($slug);
		if(!isset($cate[0])){
			return $this->load->view("error/404");
		}

		if(!$prod){
			return $this->cate($cate);
		}else{
			return $this->product($cate,$prod);
		}
	}

	public function cate($cate)
	{
		$showView = TRUE;
		$id = $cate[0]['id'];
		$perpage = 20;
		$total = $this->Product_model->total($id);
		$res = array('total'=>$total, 'page'=>(1), 'perpage'=>$perpage);
		if($perpage>$total)
		{
			$showView = FALSE;
		}

		$data = $this->Product_model->getNew($id, 0, $perpage);
		$listParent = $this->Product_model->getAllParent($id, $allParent = array());
		$productHot = $this->Product_model->getProductHot($id);
		$listParent = array_reverse ($listParent);

		$temps['site'] = 'cate';
		$temps['data'] = $data;
		$temps['title'] = $cate[0]['name'].' - Hải sản';
		$temps['id'] = $id;
		$temps['cate'] = $cate[0];
		$temps['showView'] = $showView;
		$temps['productHot'] = $productHot;
		$temps['listParent'] = $listParent;
		$this->load->view("user/index", $temps);
	}

	public function product($cate, $slug)
	{
		$slug = str_replace('_', '-', $slug);

		$data = $this->Product_model->getProductSlug($slug);
		if(!isset($data[0])){
			$this->load->view("error/404");
			return;	
		}

		$data_relate = $this->Product_model->getProductByCate($data[0]['cate'], 0,4);
		$view = $data[0]['view'] + 1;
		$params = array(
			'view'=> $view
			);
		$this->Product_model->updateProduct($data[0]['id'], $params);

		$listParent = $this->Product_model->getAllParent($data[0]['cate'], $allParent = array());
		$listParent = array_reverse ($listParent);
		$listParent[] = array('name'=>$data[0]['name']);

		$temps['site'] = 'product';
		$temps['title'] = $data[0]['name'].' - Hải sản';
		$temps['data'] = $data[0];
		$temps['cate'] = $cate[0];
		$temps['data_relate'] = $data_relate;
		$temps['listParent'] = $listParent;
		$this->load->view("user/index", $temps);
	}

	
}