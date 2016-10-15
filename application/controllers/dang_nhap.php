<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Dang_nhap extends HQ_Controller{
	function __construct(){
		parent:: __construct();	
	}
	public function index()
	{
		if($this->login)
			redirect(ROOT);
		$listParent = array(0=>array('name'=>'Đăng nhập'));
		$temps['site'] = 'register';
		$temps['data'] = FALSE;
		$temps['listParent'] = $listParent;
		$this->load->view("user/index", $temps);
		$this->output->cache(10);
	}


	public function submit()
	{
		is_ajax();
		$email = trim(strip_tags($this->input->post('email')));
		$password = trim(strip_tags($this->input->post('password')));
		if(!$email) {message('Email không được để trống!');return;}
		if(!$password) {message('Password không được để trống!');return;}
		$password = en_pass($password);
		if($user = $this->User_model->checkLogin($email, $password))
		{
			set_cookie('LOGIN', $user[0]['id'], 86400);
			$this->User_model->lastlogin();
			if($next = $this->input->get('next'))
				transfer($next,0);
			else
				transfer(ROOT.'tai-khoan.html',0);
		}
		else
		{
			message('Thông tin đăng nhập không đúng!');return;
		}
	}
	public function submit_fb()
	{
		require  APPPATH . 'third_party/facebook.php';

		$config = array(
		  'appId' => '689513461149372',
		  'secret' => 'e585fd13cf8ee6d932c173900a70a530',
		  'fileUpload' => false, // optional
		  'allowSignedRequest' => false, // optional, but should be set to false for non-canvas apps
		);

		$facebook = new Facebook($config);
		$user = $facebook->getUser();

	}
	public function logout()
	{
		delete_cookie('LOGIN');
		transfer(ROOT, 0);
	}
}