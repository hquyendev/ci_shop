<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Slider extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
		$this->load->model('Slider_model');
	}
	public function index()
	{
		$data = $this->Slider_model->getSlider();
		$temps['title'] = 'Cấu hình banner';
		$temps['no_new'] = TRUE;
		$temps['site'] = 'slider_lists';
		$temps['data'] = $data;	
		$this->load->view("admin/index", $temps);
	}
	public function lists()
	{
		$this->index();
	}


	public function news_sm()
	{
		is_ajax();
		$time 		= time();

		$image = $_FILES['image'];

		if(!$image['tmp_name']) {message('Hình ảnh chính không được bỏ trống!'); return; } 
		if(!is_image($image)) {message('Hình ảnh chính được chọn không phải hình ảnh!'); return; }
		

		$imageSize = getimagesize($image['tmp_name']);

		$config['upload_path'] = BASE.'upload/slider/450/';
		$config['allowed_types'] = 'gif|jpg|png|bmp|jpeg';
		$config['max_size']	= '5500';
		$config['max_width']  = '3000';
		$config['max_height']  = '2280';
        $this->load->library("upload", $config);
        if($this->upload->do_upload("image")){
            $check = $this->upload->data();
            if(!move_uploaded_file($image['tmp_name'], BASE.'upload/slider/origin/'.$check['file_name']))
            {
            	copy($image['tmp_name'], BASE.'upload/slider/origin/'.$check['file_name']);
            }

        	$param = array(
        		'image'		=> $check['file_name'],
        		'time'		=> $time,
        		'status'    => 1,
        		);
        	if($this->Slider_model->insertSlider($param))
        	{
        		message('Thêm banner thành công',3000, false, 'success');
    			transfer(FALSE, 2000);
    			return;
        	}
        	else
        	{
       			message('Thêm banner thất bại');return;
        	}


        }else{
            message($this->upload->display_errors());return;
        }

	}


	public function remove($id = FALSE)
	{
		is_ajax();
		if(!$id){
			message('Không tìm thấy banner này');return;
		}
		$param = array(
			'status' => -1
		);
		if($this->Slider_model->updateSlider($id, $param))
    	{
    		message('Xoá banner thành công',3000, false, 'success');
    		transfer(FALSE, 2000);
    		return;
    	}
    	else
    	{
   			message('Xoá banner thất bại');return;
    	}
	}


}