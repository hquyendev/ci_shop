<?php 

class Customer_model extends CI_Model {
  function __construct(){
    parent::__construct();
    $this->load->database();
  }

  public function getCustomer()
  {
    $this->db->select('*');
    $this->db->from('customer');
    $q = $this->db->get();
    return $q->result_array();
  }

  public function insert($param)
  {
    $this->db->insert('customer', $param);
    return $this->db->insert_id();
  }


}
