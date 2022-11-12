<?php

class Pemilihan extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->model('Kandidat_model');
        $this->load->model('Pemilihan_model');

        if (!$this->session->has_userdata('kode_registrasi')) {
            redirect('/');
        }
    }

	public function index()
	{
        $data['nama_mahasiswa'] = $this->session->nama;
        $data['id_mahasiswa'] = $this->session->id_mahasiswa;
        $data['kandidat'] = $this->Kandidat_model->get_kandidat();

        $this->form_validation->set_rules('kandidat', 'di bawah', 'required');
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('pemilihan', $data);
        } else {
            $data['pilihan'] = $this->Kandidat_model->get_pilihan($_POST['kandidat']);
            if ($this->Pemilihan_model->coblos($this->session->kode_registrasi, $data['pilihan']->id) > 0) {
                $this->load->view('success', $data);
            } else {
                echo 'error';
            }
        }

    }
}