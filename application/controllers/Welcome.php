<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/userguide3/general/urls.html
	 */
	public function index()
	{
		$this->load->view('welcome_message');

		$this->load->database();
		$query = $this->db->query('SELECT pemilihan.kode_registrasi, mahasiswa.email FROM pemilihan INNER JOIN mahasiswa ON mahasiswa.id = pemilihan.id_mahasiswa;');

		foreach ($query->result() as $row)
		{
				echo $row->kode_registrasi;
				echo ' ';
				echo $row->email;
				echo '<br>';
		}

		echo 'Total Results: ' . $query->num_rows();
	}
}
