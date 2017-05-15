<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Admin extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
		$this->load->model('Admin_model');
	}
	public function index()
	{
		$data = array();
		// $data['admin'] = $this->Admin_model->get

		$temps['title'] = 'Admin';
		$temps['site'] = 'admin_lists';
		$this->load->view("admin/index", $temps);
	}

	public function lists()
	{
		$this->index();
	}

	public function update_password($id = FALSE)
	{
			if(!$this->input->post('password')){
				return message('Mật khẩu không được để trống!');
			}
			$password = en_pass($this->input->post('password'), 23);
			$param = array(
				'password' => $password);
			if($this->Admin_model->updatePassword(1,$param)){
				return message('Cập nhật mật khẩu thành công', 3000, FALSE, 'success');
			}else{
				return message('Cập nhật mật khẩu thất bại');
			}
	}

}