<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Dang_ky extends HQ_Controller{
	function __construct(){
		parent:: __construct();	
	}
	public function index()
	{
		if($this->login)
		{
			delete_cookie('LOGIN');
			redirect(ROOT.'dang-ky.html');
		}
		$listParent = array(0=>array('name'=>'Đăng ký tài khoản'));
		$temps['site'] = 'register';
		$temps['data'] = FALSE;
		$temps['listParent'] = $listParent;
		$this->load->view("user/index", $temps);
		$this->output->cache(10);
		
	}


	public function submit()
	{
		is_ajax();
		$name = trim(strip_tags($this->input->post('name')));
		$email = trim(strip_tags($this->input->post('email')));
		$password = trim(strip_tags($this->input->post('password')));
		$cpassword = $this->input->post('cpassword');
		$add = trim(strip_tags($this->input->post('add')));
		$phone = trim(strip_tags($this->input->post('phone')));
		$time = time();
		if(!$name) {message('Họ và tên không được để trống!');return;}
		if(!$email) {message('Email không được để trống!');return;}
		if(!$password) {message('Password không được để trống!');return;}
		if(strlen($password) > 20 OR strlen($password)<5) {message('Password phải từ 6 đến 20 ký tự!');return;}
		if($password!=$cpassword) {message('Password nhập lại không chính xác!');return;}
		if(!$phone) {message('Số điện thoại không được để trống!');return;}
		if(!is_numeric($phone) || strlen($phone) < 10 || strlen($phone)>15) {message('Định dạng số điện thoại không đúng!');return;}

		if($this->User_model->checkCol('email', $email)) {message('Email này đã có người sử dụng!');return;}
		if($this->User_model->checkCol('phone', $phone)) {message('Số điện thoại này đã có người sử dụng!');return;}

		$param = array(
			'name'		=> $name,
			'email'		=> $email,
			'password'	=> en_pass($password),
			'phone'		=> $phone,
			'add'		=> $add,
			'datereg'	=> $time,
			);

		if($id = $this->User_model->insertUser($param))
		{
			set_cookie('LOGIN', $id, 86400);
			$this->User_model->lastlogin();
			transfer(ROOT.'tai-khoan.html',0);
		}
		else
		{
			message('Đăng ký tài khoản thất bại. Vui lòng kiểm tra lại!');return;
		}
	}
}