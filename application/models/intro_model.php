<?php 

class Intro_model extends CI_Model {
	function __construct(){
		parent::__construct();
		$this->load->database();
	}


	public function insertIntro($param)
	{
		$this->db->insert('intro', $param);
		return $this->db->insert_id();
	}


	public function updateIntro($id,$param)
	{
		$this->db->where('id', $id);
		return $this->db->update('intro', $param);
	}

	public function getIntro($id = FALSE)
	{
		$this->db->select('*');
		$this->db->from('intro');
		if($id)
			$this->db->where('id', $id);
		$this->db->where('active', 1);
		$q = $this->db->get();

		$data = $q->result_array();

		return $data;
	}

	public function getIntroSlug($slug = FALSE)
	{
		$this->db->select('*');
		$this->db->from('intro');
		if($slug)
			$this->db->where('slug', $slug);
		$this->db->where('active', 1);
		$q = $this->db->get();

		$data = $q->result_array();
		return $data;
	}

	public function getSlug($slug, $id = FALSE)
	{
		$this->db->select('*');
		$this->db->from('intro');
		$this->db->where('slug', $slug);
		
		if($id)
			$this->db->where('id !=', $id);
		$this->db->where('active', 1);
		$q = $this->db->get();

		$data = $q->result_array();

		return $data;
	}


	public function deleteIntro($id = FALSE)
	{
		if(!$id)
			return FALSE;
		$this->db->where('id', $id);
		return $this->db->update('intro', array("active"=>-1));

	}

	public function total()
	{
	
		$this->db->select('*');
		$this->db->from('intro');
		$this->db->where('active', 1);
		$q = $this->db->get();
		return $q->num_rows();

	}

}
