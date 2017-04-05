<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Order extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
	}
	public function index()
	{
		$data = $this->Cart_model->getOrderA();
		$temps['title'] = 'Đơn hàng';
		$temps['site'] = 'order_list';
		$temps['data'] = $data;	
		$this->load->view("admin/index", $temps);
	}
	public function lists()
	{
		$this->index();
	}

	public function news()
	{
		$temps['title'] = 'Thêm sản phẩm mới';
		$temps['site'] = 'order_new';
		$this->load->view("admin/index", $temps);
	}

	public function view($id = FALSE)
	{
		if(!$id)
		{
			redirect(ROOT.'product/lists.html', 'location');
		}

		$order = $this->Cart_model->getOrderA($id);
		if(!$order) redirect(ROOT.'admin/order/lists.html', 'location');

		$data = $this->Cart_model->getOrderDetailA($id);
		$temps['title'] = 'Thông tin đơn hàng từ: <b>'.$order[0]['_name'].'</b>';
		$temps['site'] = 'order_edit';
		$temps['order'] = $order;
		$temps['data'] = $data;
		$this->load->view("admin/index", $temps);

	}

	public function news_sm()
	{
		is_ajax();
		$name 		= $this->input->post('name');
		$slug 		= $this->input->post('slug');
		$content 	= $this->input->post('content', FALSE);
		$time 		= time();


		if(!$name) {message('Tên bài viết không được để trống!');return;}
		if(!$slug) {message('Slug bài viết không được để trống!');return;}
		if($this->Guide_model->getSlug($slug)){message('Slug bài viết này đã có. Vui lòng dùng slug khác!');return;}

    	$param = array(
    		'name'		=> $name,
    		'slug'		=> $slug,
    		'content'	=> $content,
    		'time'		=> $time
    		);
    	if($this->Guide_model->insertGuide($param))
    	{
    		message('Thêm bài viết: <b>'.$name.'</b> thành công',3000, false, 'success');return;
    	}
    	else
    	{
   			message('Thêm bài viết: <b>'.$name.'</b> thất bại');return;
    	}

	}

	public function edit_sm($id = FALSE)
	{
		is_ajax();
		if(!$id){
			message('Không tìm thấy bài viết này');return;
		}
		$name 		= $this->input->post('name');
		$slug 		= $this->input->post('slug');
		$content 	= $this->input->post('content', FALSE);
		$time 		= time();

		if(!$guide = $this->Guide_model->getGuide($id))
		{
			message('Không tìm thấy thông tin bài viết này');return;
		}

		if(!$name) {message('Tên bài viết không được để trống!');return;}
		if(!$slug) {message('Slug bài viết không được để trống!');return;}
		if($this->Guide_model->getSlug($slug, $id)){message('Slug bài viết này đã có. Vui lòng dùng slug khác!');return;}

    	$param = array(
    		'name'		=> $name,
    		'slug'		=> $slug,
    		'content'	=> $content,
    		'time'		=> $time
    		);
    	if($this->Guide_model->updateGuide($id,$param))
    	{
    		message('Thêm bài viết: <b>'.$name.'</b> thành công',3000, false, 'success');return;
    	}
    	else
    	{
   			message('Thêm bài viết: <b>'.$name.'</b> thất bại');return;
    	}

	}

	public function remove($id = FALSE)
	{
		is_ajax();
		if(!$id){
			message('Không tìm thấy bài viết này');return;
		}
		if($this->Guide_model->deleteGuide($id))
    	{
    		message('Xoá bài viết thành công',3000, false, 'success');
    		transfer(FALSE, 3000);
    		return;
    	}
    	else
    	{
   			message('Xoá bài viết thất bại');return;
    	}
	}

	public function update($id = FALSE)
	{
		is_ajax();
		$action = $this->input->get('action');
		if(!in_array($action, array(-1,1,2,3,4))){
			return message('Không thực hiện được thao tác này');
		}
		if(!$id){
			message('Không tìm thấy bài viết này');return;
		}
		$param = array(
			'status' => $action
		);
		if($this->Cart_model->updateOrder($id, $param))
    	{
    		message('Cập nhật đơn hàng thành công',3000, false, 'success');
    		transfer(FALSE, 3000);
    		return;
    	}
    	else
    	{
   			message('Xoá bài viết thất bại');return;
    	}
	}


}