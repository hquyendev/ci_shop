<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Tim_kiem extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
	}
	public function index()
	{
		$showView = TRUE;
		$key = strip_tags($this->input->get('key'));
		$perpage = 20;
		$data = $this->Product_model->getNew(false, 0, $perpage, $key);
		$total = $this->Product_model->total(false,$key);
		$listParent[]= array('name'=>'Tìm kiếm');
		if($perpage>$total)
		{
			$showView = FALSE;
		}
		$temps['site'] = 'search';
		$temps['data'] = $data;
		$temps['c'] = $key;
		$temps['attr'] = array('total'=>$total, 'key'=>$key);
		$temps['showView'] = $showView;
		$temps['listParent'] = $listParent;
		$this->load->view("user/index", $temps);
	}
}