<?php 

class Admin_model extends CI_Model {
	function __construct(){
		parent::__construct();
		$this->load->database();
	}

	function loginAdmin($data){
		$this->db->select('id');
		$this->db->where('username', $data['user']);
		$this->db->where('password', $data['pass']);
		$query = $this->db->get('admin');
		return $query->result_array();
	}

	function getInfoAdmin($id)
	{
		$this->db->select('*');
		$this->db->where('id', $id);
		$query = $this->db->get('admin');
		return $query->result_array();
	}

	function themSanPham($data){
		$query = $this->db->insert("product",$data);
		return $this->db->insert_id();
	}

	function getProd($id = FALSE){
		$this->db->select('*');
		if($id)
			$this->db->where('id', $id);
		$this->db->where('active >=', '0');
		$query = $this->db->get('product');
		$data = $query->result_array();
		if($data)
		{
			foreach ($data as $key => $value) {
				$sql = "SELECT c1.name as c1_name, c2.name as c2_name from cate c1, cate c2 where c1.id = c2.parent and c2.id = ".$value['cate'];
				$q = $this->db->query($sql);
				$cate = $q->result_array();
				$data[$key]['cate'] = $cate[0];
			}
		}
		return $data;
	}

	function suaSanPham($data, $id)
	{
		$this->db->where('id', $id);
		return $this->db->update('product', $data);
	}

	function xoaSanPham($id){
		$this->db->where("id", $id);
		$this->db->update('product', array('active' => -1));
	}

	public function getConfig($key)
	{
		$this->db->select('*');
		$this->db->from('config');
		$this->db->where('key', $key);
		$q = $this->db->get();
		return $q->result_array();
	}

	public function saveGuide($data, $key)
	{
		$this->db->where('key',$key);
		return $this->db->update('config', $data);
	}

	public function getRight($id = FALSE)
	{
		$this->db->select('*');
		$this->db->from('right');
		if($id)
			$this->db->where('id', $id);
		$this->db->order_by('sort asc, id asc');
		$q = $this->db->get();
		return $q->result_array();
	}

	public function insertRight($data)
	{
		return $this->db->insert('right', $data);
	}
	public function updateRight($data,$id)
	{
		$this->db->where('id', $id);
		return $this->db->update('right', $data);
	}
	public function deleteRight($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('right');
	}

	public function updatePassword($id, $params){
		$this->db->where('id',$id);
		return $this->db->update('admin', $params);
	}

}