<?php 

/**
* HQ_Controller
* ---------------------------------------------
* Controller will run first
*/
class HQ_Controller extends CI_Controller
{
	public $data = array();
	public $login = FALSE;
	public function __construct()
	{
		parent:: __construct();
		$this->load->helper(array('cookie','url', 'extent'));
		$this->load->library('cart');	
		$this->load->model('Cate_model');
		$this->load->model('Product_model');
		$this->load->model('Cart_model');
		$this->load->model('User_model');
		$this->data['cate'] = $this->Cate_model->getCate();
		if($id = get_cookie('LOGIN'))
		{
			$login = $this->User_model->getUser($id);
			if(isset($login[0]))
			{
				$this->login = $login[0];
			}
		}
	}
}