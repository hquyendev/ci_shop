<?php 

class Cate_model extends CI_Model {
	function __construct(){
		parent::__construct();
		$this->load->database();
	}

	public function checkParent($id)
	{
		if(!$id) return FALSE;
		$this->db->select('id');
		$this->db->from('cate');
		$this->db->where('id', $id);
		$this->db->where('active', 1);
		$q = $this->db->get();
		return $q->num_rows();
	}

	public function checkChild($id)
	{
		if(!$id) return FALSE;
		$this->db->select('id');
		$this->db->from('cate');
		$this->db->where('parent', $id);
		$this->db->where('active', 1);
		$q = $this->db->get();
		return $q->num_rows();
	}

	public function checkSlug($slug, $parent)
	{
		if(!$slug) return FALSE;
		$this->db->select('id');
		$this->db->from('cate');
		$this->db->where('slug', $slug);
		//$this->db->where('parent', $parent);
		$q = $this->db->get();
		return $q->num_rows();
	}

	public function getSlug($slug)
	{
		if(!$slug) return FALSE;
		$this->db->select('*');
		$this->db->from('cate');
		$this->db->where('slug', $slug);
		//$this->db->where('parent', $parent);
		$q = $this->db->get();
		return $q->result_array();
	}

	public function checkSlugOld($slug, $old, $parent)
	{
		if(!$slug) return FALSE;
		$this->db->select('id');
		$this->db->from('cate');
		$this->db->where('slug', $slug);
		$this->db->where('id !=', $old);
		//$this->db->where('parent', $parent);
		$q = $this->db->get();
		return $q->num_rows();
	}

	public function insertCate($param)
	{
		return $this->db->insert('cate', $param);
	}

	public function updateCate($id,$param)
	{
		$this->db->where('id', $id);
		return $this->db->update('cate', $param);
	}

	public function getCate($id = FALSE)
	{
		$this->db->select('*');
		$this->db->from('cate');
		if($id)
			$this->db->where('id', $id);
		$this->db->where('active', 1);
		$q = $this->db->get();

		$data = $q->result_array();

		if($id)
			return $data;
		else if(!$id AND $data)
		{
			function buildTree( $data, $pid = 0 , $pname = '') {
			    $child = array();
			    foreach( $data as $item ) {
			        if( $item['parent'] == $pid ) {
			            $child[$item['id']] = $item;
			            $child[$item['id']]['parent_name'] = $pname;
			            // using recursion
			            $children =  buildTree( $data, $item['id'] , $item['name']);
		                $child[$item['id']]['children'] = $children?$children:FALSE;
			        }
			    }
			    return $child;
			}

			return buildTree($data, 0);

		}
		else
			return FALSE;
	}

	public function deleteCate($id = FALSE)
	{
		if(!$id)
			return FALSE;

		$this->db->where('id', $id);
		return $this->db->update('cate', array('active'=>0));
	}
}
