<?php 

class Subscribe_model extends CI_Model {
	function __construct(){
		parent::__construct();
		$this->load->database();
	}


	public function insertSubscribe($param)
	{
		$this->db->insert('subscribe', $param);
		return $this->db->insert_id();
	}



	public function exist($email)
	{
		$this->db->select('*');
		$this->db->from('subscribe');
		$this->db->where('email', $email);
		$this->db->where('active', 1);
		$q = $this->db->get();

		$data = $q->result_array();

		return $data;
	}

	public function getSubscribe()
	{
		$this->db->select('*');
		$this->db->from('subscribe');
		$this->db->where('active', 1);
		$q = $this->db->get();

		$data = $q->result_array();
		return $data;
	}

	public function getSlug($slug, $id = FALSE)
	{
		$this->db->select('*');
		$this->db->from('subscribe');
		$this->db->where('slug', $slug);
		
		if($id)
			$this->db->where('id !=', $id);
		$this->db->where('active', 1);
		$q = $this->db->get();

		$data = $q->result_array();

		return $data;
	}


	public function deleteSubscribe($id = FALSE)
	{
		if(!$id)
			return FALSE;
		$this->db->where('id', $id);
		return $this->db->update('subscribe', array("active"=>-1));

	}

	public function total()
	{
	
		$this->db->select('*');
		$this->db->from('subscribe');
		$this->db->where('active', 1);
		$q = $this->db->get();
		return $q->num_rows();

	}

}
