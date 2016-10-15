<?php 

class User_model extends CI_Model {
	function __construct(){
		parent::__construct();
		$this->load->database();
	}


	public function insertUser($param)
	{
		$this->db->insert('user', $param);
		return $this->db->insert_id();
	}

	public function insertLike($param)
	{
		$this->db->insert('like', $param);
		return $this->db->insert_id();
	}

	public function updateUser($id,$param)
	{
		$this->db->where('id', $id);
		return $this->db->update('user', $param);
	}

	public function checkCol($col,$value, $id = FALSE)
	{
		$this->db->select('id');
		$this->db->from('user');
		$this->db->where($col, $value);
		if($id)
			$this->db->where('id !=', $id);
		$this->db->where('active', 1);
		return $this->db->get()->num_rows();
	}

	public function checkLogin($email, $password)
	{
		$this->db->select('id');
		$this->db->from('user');
		$this->db->where('email', $email);
		$this->db->where('password', $password);
		$this->db->where('active', 1);
		return $this->db->get()->result_array();
	}

	public function getUser($id = FALSE)
	{
		if(!$id)
			{return FALSE;}
		$this->db->select('*');
		$this->db->from('user');
		$this->db->where('id', $id);
		$this->db->where('active', 1);
		return $this->db->get()->result_array();
	}

	public function lastLogin($id = FALSE)
	{
		if(!$id)
			{return FALSE;}
		$this->db->where('id', $id);
		return $this->db->update('user', array('lastlogin'=>time()));
	}

	public function getLike($user,$id = FALSE)
	{
		if(!$user)
			return FALSE;
		$this->db->select('*');
		$this->db->from('like');
		if($id)
			$this->db->where('product', $id);
		$this->db->where('user', $user);
		$this->db->where('active', 1);
		$this->db->order_by('time', 'desc');
		return $this->db->get()->result_array();
	}

	public function removeLike($user, $id)
	{
		if(!$user|| !$id)
		{
			return FALSE;
		}
		$this->db->where('user', $user);
		$this->db->where('id', $id);
		return $this->db->delete('like');
	}
}
