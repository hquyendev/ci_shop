<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Cate extends HQ_Controller{
	function __construct(){
		parent:: __construct();		
	}
	public function index()
	{
		$temps['title'] = 'Danh mục';
		$temps['site'] = 'cate_list';
		$this->load->view("admin/index", $temps);
	}
	public function lists()
	{
		$this->index();
	}

	public function news()
	{
		$temps['title'] = 'Thêm danh mục mới';
		$temps['site'] = 'cate_new';
		$this->load->view("admin/index", $temps);
	}

	public function edit($id = FALSE)
	{
		if(!$id){
			redirect(ROOT.'admin/cate.html');
		}
		$cate = $this->Cate_model->getCate($id);
		if(!$cate)
		{
			redirect(ROOT.'admin/cate.html');
		}
		$temps['title'] = 'Sửa danh mục';
		$temps['data'] = $cate[0];
		$temps['site'] = 'cate_edit';
		$this->load->view("admin/index", $temps);
	}

	public function news_sm()
	{
		is_ajax();
		$name = $this->input->post('name');
		$slug = $this->input->post('slug');
		$meta = $this->input->post('meta');
		$desc = $this->input->post('desc');
		$parent = intval($this->input->post('parent'));

	  	if(!$name)
	  	{
	  		message('Tên danh mục không được để trống!'); return;
	  	}
	  	if(!$slug)
	  	{
	  		message('Slug danh mục không được để trống!'); return;
	  	}
	  	$parent = $parent?$parent:0;
	  	if($parent !== 0)
	  	{
	  		if(!$this->Cate_model->checkParent($parent))
	  		{
	  			message('Danh mục cha không tồn tại!'); return;
	  		}
	  	}

	  	if($this->Cate_model->checkSlug($slug, $parent))
  		{
  			message('Slug danh mục này đã có!'); return;
  		}

	  	$param = array(
	  		'name'		=> $name,
	  		'slug'		=> $slug,
	  		'meta'		=> $meta,
	  		'des'		=> $desc,
	  		'parent'	=> $parent,
	  		);

	  	if($this->Cate_model->insertCate($param))
	  	{
  			message('Thêm danh mục mới thành công','success'); return;
	  	}
	  	else
	  	{
  			message('Thêm danh mục mới thất bại'); return;
	  	}
	}

	public function edit_sm($id = FALSE)
	{
		is_ajax();
		$name = $this->input->post('name');
		$slug = $this->input->post('slug');
		$meta = $this->input->post('meta');
		$desc = $this->input->post('desc');
		$parent = intval($this->input->post('parent'));
		if(!$id)
		{
	  		message('Lỗi! Vui lòng tải lại trang!'); return;
		}
	  	if(!$name)
	  	{
	  		message('Tên danh mục không được để trống!'); return;
	  	}
	  	if(!$slug)
	  	{
	  		message('Slug danh mục không được để trống!'); return;
	  	}
	  	$parent = $parent?$parent:0;
	  	if($parent !== 0)
	  	{
	  		if(!$this->Cate_model->checkParent($parent))
	  		{
	  			message('Danh mục cha không tồn tại!'); return;
	  		}
	  	}

	  	if($parent == $id)
	  	{
	  		message('Danh mục cha không được là chính danh mục này!'); return;
		}

		$cate = $this->Cate_model->getCate($id);

		if(!$cate)
		{
  			message('Danh mục này không tồn tại!'); return;
		}
	  	if($this->Cate_model->checkSlugOld($slug, $cate[0]['id'], $parent))
  		{
  			message('Slug danh mục này đã có!'); return;
  		}

	  	$param = array(
	  		'name'		=> $name,
	  		'slug'		=> $slug,
	  		'meta'		=> $meta,
	  		'des'		=> $desc,
	  		'parent'	=> $parent,
	  		);

	  	if($this->Cate_model->updateCate($id,$param))
	  	{
  			message('Cập nhật danh mục thành công',3000, false,'success'); return;
	  	}
	  	else
	  	{
  			message('Cập nhật danh mục thất bại'); return;
	  	}
	}

	public function remove($id = FALSE)
	{
		is_ajax();
		if(!$id){
  			message('Không tìm thấy danh mục này. Vui lòng tải lại trang!', 3000, ROOT.'admin/cate/lists.html');
  			transfer(ROOT.'admin/cate/lists.html', 3000);
  			 return;
		}

		$cate = $this->Cate_model->getCate($id);

		if(!$cate)
		{
  			message('Danh mục này không tồn tại!'); return;
		}

		if($this->Cate_model->checkChild($id))
  		{
  			message('Không thể xóa danh mục này vì trong danh mục này có danh mục con!', 5000); return;
  		}

  		if($this->Cate_model->deleteCate($id))
  		{
  			message('Xóa danh mục thành công', 3000,ROOT.'admin/cate/lists.html','success');
  			transfer(ROOT.'admin/cate/lists.html', 3000);
  			return;
	  	}
	  	else
	  	{
  			message('Xóa danh mục thất bại'); return;
	  	}
	}


}