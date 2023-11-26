<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Upb_model extends CI_Model
{
    public function getPengajuanTemp($waktu, $divisi, $minggu)
    {


        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        $user_id = $this->session->userdata('id');
        $query = "SELECT barang.nama_brg, pengajuan.jumlah, pengajuan.satuan, pengajuan.harga, pengajuan.total, pengajuan.status, pengajuan.waktu_validasi, pengajuan.user_id, pengajuan.divisi, pengajuan.id, pengajuan.waktu_pengajuan
        FROM pengajuan
        INNER JOIN barang ON pengajuan.barang_id=barang.id
        where status='diusulkan' AND waktu_pengajuan = '$waktu' AND user_id = '$divisi' AND minggu = '$minggu'
                    ";
        return $this->db->query($query)->result_array();
    }
    public function getDivisiTemp()
    {
        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        $user_id = $this->session->userdata('id');
        $query = "SELECT distinct(divisi), user_id, minggu, waktu_pengajuan FROM pengajuan WHERE status='diusulkan'
                    ";
        return $this->db->query($query)->result_array();
    }

    function getPengajuanDetail($waktu, $divisi)
    {
        $this->db->where('waktu_pengajuan', $waktu);
        $this->db->where('user_id', $divisi);

        $query = $this->db->get('pengajuan');
        return $query->row();
    }

    //PURCHASE REQUISITION
    public function getPengajuanTempPr($waktu, $divisi, $minggu)
    {


        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        $user_id = $this->session->userdata('id');
        $query = "SELECT barang.nama_brg, pengajuan.jumlah, pengajuan.realisasi, pengajuan.satuan, pengajuan.harga, pengajuan.total, pengajuan.status, pengajuan.waktu_validasi, pengajuan.user_id, pengajuan.divisi, pengajuan.id, pengajuan.waktu_pengajuan,pengajuan.deskripsi, pengajuan.id_vendor
        FROM pengajuan
        INNER JOIN barang ON pengajuan.barang_id=barang.id
        where status='Diusulkan keuangan' AND waktu_pengajuan = '$waktu' AND user_id = '$divisi' AND minggu = '$minggu'
                    ";
        return $this->db->query($query)->result_array();
    }

    public function getPengajuanPr($waktu, $divisi, $minggu)
    {


        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        $user_id = $this->session->userdata('id');
        $query = "SELECT barang.nama_brg, pengajuan.jumlah, pengajuan.realisasi, pengajuan.satuan, pengajuan.harga, pengajuan.total, pengajuan.status, pengajuan.waktu_validasi, pengajuan.user_id, pengajuan.divisi, pengajuan.id, pengajuan.waktu_pengajuan, pengajuan.deskripsi, pengajuan.id_surat
        FROM pengajuan
        INNER JOIN barang ON pengajuan.barang_id=barang.id
       
        where status='Diusulkan keuangan' AND waktu_pengajuan = '$waktu' AND user_id = '$divisi' AND minggu = '$minggu'
                    ";
        return $this->db->query($query)->result_array();
    }



    public function getDivisiTempPr()
    {
        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        $user_id = $this->session->userdata('id');
        $query = "SELECT distinct(divisi), user_id, minggu, waktu_pengajuan FROM pengajuan WHERE status='Diusulkan keuangan'
                    ";
        return $this->db->query($query)->result_array();
    }


    function getPengajuanPrDetail($waktu, $divisi)
    {
        $this->db->where('waktu_pengajuan', $waktu);
        $this->db->where('user_id', $divisi);
      


        $query = $this->db->get('pengajuan');
        return $query->row();
    }

 

    //PURCHASE ORDER
    public function getPengajuanPo($waktu, $divisi, $minggu)
    {


        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        $user_id = $this->session->userdata('id');
        $query = "SELECT barang.nama_brg, pengajuan.jumlah, pengajuan.realisasi, pengajuan.satuan, pengajuan.harga, pengajuan.total, pengajuan.status, pengajuan.waktu_validasi, pengajuan.user_id, pengajuan.divisi, pengajuan.id, pengajuan.waktu_pengajuan,pengajuan.deskripsi,pengajuan.id_vendor
        FROM pengajuan
        INNER JOIN barang ON pengajuan.barang_id=barang.id
        where status='Disetujui keuangan' AND waktu_pengajuan = '$waktu' AND user_id = '$divisi' AND minggu = '$minggu'
                    ";
        return $this->db->query($query)->result_array();
    }

    public function getPengajuanTempPo($id_vendor)
    {


        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        $user_id = $this->session->userdata('id');
        $query = "SELECT barang.nama_brg, pengajuan.jumlah, pengajuan.realisasi, pengajuan.satuan, pengajuan.harga, pengajuan.total, pengajuan.status, pengajuan.waktu_validasi, pengajuan.user_id, pengajuan.divisi, pengajuan.id, pengajuan.waktu_pengajuan,pengajuan.deskripsi, pengajuan.validasi, tbl_vendor.id_vendor, tbl_vendor.nama_vendor
        FROM pengajuan
        LEFT JOIN barang ON pengajuan.barang_id=barang.id
        LEFT join tbl_vendor on pengajuan.id_vendor = tbl_vendor.id_vendor
        where status='Disetujui keuangan' AND tbl_vendor.id_vendor = $id_vendor
                    ";
        return $this->db->query($query)->result_array();
    }

    function getPengajuanPoDetail($id_vendor)
    {
        $this->db->where('id_vendor', $id_vendor);

        $query = $this->db->get('tbl_vendor');
        return $query->row();
    }

    public function getDivisiTempPo()
    {
        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        $user_id = $this->session->userdata('id');
        $query = "SELECT distinct(nama_vendor), tbl_vendor.id_vendor, barang.nama_brg, pengajuan.barang_id FROM tbl_vendor 
        LEFT join pengajuan ON pengajuan.id_vendor = tbl_vendor.id_vendor
        LEFT JOIN barang ON pengajuan.barang_id=barang.id
         WHERE status='Disetujui keuangan'
                    ";
        return $this->db->query($query)->result_array();
    }




    function updatePengajuan($id, $data)
    {
        $this->db->where('id', $id);
        $this->db->update('pengajuan', $data);
    }

    //SURAT MASUK
    public function getAllSuratMasuk()
    {
        $query = "SELECT *
                    FROM suratmasuk
                    ";
        return $this->db->query($query)->result_array();
    }


    public function getDetailSuratmasuk($id_suratmasuk)
    {
        $query = "SELECT *
                    FROM suratmasuk where id_suratmasuk = $id_suratmasuk
                    ";
        return $this->db->query($query)->result_array();
    }
    public function hapus($id_suratmasuk)
    {
        $this->db->where('id_suratmasuk', $id_suratmasuk);
        $this->db->delete('suratmasuk');
    }

    //SURAT KELUAR
    public function getAllSuratKeluar()
    {
        $query = "SELECT *
                    FROM suratkeluar
                    ";
        return $this->db->query($query)->result_array();
    }
    public function hapus_sk($id_suratkeluar)
    {
        $this->db->where('id_suratkeluar', $id_suratkeluar);
        $this->db->delete('suratkeluar');
    }

    public function getDetailSuratkeluar($id_suratkeluar)
    {
        $query = "SELECT *
                    FROM suratkeluar where id_suratkeluar = $id_suratkeluar
                    ";
        return $this->db->query($query)->result_array();
    }

    //Barang
    public function getBarang()
    {
        $query = "SELECT tbl_barang.*, tbl_ruangan.nama_ruangan
        FROM tbl_barang
        left join tbl_ruangan ON tbl_ruangan.id_ruangan = tbl_barang.id_ruangan
         ";




        // $query =  "SELECT *
        //     FROM tbl_barang

        //     ";
        return $this->db->query($query)->result_array();
    }

    public function ambil_id_barang($id_barang)
    {
        $query = "SELECT tbl_barang.*, tbl_ruangan.nama_ruangan,  jenis_barang.jenis_barang, asal_barang.nama_asal_barang
        FROM tbl_barang
        left join tbl_ruangan ON tbl_ruangan.id_ruangan = tbl_barang.id_ruangan
        left join subklasifikasi ON subklasifikasi.id = tbl_barang.id_subklasifikasi
        left join jenis_barang ON tbl_barang.id_jenis_barang = jenis_barang.id_jenis_barang
        left join asal_barang ON tbl_barang.id_asal_barang = asal_barang.id_asal_barang where
        tbl_barang.id_barang = $id_barang
        ";
        return $this->db->query($query)->result_array();
    }

    public function kode_bangunan()
    {
        $query = "SELECT tbl_ruangan.*, tbl_bangunan.kode_bangunan
        FROM tbl_ruangan 
        left join tbl_bangunan ON tbl_ruangan.id_bangunan = tbl_bangunan.id_bangunan 
        ";
        return $this->db->query($query)->result_array();
    }

    public function ambil_kode_bangunan($kode_bangunan)
    {
        $query = "SELECT tbl_ruangan.*, tbl_bangunan.kode_bangunan
        FROM tbl_ruangan
        left join tbl_bangunan ON tbl_ruangan.id_bangunan = tbl_bangunan.id_bangunan where
        tbl_bangunan.kode_bangunan = $kode_bangunan
        ";
        return $this->db->query($query)->result_array();
    }

    public function hapusbarang($id_barang)
    {
        $this->db->where('id_barang', $id_barang);
        $this->db->delete('tbl_barang');
    }


    //BERITA ACARA
    // public function getAll()
    // {
    //     $query = "SELECT barang.nama_brg, pengajuan.waktu_pengajuan, pengajuan.id, pengajuan.realisasi , pengajuan.jumlah, pengajuan.satuan, pengajuan.harga, pengajuan.total, pengajuan.status, pengajuan.waktu_validasi, pengajuan.validasi, pengajuan.user_id
    //     FROM pengajuan
    //     INNER JOIN barang ON pengajuan.barang_id=barang.id
    //     where status = 'disetujui upb'
    //                 ";
    //     return $this->db->query($query)->result_array();
    // }

    public function getBeritaAcara($waktu, $divisi, $minggu)
    {


        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        $user_id = $this->session->userdata('id');
        $query = "SELECT barang.nama_brg, pengajuan.jumlah, pengajuan.realisasi, pengajuan.satuan, pengajuan.harga, pengajuan.total, pengajuan.status, pengajuan.waktu_validasi, pengajuan.user_id, pengajuan.divisi, pengajuan.id, pengajuan.waktu_pengajuan
        FROM pengajuan
        INNER JOIN barang ON pengajuan.barang_id=barang.id
        where status='Disetujui UPB' AND waktu_pengajuan = '$waktu' AND user_id = '$divisi' AND minggu = '$minggu'
                    ";
        return $this->db->query($query)->result_array();
    }

    public function getBeritaAcaraTemp($waktu, $divisi, $minggu)
    {


        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        $user_id = $this->session->userdata('id');
        $query = "SELECT barang.nama_brg, pengajuan.jumlah, pengajuan.realisasi, pengajuan.satuan, pengajuan.harga, pengajuan.total, pengajuan.status, pengajuan.waktu_validasi, pengajuan.user_id, pengajuan.divisi, pengajuan.id, pengajuan.waktu_pengajuan
        FROM pengajuan
        INNER JOIN barang ON pengajuan.barang_id=barang.id
        where  status='Disetujui UPB' AND waktu_pengajuan = '$waktu' AND user_id = '$divisi' AND minggu = '$minggu'
                    ";
        return $this->db->query($query)->result_array();
    }

    function getBeritaAcaraDetail($waktu, $divisi)
    {
        $this->db->where('waktu_pengajuan', $waktu);
        $this->db->where('user_id', $divisi);


        $query = $this->db->get('pengajuan');
        return $query->row();
    }

    public function getDivisi2TempPo()
    {
        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        $user_id = $this->session->userdata('id');
        $query = "SELECT distinct(divisi), minggu, user_id, waktu_pengajuan FROM pengajuan WHERE  status='Disetujui UPB'
                    ";
        return $this->db->query($query)->result_array();
    }

    //DATA PENGAJUAN DITOLAK
    public function getAll()
    {
        $query = "SELECT barang.nama_brg, pengajuan.waktu_pengajuan, pengajuan.id, pengajuan.realisasi , pengajuan.jumlah, pengajuan.satuan, pengajuan.harga, pengajuan.total, pengajuan.status, pengajuan.waktu_validasi, pengajuan.validasi, pengajuan.keterangan, pengajuan.user_id
        FROM pengajuan
        INNER JOIN barang ON pengajuan.barang_id=barang.id
        where status = 'ditolak upb'
                    ";
        return $this->db->query($query)->result_array();
    }

    public function getDate($tgla, $tglb, $status)
    {
        $query = "SELECT barang.nama_brg, pengajuan.waktu_pengajuan, pengajuan.id, pengajuan.realisasi , pengajuan.jumlah, pengajuan.satuan, pengajuan.harga, pengajuan.total, pengajuan.status, pengajuan.waktu_validasi, pengajuan.validasi, pengajuan.keterangan, pengajuan.user_id
        FROM pengajuan
        INNER JOIN barang ON pengajuan.barang_id=barang.id
        where waktu_pengajuan BETWEEN '$tgla' AND '$tglb' AND status = '$status'
                    ";
        return $this->db->query($query)->result_array();
    }

    //ARSIP NOTA
    public function getAllArsipNota()
    {
        $query = "SELECT *
                    FROM arsipnota
                    ";
        return $this->db->query($query)->result_array();
    }

    public function getDetailArsipNota($id_nota)
    {
        $query = "SELECT *
                    FROM arsipnota where id_nota = $id_nota
                    ";
        return $this->db->query($query)->result_array();
    }
    public function hapus_arsipnota($id_nota)
    {
        $this->db->where('id_nota', $id_nota);
        $this->db->delete('arsipnota');
    }


    //ARSIP GAMBAR
    public function getAllArsipGambar()
    {
        $query = "SELECT *
                     FROM arsipgambar
                     ";
        return $this->db->query($query)->result_array();
    }

    public function getDetailArsipGambar($id_gambar)
    {
        $query = "SELECT *
                    FROM arsipgambar where id_gambar = $id_gambar
                    ";
        return $this->db->query($query)->result_array();
    }
    public function hapus_arsipgambar($id_gambar)
    {
        $this->db->where('id_gambar', $id_gambar);
        $this->db->delete('arsipgambar');
    }

    //ARSIP DOKUMEN
    public function getAllArsipDokumen()
    {
        $query = "SELECT *
                     FROM arsipdokumen
                     ";
        return $this->db->query($query)->result_array();
    }

    public function hapus_arsipdokumen($id_dokumen)
    {
        $this->db->where('id_dokumen', $id_dokumen);
        $this->db->delete('arsipdokumen');
    }

    //VENDOR
    public function getVendor()
    {
        $query = "SELECT *
                    FROM tbl_vendor
                    ";
        return $this->db->query($query)->result_array();
    }

    function updateVendor($id, $data)
    {
        $this->db->where('id_vendor', $id);
        $this->db->update('tbl_vendor', $data);
    }

    public function hapusVendor($id)
    {
        $this->db->where('id_vendor', $id);
        $this->db->delete('tbl_vendor');
    }

    //NO SURAT
    public function getNosurat()
    {
        $query = "SELECT *
                    FROM surat
                    ";
        return $this->db->query($query)->result_array();
    }
}