<?php

class Login extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->model('Pemilihan_model');
    }

	public function index()
	{
        $this->form_validation->set_rules('kode_registrasi', 'Kode Registrasi', 'required|exact_length[5]');
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('login');
        } else {
            $this->auth($_POST['kode_registrasi']);
        }
	}

    private function auth($kode_registrasi) {
        if ($this->Pemilihan_model->auth($kode_registrasi) == KODE_REGISTRASI_UNAVAILABLE) {
            $this->load->view('login', ['message' => 'Kode tidak ditemukan.']);
        }

        if ($this->Pemilihan_model->auth($kode_registrasi) == KODE_REGISTRASI_USED) {
            $profil = $this->Pemilihan_model->get_profile($kode_registrasi);
            $this->load->view('login', ['message' => $profil->nama . ', Anda telah memilih pada ' . $profil->memilih_pada]);
        }

        if ($this->Pemilihan_model->auth($kode_registrasi) == KODE_REGISTRASI_AVAILABLE) {
            $this->session->set_userdata((array) $this->Pemilihan_model->get_profile($kode_registrasi));
            redirect('/pemilihan');
        }
    }

        
    public function logout()
    {
        $this->session->sess_destroy();
        redirect('/pemilihan');
    }
}
