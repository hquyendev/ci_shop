<?php 

class Product_model extends CI_Model {
	function __construct(){
		parent::__construct();
		$this->load->database();
	}


	public function insertProduct($param)
	{
		return $this->db->insert('product', $param);
	}

	public function updateProduct($id,$param)
	{
		$this->db->where('id', $id);
		return $this->db->update('product', $param);
	}


	public function getProduct($id = FALSE)
	{
		$this->db->select('*');
		$this->db->from('product');
		if($id)
			$this->db->where('id', $id);
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

	public function getProductByCate($cate = FALSE, $page = 0, $perpage = 20)
	{
		$listCate = $this->getAllChild($cate, $allChild = array());


		$this->db->select('*');
		$this->db->from('product');
		$this->db->where_in('cate',$listCate);
		$this->db->where('active', 1);
		$this->db->order_by('time','desc');
		$this->db->limit($perpage, $page);
		$q = $this->db->get();
		return $q->result_array();

	}

	function getSale($limit = 16){
		$time = time();
		$sql = "SELECT `p`.*, COUNT(`p`.`id`) AS `count` FROM `shop_product` `p`, `shop_order` `o`, `shop_order_detail` `od` WHERE `p`.`id` = `od`.`product` AND `o`.`id` = `od`.`order` AND `p`.`active` = 1 AND `o`.`status` = 3 AND `od`.`active` = 1 AND `o`.`time` >= ".intval($time - 86400*7)." GROUP BY `p`.`id` ORDER BY `count` DESC limit 16";
		$q = $this->db->query($sql);
		return $q->result_array();
		
	}

	public function getNew($cate = FALSE, $page = 0, $perpage = 20, $key = FALSE)
	{
		if($cate)
		{
			$listCate = $this->getAllChild($cate, $allChild = array());
			$this->db->where_in('cate',$listCate);
		}
		$this->db->select('*');
		$this->db->from('product');
		$this->db->where('active',1);
		if($key)
			$this->db->like('name',$key);
		$this->db->order_by('time', 'desc');
		$this->db->limit($perpage, $page);
		$q = $this->db->get();

		return $q->result_array();
	}

	public function total($cate = FALSE, $key = FALSE)
	{
	
		if($cate)
		{
			$listCate = $this->getAllChild($cate, $allChild = array());
			$this->db->where_in('cate',$listCate);
		}
		$this->db->select('*');
		$this->db->from('product');
		$this->db->where('active', 1);
		if($key)
			$this->db->like('name',$key);
		$q = $this->db->get();
		return $q->num_rows();

	}
}
