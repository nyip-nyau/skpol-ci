<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_upi extends CI_Model {

	public function __construct(){
		parent::__construct();

	}

	function _insert_rejected($dt){
		$q = $this->db->insert('tbl_rejected',$dt);
		if($q){
			return true;
		}else{
			return false;
		}
	}

	function _get_upi_baru($id = null, $idp = null){
		if($id != null){
			if ($idp != null) {
				$q = $this->db->get_where('view_user_register_upi',array('idtbl_upi'=>$id, 'kode_provinsi'=>$idp));
			}else{
				$q = $this->db->get_where('view_user_register_upi',array('idtbl_upi'=>$id));
			}
		}else{
			if ($idp != null) {
				$q = $this->db->get_where('view_user_register_upi',array('kode_provinsi'=>$idp));
			}else{
				$q = $this->db->get('view_user_register_upi');
			}
		}
		return $q->result_array();
	}

	function _get_upi_terdaftar($id = null, $idp = null){
		if($id != null){
			if ($idp != null) {
				$q = $this->db->get_where('view_user_upi_provinsi',array('idtbl_upi'=>$id, 'kode_provinsi'=>$idp));
			}else{
				$q = $this->db->get_where('view_user_upi_provinsi',array('idtbl_upi'=>$id));
			}
		}else{
			if ($idp != null) {
				$q = $this->db->get_where('view_user_upi_provinsi',array('kode_provinsi'=>$idp));
			}else{
				$q = $this->db->get('view_user_upi_provinsi');
			}
		}
		return $q->result_array();
	}

	function _get_upi_revisi($id = null, $idp = null){
		$this->db->join('tbl_rejected', 'upi_id = idtbl_upi');
		if($id != null){
			if ($idp != null) {
				$q = $this->db->get_where('view_user_upi_provinsi',array('idtbl_upi'=>$id, 'kode_provinsi'=>$idp));
			}else{
				$q = $this->db->get_where('view_user_upi_provinsi',array('idtbl_upi'=>$id));
			}
		}else{
			if ($idp != null) {
				$q = $this->db->get_where('view_user_upi_provinsi',array('kode_provinsi'=>$idp));
			}else{
				$q = $this->db->get('view_user_upi_provinsi');
			}
		}
		return $q->result_array();
	}

	function _insert_upi($data){
		$q = $this->db->insert('tbl_upi',$data);
		if($q){
			return true;
		}else{
			return false;
		}
	}

	function _update_user($id){
		$this->db->where('id_user',$id);
		$q = $this->db->update('tbl_user',array('login_status'=>'1'));
		if($q){
			return true;
		}else{
			return false;
		}
	}

	function _update_rejected($id,$data){
		$this->db->where('upi_id',$id);
		$q = $this->db->update('tbl_rejected',$data);
		if($q){
			return true;
		}else{
			return false;
		}
	}

	function _delete_rejected($id){
		$this->db->where('upi_id',$id);
		$q = $this->db->delete('tbl_rejected');
		if($q){
			return true;
		}else{
			return false;
		}
	}
	function _delete_reg_upi($id){
		$this->db->where('idtbl_upi',$id);
		$q = $this->db->delete('tbl_register_upi');
		if($q){
			return true;
		}else{
			return false;
		}
	}

	function _update_upi($id, $data){
		$this->db->where(array('idtbl_upi'=>$id));
		$q = $this->db->update('tbl_upi',$data);
		if($q){
			return true;
		}else{
			return false;
		}
	}

	function _update_revisi($id, $data){
		$this->db->where(array('upi_id'=>$id));
		$q = $this->db->update('tbl_rejected',$data);
		if($q){
			return true;
		}else{
			return false;
		}
	}

	function _get_provinsi(){
		$q = $this->db->get('tbl_provinsi');
		return $q->result_array();
	}
}
