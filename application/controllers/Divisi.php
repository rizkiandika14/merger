<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Divisi extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->helper('download');
        aturJadwal();
    }

    public function file_request($file)
    {
        force_download('assets/file/' . $file, NULL);
    }

    public function dash()
    {
        $this->load->view('templates/header');
        $this->load->view('templates/divisi_sidebar');
        $this->load->view('divisi/dashboard');
        $this->load->view('templates/footer');
    }

    public function barang_temp()
    {
        $this->load->model('Temp_model', 'temp_model');
        $data['nama_brg'] = $this->db->get('barang_temp')->result_array();

        $data['barang_temp'] = $this->temp_model->getBarangTemp();
        $this->load->view('templates/header');
        $this->load->view('templates/divisi_sidebar');
        $this->load->view('divisi/pengajuan', $data);
        $this->load->view('templates/footer');
    }

    public function fungsi_delete_temp($id)
    {
        $this->barang_model->hapus_temp($id);
        $this->session->set_flashdata('pesan', 'Data Deleted!');
        // $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data Deleted!</div>');
        Redirect(Base_url('divisi/pengajuan'));
    }

    public function fungsi_delete_temp2($id)
    {
        $this->barang_model->hapus_temp($id);
        $this->session->set_flashdata('pesan', 'Data Deleted!');
        // $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data Deleted!</div>');
        Redirect(Base_url('divisi/pengajuan2'));
    }

    public function fungsi_delete_temp3($id)
    {
        $this->barang_model->hapus_temp($id);
        $this->session->set_flashdata('pesan', 'Data Deleted!');
        // $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data Deleted!</div>');
        Redirect(Base_url('divisi/pengajuan3'));
    }
    public function fungsi_delete_temp4($id)
    {
        $this->barang_model->hapus_temp($id);
        $this->session->set_flashdata('pesan', 'Data Deleted!');
        // $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data Deleted!</div>');
        Redirect(Base_url('divisi/pengajuan4'));
    }

    public function fungsi_pengajuan()
    {
        $this->pengajuan_model->add_pengajuan();
        $this->pengajuan_model->delete_pengajuan();
        $this->session->set_flashdata('pesan', 'Pengajuan Success!');
        // $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Pengajuan Success!</div>');
        Redirect(Base_url('divisi/divpengajuan'));
    }

    public function fungsi_pengajuan2()
    {

        $this->pengajuan_model->add_pengajuan2();
        $this->pengajuan_model->delete_pengajuan();
        $this->session->set_flashdata('pesan', 'Pengajuan Success!');
        // $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Pengajuan Success!</div>');
        Redirect(Base_url('divisi/divpengajuan'));
    }

    public function fungsi_pengajuan3()
    {

        $this->pengajuan_model->add_pengajuan3();
        $this->pengajuan_model->delete_pengajuan();
        $this->session->set_flashdata('pesan', 'Pengajuan Success!');
        // $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Pengajuan Success!</div>');
        Redirect(Base_url('divisi/divpengajuan'));
    }
    public function fungsi_pengajuan4()
    {

        $this->pengajuan_model->add_pengajuan4();
        $this->pengajuan_model->delete_pengajuan();
        $this->session->set_flashdata('pesan', 'Pengajuan Success!');
        // $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Pengajuan Success!</div>');
        Redirect(Base_url('divisi/divpengajuan'));
    }

    public function pengajuan()
    {
        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        $this->load->model('Barang_model', 'barang_model');
        $data['nama_brg'] = $this->db->get('barang')->result_array();
        $this->load->model('Temp_model', 'temp_model');
        $data['nama_brg'] = $this->db->get('barang_temp')->result_array();
        $this->load->model('Barang_model', 'barang_model');
        $data['satuans'] = $this->barang_model->getSatuan();


        $data['barang'] = $this->barang_model->getBarang();
        $data['barang_temp'] = $this->temp_model->getBarangTemp1();
        $this->load->view('templates/header');
        $this->load->view('templates/divisi_sidebar');
        $this->load->view('divisi/pengajuan', $data);
        $this->load->view('templates/footer');
    }

    public function pengajuan2()
    {
        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        $this->load->model('Barang_model', 'barang_model');
        $data['nama_brg'] = $this->db->get('barang')->result_array();
        $this->load->model('Temp_model', 'temp_model');
        $data['nama_brg'] = $this->db->get('barang_temp')->result_array();
        $this->load->model('Barang_model', 'barang_model');
        $data['satuans'] = $this->barang_model->getSatuan();


        $data['barang'] = $this->barang_model->getBarang();
        $data['barang_temp'] = $this->temp_model->getBarangTemp2();
        $this->load->view('templates/header');
        $this->load->view('templates/divisi_sidebar');
        $this->load->view('divisi/pengajuan2', $data);
        $this->load->view('templates/footer');
    }

    public function pengajuan3()
    {
        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        $this->load->model('Barang_model', 'barang_model');
        $data['nama_brg'] = $this->db->get('barang')->result_array();
        $this->load->model('Temp_model', 'temp_model');
        $data['nama_brg'] = $this->db->get('barang_temp')->result_array();
        $this->load->model('Barang_model', 'barang_model');
        $data['satuans'] = $this->barang_model->getSatuan();


        $data['barang'] = $this->barang_model->getBarang();
        $data['barang_temp'] = $this->temp_model->getBarangTemp3();
        $this->load->view('templates/header');
        $this->load->view('templates/divisi_sidebar');
        $this->load->view('divisi/pengajuan3', $data);
        $this->load->view('templates/footer');
    }

    public function pengajuan4()
    {
        $data['user'] = $this->db->get_where('user', ['username' => $this->session->userdata('username')])->row_array();
        $this->load->model('Barang_model', 'barang_model');
        $data['nama_brg'] = $this->db->get('barang')->result_array();
        $this->load->model('Temp_model', 'temp_model');
        $data['nama_brg'] = $this->db->get('barang_temp')->result_array();
        $this->load->model('Barang_model', 'barang_model');
        $data['satuans'] = $this->barang_model->getSatuan();


        $data['barang'] = $this->barang_model->getBarang();
        $data['barang_temp'] = $this->temp_model->getBarangTemp4();
        $this->load->view('templates/header');
        $this->load->view('templates/divisi_sidebar');
        $this->load->view('divisi/pengajuan4', $data);
        $this->load->view('templates/footer');
    }

    public function add_temp()
    {
        $data['nama_brg'] = $this->db->get('barang_temp')->result_array();
        $data = [
            'nama_brg' => $this->input->post('nama_brg'),
            'jumlah' => $this->input->post('jumlah'),
            'satuan' => $this->input->post('satuan'),
            'harga' => $this->input->post('harga'),
            'total' => $this->input->post('total'),
            'minggu' => $this->input->post('minggu'),
            'divisi' => $this->input->post('divisi'),
            'deskripsi' => $this->input->post('deskripsi'),
            'barang_id' => $this->input->post('barang_id'),
            'user_id' => $this->input->post('user_id')
        ];
        $this->db->insert('barang_temp', $data);
        $this->session->set_flashdata('pesan', 'Success Added!');
        // $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data added!</div>');
        redirect('divisi/pengajuan');
    }

    public function add_temp2()
    {
        $data['nama_brg'] = $this->db->get('barang_temp')->result_array();
        $data = [
            'nama_brg' => $this->input->post('nama_brg'),
            'jumlah' => $this->input->post('jumlah'),
            'satuan' => $this->input->post('satuan'),
            'harga' => $this->input->post('harga'),
            'total' => $this->input->post('total'),
            'minggu' => $this->input->post('minggu'),
            'divisi' => $this->input->post('divisi'),
            'deskripsi' => $this->input->post('deskripsi'),
            'barang_id' => $this->input->post('barang_id'),
            'user_id' => $this->input->post('user_id')
        ];
        $this->db->insert('barang_temp', $data);
        $this->session->set_flashdata('pesan', 'Success Added!');
        // $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data added!</div>');
        redirect('divisi/pengajuan2');
    }

    public function add_temp3()
    {
        $data['nama_brg'] = $this->db->get('barang_temp')->result_array();
        $data = [
            'nama_brg' => $this->input->post('nama_brg'),
            'jumlah' => $this->input->post('jumlah'),
            'satuan' => $this->input->post('satuan'),
            'harga' => $this->input->post('harga'),
            'total' => $this->input->post('total'),
            'minggu' => $this->input->post('minggu'),
            'divisi' => $this->input->post('divisi'),
            'deskripsi' => $this->input->post('deskripsi'),
            'barang_id' => $this->input->post('barang_id'),
            'user_id' => $this->input->post('user_id')
        ];
        $this->db->insert('barang_temp', $data);
        $this->session->set_flashdata('pesan', 'Success Added!');
        // $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data added!</div>');
        redirect('divisi/pengajuan3');
    }
    public function add_temp4()
    {
        $data['nama_brg'] = $this->db->get('barang_temp')->result_array();
        $data = [
            'nama_brg' => $this->input->post('nama_brg'),
            'jumlah' => $this->input->post('jumlah'),
            'satuan' => $this->input->post('satuan'),
            'harga' => $this->input->post('harga'),
            'total' => $this->input->post('total'),
            'minggu' => $this->input->post('minggu'),
            'divisi' => $this->input->post('divisi'),
            'deskripsi' => $this->input->post('deskripsi'),
            'barang_id' => $this->input->post('barang_id'),
            'user_id' => $this->input->post('user_id')
        ];
        $this->db->insert('barang_temp', $data);
        $this->session->set_flashdata('pesan', 'Success Added!');
        // $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data added!</div>');
        redirect('divisi/pengajuan4');
    }

    public function rekap_detail($waktu, $minggu)
    {
        $this->load->model('Divpengajuan_model', 'divpengajuan_model');
        $data['waktu'] = $this->divpengajuan_model->getDetail($waktu, $minggu);
        $data['divpengajuan'] = $this->divpengajuan_model->getRekapDetail($waktu, $minggu);

        $this->load->view('templates/header');
        $this->load->view('templates/divisi_sidebar');
        $this->load->view('divisi/rekap_detail', $data);
        $this->load->view('templates/footer');
    }

    public function rekap()
    {
        $this->load->model('Divpengajuan_model', 'divpengajuan_model');
        $data['nama_brg'] = $this->db->get('pengajuan')->result_array();
        $this->load->model('User_model', 'user_model');

        $data['user'] = $this->user_model->getDataUser();
        // $data['dpengajuan'] = $this->dpengajuan_model->getPengajuanTemp();
        $data['pengajuandiv'] = $this->divpengajuan_model->getRekap();
        $this->load->view('templates/header');
        $this->load->view('templates/divisi_sidebar');
        $this->load->view('divisi/rekap', $data);
        $this->load->view('templates/footer');
    }

    public function divpengajuan()
    {
        $this->load->model('Divpengajuan_model', 'divpengajuan_model');
        $data['nama_brg'] = $this->db->get('pengajuan')->result_array();
        $data['divpengajuan'] = $this->divpengajuan_model->getDivpengajuanTemp();
        $this->load->view('templates/header');
        $this->load->view('templates/divisi_sidebar');
        $this->load->view('divisi/data_pengajuan', $data);
        $this->load->view('templates/footer');
    }

    public function divisi_diterima($id)
    {
        date_default_timezone_set('Asia/Jakarta'); # add your city to set local time zone


        $sql = "UPDATE pengajuan SET validasi='diterima' WHERE id=$id";
        $this->db->query($sql);
        $this->session->set_flashdata('pesan', 'Validation Success!');
        // $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">  Data Telah Disetujui<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
        redirect('divisi/divpengajuan');
    }

    public function ruangan()
    {
        $this->load->model('Divisi_model', 'divisi_model');
        $data['ruangans'] = $this->divisi_model->getRuangan();
        $this->load->view('templates/header');
        $this->load->view('templates/divisi_sidebar');
        $this->load->view('divisi/ruangan', $data);
        $this->load->view('templates/footer');
    }

    // PEMINJAMAN
    public function pinjaman($id_ruangan)
    {
        $this->load->model('Ruangan_model', 'ruangan_model');
        $data['ruangans'] = $this->ruangan_model->getIdRuangan($id_ruangan);
        $data['id_ruangan'] = $id_ruangan;
        $this->load->view('templates/header');
        $this->load->view('templates/divisi_sidebar');
        $this->load->view('divisi/add_peminjaman', $data);
        $this->load->view('templates/footer');
    }
    // validasi tanggal
    public function ajaxverifyreqdate()
    {
        date_default_timezone_set('Asia/Jakarta');
        $tanggal = $this->input->post('tanggal');
        $jam_mulai = $this->input->post('jam_mulai');
        $jam_selesai = $this->input->post('jam_selesai');

        $nowtime = new DateTime(date('H:i'));
        $nowtime = $nowtime->format('H:i');

        $nowdate = new DateTime(date('Y-m-d'));
        $nowdate = $nowdate->format('Y-m-d');

        $timeinput = strtotime($tanggal) + strtotime($jam_mulai);
        $timenow = strtotime($nowdate) + strtotime($nowtime);

        $limitdate = new DateTime(date('Y-m-d'));
        $limitdate->modify('+4 day');
        $limitdate = $limitdate->format('Y-m-d');

        if ($jam_mulai > $jam_selesai) {
            echo "jam selesai tidak sesuai";
        } elseif ($timeinput < $timenow) {
            echo "Waktu tidak valid";
        }
    }

    // cek jam 
    public function cekjam()
    {
        $this->load->model('Divisi_model', 'divisi_model');
        $rg  = $this->input->post('id_ruangan');
        $tgl = $this->input->post('tgl');

        $djam = $this->db->query("select * from jam");
        foreach ($djam->result_array() as $dt) {
            $jam = $this->divisi_model->GetJamPeminjaman($rg, $tgl, $dt['jam']);
            if ($jam == 1) {
?>
<option style='color:red;' value='' disabled><?= $dt['jam']; ?></option>
<?php
            } else {
            ?>
<option value='<?= $dt['jam']; ?>'><?= $dt['jam']; ?></option>
<?php
            }
        }
    }

    // PINJAM
    public function pinjam()
    {
        $this->load->model('Divisi_model', 'divisi_model');
        $id_user         = $this->input->post('id_user');
        $id_ruangan     = $this->input->post('id_ruangan');
        $jam_mulai         = $this->input->post('jam_mulai');
        $jam_berakhir     = $this->input->post('jam_berakhir');
        $tanggal         = $this->input->post('tanggal');
        $contact_person = $this->input->post('contact_person');
        $acara = $this->input->post('acara');
        $keterangan     = $this->input->post('keterangan');
        $kode_peminjaman = kode_peminjaman();
        $photo = $_FILES['file']['name'];
        $config['upload_path']       = './assets/file/';
        $config['allowed_types']     = '*';
        $config['file_name']         = $photo;

        $this->load->library('upload', $config);
        $this->upload->initialize($config);
        if ($this->upload->do_upload('file')) {
            $photo = $this->upload->data('file_name');
        }


        $array = [
            'id_peminjaman'     => null,
            'id_user'             => $id_user,
            'id_ruangan'         => $id_ruangan,
            'jam_mulai'         => $jam_mulai,
            'jam_berakhir'         => $jam_berakhir,
            'tanggal'             => $tanggal,
            'contact_person'     => $contact_person,
            'acara'             => $acara,
            'keterangan'         => $keterangan,
            'kode_peminjaman' => $kode_peminjaman,
            'status_peminjaman' => 0,
            'jumlah_peserta'     => $this->input->post('jumlah_peserta'),
            'file'                 => $photo
        ];

        $this->divisi_model->add_data('peminjaman', $array);

        $js    =  substr($jam_berakhir, 0, 2) - 1;
        $js    = $js . ':00:00';
        $tm    = $tanggal . ' ' . $jam_mulai;
        $tb    = $tanggal . ' ' . $js;
        $start = strtotime($tm);
        $end   = strtotime($tb);
        for ($i = $start; $i <= $end; $i += 3600) {
            $tgl =  date("Y-m-d H:s:i", $i);
            $array = [
                'id_user'      => $id_user,
                'id_ruangan' => $id_ruangan,
                'kode_peminjaman' => $kode_peminjaman,
                'date'          => $tgl,
                'status'      => 1
            ];
            $this->divisi_model->add_data('peminjaman_d', $array);
        }



        $this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			<h5><i class="icon fas fa-check"></i> Pemesanan berhasil!</h5>
			<span>Harap tunggu konfirmasi admin untuk menerima jadwal</span></div>');

        redirect('divisi/ruangan');
    }

    //Peminjaman
    public function peminjaman()
    {
        $this->load->model('Ruangan_model', 'ruangan_model');
        $data['ruangans'] = $this->ruangan_model->getRuangan();
        $this->load->view('templates/header');
        $this->load->view('templates/divisi_sidebar');
        $this->load->view('divisi/peminjaman', $data);
        $this->load->view('templates/footer');
    }

    //Batal saat proses
    public function batalPinjam($kode_peminjaman)
    {
        $this->load->model('Ruangan_model', 'ruangan_model');
        $this->ruangan_model->batal_pinjam($kode_peminjaman);
        $this->db->where('kode_peminjaman', $kode_peminjaman);
        $this->db->delete('peminjaman_d');
        $this->session->set_flashdata('pesan', 'Data Dibatalkan!');
        // $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data Deleted!</div>');
        Redirect('divisi/peminjaman');
    }

    //Batal saat sudah dijadwalkan
    public function batalJadwal($kode_peminjaman, $id_jadwal)
    {
        $this->load->model('Ruangan_model', 'ruangan_model');
        $this->ruangan_model->batal_pinjam($kode_peminjaman);
        $this->ruangan_model->batal_jadwal($id_jadwal);
        $this->db->where('kode_peminjaman', $kode_peminjaman);
        $this->db->delete('peminjaman_d');
        $this->session->set_flashdata('pesan', 'Data Dibatalkan!');
        // $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data Deleted!</div>');
        Redirect('divisi/jadwal');
    }

    //Tidak Dapat Batal
    public function tidakBatal()
    {
        $this->session->set_flashdata('alert', 'Pinjaman sedang berlangsung!');
        // $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Data Deleted!</div>');
        Redirect('divisi/jadwal');
    }

    //Jadwal
    public function jadwal()
    {
        $this->load->model('Ruangan_model', 'ruangan_model');
        $data['jadwal'] = $this->ruangan_model->getJadwal();

        $this->load->view('templates/header');
        $this->load->view('templates/divisi_sidebar');
        $this->load->view('divisi/jadwal', $data);
        $this->load->view('templates/footer');
    }
}