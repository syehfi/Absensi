<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Absensi extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		//Do your magic here
		$this->load->model('absensi_model');
	}
	public function index()
	{
		$data['prodi'] = $this->absensi_model->prodi();
        $data['jurusan'] = $this->absensi_model->jurusan();
         $data['kelas'] = $this->absensi_model->kelas();
        $this->load->view('index.php', $data);
	}

	public function find_prodi()
	{
		$jurusan = $this->input->post('jurusan');
        
        $data = $this->absensi_model->find_prodi($jurusan);
        // $this->output->set_content_type("application/json");
        $this->output->set_output($data);
	}

	public function absen()
	{
		$data = array(
	        'id_prodi' => $this->input->post('s_prodi'),
	        'id_kelas' => $this->input->post('s_kelas'),
	        'absen' => $this->input->post('s_absen'),
	    );
	    $this->absensi_model->absen($data);
	    $this->session->flashdata('sukses');
	    $data['prodi'] = $this->absensi_model->prodi();
        $data['jurusan'] = $this->absensi_model->jurusan();
        $data['kelas'] = $this->absensi_model->kelas();
	    $this->load->view('index.php',$data);
	}

}

/* End of file absensi.php */
/* Location: ./application/controllers/absensi.php */