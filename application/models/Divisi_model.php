<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Divisi_model extends CI_Model
{
    public function getRuangan()
    {
        $query = "SELECT tbl_ruangan.*, akses_ruangan.id_ruangan, tbl_bangunan.id_bangunan, tbl_bangunan.nama_bangunan
        FROM tbl_ruangan
        INNER JOIN akses_ruangan ON akses_ruangan.id_ruangan = tbl_ruangan.id_ruangan
        INNER join tbl_bangunan ON tbl_bangunan.id_bangunan = tbl_ruangan.id_bangunan
                    ";
        return $this->db->query($query)->result_array();
    }

    public function GetJamPeminjaman($rg, $tgl, $jam)
    {
        $query = $this->db->query("select * from peminjaman_d where id_ruangan='$rg' and date(date)='$tgl' and time(date)='$jam'");
        return ($query->num_rows() > 0) ? 1 : 0;
    }

    public function add_data($table, $array)
    {
        return $this->db->insert($table, $array);
    }
}