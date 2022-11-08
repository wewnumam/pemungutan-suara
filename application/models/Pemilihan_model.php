<?php

class Pemilihan_model extends CI_Model {
    private $table = 'pemilihan';

    public function auth($kode_registrasi) {
        if ($this->db->get_where($this->table, ['kode_registrasi' => $kode_registrasi])->num_rows() == 0) {
            return KODE_REGISTRASI_UNAVAILABLE;
        }

        if ($this->db->get_where($this->table, ['kode_registrasi' => $kode_registrasi, 'telah_memilih' => 1])->num_rows() > 0) {
            return KODE_REGISTRASI_USED;
        }

        return KODE_REGISTRASI_AVAILABLE;
    }

    public function get_profile($kode_registrasi)
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->join('mahasiswa', 'mahasiswa.id = pemilihan.id_mahasiswa');
        $this->db->where('kode_registrasi', $kode_registrasi);
        return $this->db->get()->result()[0];
    }
}