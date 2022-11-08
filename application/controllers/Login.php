<?php

class Login extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->model('Pemilihan_model');
        $this->load->library('form_validation');
    }

	public function index()
	{
        if ($_POST) {
            $this->auth($_POST['kode_registrasi']);
        } else {
            $this->load->view('login');
        }
	}

    private function auth($kode_registrasi) {
        if ($this->Pemilihan_model->auth($kode_registrasi) == KODE_REGISTRASI_UNAVAILABLE) {
            echo 'kode tidak ditemukan';
        }

        if ($this->Pemilihan_model->auth($kode_registrasi) == KODE_REGISTRASI_USED) {
            echo 'anda telah memilih pada ' . $this->Pemilihan_model->get_profile($kode_registrasi)->memilih_pada;
            echo '<pre>';
            echo var_dump($this->Pemilihan_model->get_profile($kode_registrasi));
            echo '</pre>';
        }

        if ($this->Pemilihan_model->auth($kode_registrasi) == KODE_REGISTRASI_AVAILABLE) {
            echo 'selamat datang ' . $this->Pemilihan_model->get_profile($kode_registrasi)->nama . ', silahkan memilih kandidat!';
            echo '<pre>';
            echo var_dump($this->Pemilihan_model->get_profile($kode_registrasi));
            echo '</pre>';
        }
        
    }
}
