<?php 

class Guide_model extends CI_Model {
	function __construct(){
		parent::__construct();
		$this->load->database();
	}


	public function insertGuide($param)
	{
		$this->db->insert('Guide', $param);
		return $this->db->insert_id();
	}


	public function updateGuide($id,$param)
	{
		$this->db->where('id', $id);
		return $this->db->update('guide', $param);
	}

	public function getGuide($id = FALSE)
	{
		$this->db->select('*');
		$this->db->from('guide');
		if($id)
			$this->db->where('id', $id);
		$this->db->where('active', 1);
		$q = $this->db->get();

		$data = $q->result_array();

		return $data;
	}

	public function getGuideSlug($slug = FALSE)
	{
		$this->db->select('*');
		$this->db->from('guide');
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
		$this->db->from('guide');
		$this->db->where('slug', $slug);
		if($id)
			$this->db->where('id !=', $id);
		$this->db->where('active', 1);
		$q = $this->db->get();

		$data = $q->result_array();

		return $data;
	}


	public function deleteGuide($id = FALSE)
	{
		if(!$id)
			return FALSE;
		$this->db->where('id', $id);
		$this->db->where('remove',1);
		return $this->db->delete('guide');
	}

}
