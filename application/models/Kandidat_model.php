<?php

class Kandidat_model extends CI_Model {
    private $table = 'kandidat';

    public function get_kandidat()
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->join('mahasiswa', 'mahasiswa.id = kandidat.id_mahasiswa');
        $this->db->group_by('no_urut');
        return $this->db->get()->result();
    }

    public function get_pilihan($no_urut)
    {
        $this->db->select('kandidat.id, nama');
        $this->db->from($this->table);
        $this->db->join('mahasiswa', 'mahasiswa.id = kandidat.id_mahasiswa');
        $this->db->where(['no_urut' => $no_urut]);
        return $this->db->get()->result()[0];
    }
}