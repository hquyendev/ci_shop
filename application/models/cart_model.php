<?php 

class Cart_model extends CI_Model {
	function __construct(){
		parent::__construct();
		$this->load->database();
	}


	public function insertCart($param)
	{
		$this->db->insert('order', $param);
		return $this->db->insert_id();
	}

	public function insertCartDetail($param)
	{
		$this->db->insert('order_detail', $param);
	}

	public function updateProduct($id,$param)
	{
		$this->db->where('id', $id);
		return $this->db->update('product', $param);
	}

	public function getOrder($user, $id = FALSE)
	{
		$this->db->select('*');
		$this->db->from('order');
		if($id)
			$this->db->where('id', $id);
		$this->db->where('active', 1);
		$this->db->where('user', $user);
		$q = $this->db->get();

		$data = $q->result_array();

		return $data;
	}

	public function getOrderA($id = FALSE)
	{
		$this->db->select('*');
		$this->db->from('order');
		$this->db->where('active', 1);
		if($id)
			$this->db->where('id', $id);
		$this->db->order_by('status', 'asc');
		$this->db->order_by('time', 'desc');
		$data = $this->db->get()->result_array();
		if($data)
		{
			foreach ($data as $key => $value) {
				$this->db->select('*');
				$this->db->from('user');
				$this->db->where('id', $value['user']);
				$user = $this->db->get()->result_array();
				if($user)
				{
					$data[$key]['_user'] = array('name'=>$user[0]['name'],'id'=>$user[0]['name']);	
				}
			}
		}
		return $data;
	}

	public function getOrderDetail($id)
	{
		$this->db->select('*');
		$this->db->from('order_detail');
		if($id)
			$this->db->where('order', $id);
		$this->db->where('active', 1);
		$q = $this->db->get();

		$data = $q->result_array();

		return $data;
	}
	public function getOrderDetailA($id)
	{
		$this->db->select('*');
		$this->db->from('order_detail');
		if($id)
			$this->db->where('order', $id);
		$this->db->where('active', 1);
		$q = $this->db->get();

		$data = $q->result_array();

		return $data;
	}

	public function deleteCate($id = FALSE)
	{
		if(!$id)
			return FALSE;

		$this->db->where('id', $id);
		return $this->db->update('cate', array('active'=>0));
	}

	public function getNew($limit = 20)
	{
		$this->db->select('*');
		$this->db->from('product');
		$this->db->where('active',1);
		$this->db->order_by('time', 'desc');
		$this->db->limit($limit,0);
		$q = $this->db->get();

		return $q->result_array();
	}


	public function getAllChild($id, $allChild = array())
	{
		$this->db->select('id');
		$this->db->from('cate');
		$this->db->where('id', $id);
		$this->db->where('active', 1);
		$q = $this->db->get();
		if($child = $q->result_array())
		{
			$allChild[] = $child[0]['id'];
			$this->db->select('id');
			$this->db->from('cate');
			$this->db->where('parent', $id);
			$this->db->where('active', 1);
			$q = $this->db->get();
			if($child = $q->result_array()){
				foreach ($child as $key => $value) {
					$allChild[] = $child[$key]['id'];
					$this->getAllChild($value['id'], $allChild);
				}
			}
		}
		return $allChild;
	}

	public function getAllParent($id, &$allParent = array())
	{
		$this->db->select('id, name, slug, parent');
		$this->db->from('cate');
		$this->db->where('id', $id);
		$this->db->where('active', 1);
		$q = $this->db->get();
		if($parent = $q->result_array())
		{
			$allParent[] = $parent[0];
			if($parent[0]['parent'] == 0)
			{
				return $allParent;
			}
			$this->getAllParent($parent[0]['parent'], $allParent);
		}
		return $allParent;
	}

	public function getProductByCate($cate = FALSE, $order = 'time|desc', $limit = 20)
	{
		$order = explode('|', $order);
		$listCate = $this->getAllChild($cate, $allChild = array());
	

		$this->db->select('*');
		$this->db->from('product');
		$this->db->where_in('cate',$listCate);
		$this->db->where('active', 1);
		$this->db->order_by($order[0],$order[1]);
		$this->db->limit($limit, 0);
		$q = $this->db->get();
		return $q->result_array();

	}
}
