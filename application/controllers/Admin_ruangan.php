<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Admin_ruangan extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->helper('download');
        $this->load->model('Barang_model', 'barang_model');
        $this->load->model('User_model', 'user_model');
        $this->load->model('Pengajuan_model', 'pengajuan_model');
        $this->load->library("pagination");
    }

    public function admin_ruangan()
    {
        $this->load->model('Upbmaster_model', 'upbmaster_model');
        $data['ruangans'] = $this->upbmaster_model->getRuangan();
        $this->load->view('templates/header');
        $this->load->view('templates/admin_sidebar');
        $this->load->view('admin/ruangan/list_ruangan', $data);
        $this->load->view('templates/footer');
    }

    public function akses()
    {
        $id_ruangan = $this->input->post('id');
        $role = $this->input->post('role');

        $data = [
            'id_ruangan' => $id_ruangan,
            'role' => $role
        ];
        $result = $this->db->get_where('akses_ruangan', $data);

        if ($result->num_rows() < 1) {
            $this->db->insert('akses_ruangan', $data);
        } else {
            $this->db->delete('akses_ruangan', $data);
        }

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Access Changed!</div>');
    }

    public function ruangan_pinjam()
    {
        $this->load->model('Ruangan_model', 'ruangan_model');
        $data['ruangans'] = $this->ruangan_model->getRuangan();
        $this->load->view('templates/header');
        $this->load->view('templates/admin_sidebar');
        $this->load->view('admin/ruangan/pinjam_ruangan', $data);
        $this->load->view('templates/footer');
    }

    public function file_request($file)
    {
        force_download('assets/file/' . $file, NULL);
    }

    public function accrequest($id_peminjaman)
    {

        $cekpeminjaman = $this->db->get_where('peminjaman', ['id_peminjaman' => $id_peminjaman])->row_array();

        $nowtime = strtotime(date('H:i:s')) + strtotime(date('Y-m-d'));

        $dbstart = strtotime($cekpeminjaman['jam_mulai']) + strtotime($cekpeminjaman['tanggal']);
        $dbend = strtotime($cekpeminjaman['jam_berakhir']) + strtotime($cekpeminjaman['tanggal']);

        if ($nowtime >= $dbstart and $nowtime <= $dbend) {
            $ruangan = $cekpeminjaman['id_ruangan'];
            $cekjadwal = $this->db->query('SELECT * FROM jadwal INNER JOIN peminjaman, tbl_ruangan 
			WHERE jadwal.id_peminjaman=peminjaman.id_peminjaman
			AND peminjaman.id_ruangan=tbl_ruangan.id_ruangan
			AND status_jadwal=1
			AND peminjaman.id_ruangan=' . $ruangan)->row_array();

            if ($cekjadwal) {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Gagal diterima, jadwal bentrok!</div>');
                redirect('admin/request');
            } else {
                $this->db->update('ruangan', ['status_ruangan' => 'Dipakai'], ['id_ruangan' => $cekpeminjaman['id_ruangan']]);
                $this->db->update('peminjaman', array('status_peminjaman' => 1), array('id_peminjaman' => $id_peminjaman));
                $this->db->insert('jadwal', array(
                    'id_jadwal' => null,
                    'id_peminjaman' => $id_peminjaman,
                    'status_jadwal' => 1
                ));
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Request diterima!</div>');
                redirect('admin_ruangan/ruangan_pinjam');
            }
        } elseif ($nowtime < $dbstart) {
            $ruangan = $cekpeminjaman['id_ruangan'];
            $cekjadwal = $this->db->query('SELECT * FROM jadwal INNER JOIN peminjaman, tbl_ruangan 
			WHERE jadwal.id_peminjaman=peminjaman.id_peminjaman
			AND peminjaman.id_ruangan=tbl_ruangan.id_ruangan
			AND status_jadwal=2
			AND peminjaman.id_ruangan=' . $ruangan)->row_array();

            $dbone = strtotime($cekjadwal['jam_mulai']) + strtotime($cekjadwal['jam_ berakhir']) + strtotime($cekjadwal['tanggal']);

            $dbtwo = strtotime($cekpeminjaman['jam_mulai']) + strtotime($cekpeminjaman['jam_ berakhir']) + strtotime($cekpeminjaman['tanggal']);

            if ($dbone == $dbtwo) {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Gagal diterima, jadwal bentrok!</div>');
                redirect('admin_ruangan/ruangan_pinjam');
            } else {
                $this->db->update('peminjaman', array('status_peminjaman' => 2), array('id_peminjaman' => $id_peminjaman));
                $this->db->insert('jadwal', array(
                    'id_jadwal' => null,
                    'id_peminjaman' => $id_peminjaman,
                    'status_jadwal' => 2
                ));
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Request diterima!</div>');
                redirect('admin_ruangan/ruangan_pinjam');
            }
        } else {
            $this->db->insert('jadwal', array(
                'id_jadwal' => null,
                'id_peminjaman' => $id_peminjaman,
                'status_jadwal' => 1
            ));
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Request diterima!</div>');
            redirect('admin_ruangan/ruangan_pinjam');
        }
    }

    public function disaccrequest($id_peminjaman)
    {
        $disaccrequest = $this->db->delete('peminjaman', array('id_peminjaman' => $id_peminjaman));
        if ($disaccrequest) {
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Request ditolak!</div>');
            redirect('admin_ruangan/ruangan_pinjam');
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Request gagal ditolak!</div>');
            redirect('admin_ruangan/ruangan_pinjam');
        }
    }

    //Jadwal
    public function jadwal()
    {
        $this->load->model('Ruangan_model', 'ruangan_model');
        $data['jadwal'] = $this->ruangan_model->getJadwal();

        $this->load->view('templates/header');
        $this->load->view('templates/admin_sidebar');
        $this->load->view('admin/ruangan/jadwal', $data);
        $this->load->view('templates/footer');
    }

    //Arsip Jadwal
    public function arsip_pinjam()
    {
        $this->load->model('Ruangan_model', 'ruangan_model');
        $data['jadwal'] = $this->ruangan_model->getArsipPinjam();

        $this->load->view('templates/header');
        $this->load->view('templates/admin_sidebar');
        $this->load->view('admin/ruangan/arsip_pinjam', $data);
        $this->load->view('templates/footer');
    }
}