<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
session_start();
class Login extends HQ_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->model('Admin_model');
	}

	function index()
	{
		
		
		if(isset($_SESSION['ADMIN']))
		{
			redirect(ROOT.'admin/dashboard.html','location');
		}

		if($this->input->post('login-sm')){
			$pass = en_pass($this->input->post('pass'), 23);
			if(($user = $this->input->post('user')) && $pass)
			{
				if($id = $this->Admin_model->loginAdmin(array('user'=>$user, 'pass'=>$pass)))
				{
					$_SESSION['ADMIN'] = $this->Admin_model->getInfoAdmin($id[0]['ID']);
					redirect(ROOT.'admin/dashboard.html','location');
				}
				else
				{
					$temps['mes'] = "Tên đăng nhập hoặc mật khẩu không đúng !";
				}
			}
			else
			{
				$temps['mes'] = "Tên đăng nhập và mật khẩu không được để trống !";
			}
		}

		$temps["title"]="Đăng nhập trang quản trị";
		$this->load->view("admin/login", $temps);
	}

	function logout()
	{
		session_destroy();
		redirect(ROOT.'admin/login.html','location');
	}
}

