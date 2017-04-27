<?php 

class Blog_model extends CI_Model {
	function __construct(){
		parent::__construct();
		$this->load->database();
	}


	public function insertBlog($param)
	{
		$this->db->insert('posts', $param);
		return $this->db->insert_id();
	}


	public function updateBlog($id,$param)
	{
		$this->db->where('id', $id);
		$this->db->where('type', 'blog');
		return $this->db->update('posts', $param);
	}

	public function getBlog($id = FALSE, $limit=FALSE, $offset=0)
	{
		$this->db->select('*');
		$this->db->from('posts');
		if($id)
			$this->db->where('id', $id);
		$this->db->where('type', 'blog');
		$this->db->where('status', 1);
		if($limit)
			$this->db->limit($limit, $offset);
		$q = $this->db->get();

		$data = $q->result_array();

		return $data;
	}

	public function getBlogView($id = FALSE)
	{
		$this->db->select('*');
		$this->db->from('posts');
		if($id)
			$this->db->where('id !=', $id);
		$this->db->where('type', 'blog');
		$this->db->where('status', 1);
		$this->db->order_by('view','desc');
		$this->db->limit(5,0);
		$q = $this->db->get();

		$data = $q->result_array();

		return $data;
	}

	public function getBlogSlug($slug = FALSE)
	{
		$this->db->select('*');
		$this->db->from('posts');
		if($slug)
			$this->db->where('slug', $slug);
		$this->db->where('status', 1);
		$this->db->where('type', 'blog');
		$q = $this->db->get();

		$data = $q->result_array();
		var_dump($data);
		return $data;
	}

	public function getSlug($slug, $id = FALSE)
	{
		$this->db->select('*');
		$this->db->from('posts');
		$this->db->where('slug', $slug);
		if($id)
			$this->db->where('id !=', $id);
		$this->db->where('status', 1);
		$this->db->where('type', 'blog');
		$q = $this->db->get();

		$data = $q->result_array();

		return $data;
	}


	public function deleteBlog($id = FALSE)
	{
		if(!$id)
			return FALSE;
		$this->db->where('id', $id);
		$this->db->where('type', 'blog');
		return $this->db->update('posts', array("status"=>-1));
	}

	public function total()
	{
	
		$this->db->select('*');
		$this->db->from('posts');
		$this->db->where('type', 'post');
		$this->db->where('status', 1);
		$q = $this->db->get();
		return $q->num_rows();

	}

}
