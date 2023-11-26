<?php
class Ruangan_model extends CI_Model
{
    function updateRuangan($id_ruangan, $data)
    {
        $this->db->where('id_ruangan', $id_ruangan);
        $this->db->update('tbl_ruangan', $data);
    }

    function getRuangan()
    {
        $query = "SELECT peminjaman.*, peminjaman.keterangan as keterangan_peminjaman, user.*, tbl_ruangan.*
        FROM peminjaman 
        LEFT JOIN user ON peminjaman.id_user = user.id
        LEFT JOIN tbl_ruangan ON tbl_ruangan.id_ruangan = peminjaman.id_ruangan where status_peminjaman = 0
        ";
        return $this->db->query($query)->result_array();
    }

    function batal_pinjam($kode_peminjaman)
    {
        $this->db->where('kode_peminjaman', $kode_peminjaman);
        $this->db->delete('peminjaman');
    }

    function batal_jadwal($id_peminjaman)
    {
        $this->db->where('id_peminjaman', $id_peminjaman);
        $this->db->delete('jadwal');
    }

    function getIdRuangan($id_ruangan)
    {
        $query = "SELECT tbl_ruangan.* from tbl_ruangan where id_ruangan = $id_ruangan
        ";
        return $this->db->query($query)->result_array();
    }

    function getJadwal()
    {
        $query = "SELECT jadwal.*, peminjaman.*, peminjaman.keterangan as keterangan_peminjaman, user.*, tbl_ruangan.* FROM jadwal INNER JOIN peminjaman, tbl_ruangan, user WHERE jadwal.id_peminjaman=peminjaman.id_peminjaman 
        AND peminjaman.id_ruangan=tbl_ruangan.id_ruangan
        AND peminjaman.id_user=user.id
        AND peminjaman.status_peminjaman!=0
        AND jadwal.status_jadwal !=3
        ORDER BY tanggal, jam_mulai ASC
        ";
        return $this->db->query($query)->result_array();
    }

    function getArsipPinjam()
    {
        $query = "SELECT jadwal.*, peminjaman.*, peminjaman.keterangan as keterangan_peminjaman, user.*, tbl_ruangan.* FROM jadwal INNER JOIN peminjaman, tbl_ruangan, user WHERE jadwal.id_peminjaman=peminjaman.id_peminjaman 
        AND peminjaman.id_ruangan=tbl_ruangan.id_ruangan
        AND peminjaman.id_user=user.id
        AND peminjaman.status_peminjaman=3
        AND jadwal.status_jadwal =3
        ORDER BY tanggal, jam_mulai ASC
        ";
        return $this->db->query($query)->result_array();
    }
}