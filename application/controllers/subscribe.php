<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Subscribe extends HQ_Controller{
	function __construct(){
		parent:: __construct();	
		$this->load->model('Subscribe_model');
	}
	public function index()
	{
		is_ajax();
		$email = trim(strip_tags($this->input->post('email')));
		if($this->Subscribe_model->exist($email)) {message('Email này đã đăng ký nhận thông báo!');return;}

		$time = time();

		$param = array(
			'email' => $email,
			'active' => 1,
			'time' => $time
		);

		if($this->Subscribe_model->insertSubscribe($param))
		{
            return toast('Chúc mừng bạn đã đăng ký nhận thông báo thành công', 3000,'success');
		}
		else
		{
			message('Đăng ký tài khoản thất bại. Vui lòng kiểm tra lại!');return;
		}
				
	}

}