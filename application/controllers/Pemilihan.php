<?php

class Pemilihan extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->model('Pemilihan_model');

        if (!$this->session->has_userdata('kode_registrasi')) {
            redirect('/');
        }
    }

	public function index()
	{
        echo 'Hi, ' . $this->session->nama . ', selamat datang!';
    }
}