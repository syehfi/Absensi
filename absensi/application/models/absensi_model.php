<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Absensi_model extends CI_Model {

	public function find_prodi($id_jurusan)
	{
		$query = "SELECT * FROM prodi n JOIN jurusan b ON b.id_jurusan = n.id_jurusan";
        return $this->db->query($query);
	}

	public function prodi()
    {
       $prod = $this->db->order_by('nama_prodi', 'desc')->get('prodi');
       return $prod->result();
    }
    public function jurusan()
    {
    	$jur = $this->db->get('jurusan');
    	return $jur->result();
    }
     public function kelas()
    {
    	$kls = $this->db->get('kelas');
    	return $kls->result();
    }
    public function absen($data)
    {
       $ins =  $this->db->insert('absen', $data);
        return $ins;
    }

}

/* End of file absensi_model.php */
/* Location: ./application/models/absensi_model.php */