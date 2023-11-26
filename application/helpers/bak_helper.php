<?php


function is_logged_in()
{
    $ci = get_instance();
    if (!$ci->session->userdata('username')) {
        redirect('auth');
    } else {
        $role_id = $ci->session->userdata('role');
        $menu = $ci->uri->segment(1);

        $queryMenu = $ci->db->get_where('menu', ['nama_menu' => $menu])->row_array();
        $menu_id = $queryMenu['nama_menu'];

        $userAccess = $ci->db->get_where('menu', [
            'role_id' => $role_id,
            'nama_menu' => $menu_id
        ]);

        if ($userAccess->num_rows() < 1) {
            redirect('auth/blocked');
        }
    }
}

function check_ruangan($id_ruangan, $role)
{
    $ci = get_instance();
    $ci->db->where('id_ruangan', $id_ruangan);
    $ci->db->where('role', $role);
    $result = $ci->db->get('akses_ruangan');

    if ($result->num_rows() > 0) {
        return "checked='checked'";
    }
}

function total_asal_barang()
{
    $ci = get_instance();
    $query = "SELECT count(id_asal_barang) as total FROM asal_barang";
    $data = $ci->db->query($query)->row_array();
    $total = $data['total'];
    $kodeBaru = $total;
    return $kodeBaru;
}

function total_jenis_barang()
{
    $ci = get_instance();
    $query = "SELECT count(id_jenis_barang) as total FROM jenis_barang";
    $data = $ci->db->query($query)->row_array();
    $total = $data['total'];
    $kodeBaru = $total;
    return $kodeBaru;
}

function total_golongan()
{
    $ci = get_instance();
    $query = "SELECT count(id_golongan) as total FROM golongan";
    $data = $ci->db->query($query)->row_array();
    $total = $data['total'];
    $kodeBaru = $total;
    return $kodeBaru;
}

function total_klasifikasi()
{
    $ci = get_instance();
    $query = "SELECT count(id) as total FROM klasifikasi";
    $data = $ci->db->query($query)->row_array();
    $total = $data['total'];
    $kodeBaru = $total;
    return $kodeBaru;
}

function total_subklasifikasi()
{
    $ci = get_instance();
    $query = "SELECT count(id) as total FROM subklasifikasi";
    $data = $ci->db->query($query)->row_array();
    $total = $data['total'];
    $kodeBaru = $total;
    return $kodeBaru;
}

function total_lahan()
{
    $ci = get_instance();
    $query = "SELECT count(id_lahan) as total FROM tbl_lahan";
    $data = $ci->db->query($query)->row_array();
    $total = $data['total'];
    $kodeBaru = $total;
    return $kodeBaru;
}

function total_bangunan()
{
    $ci = get_instance();
    $query = "SELECT count(id_bangunan) as total FROM tbl_bangunan";
    $data = $ci->db->query($query)->row_array();
    $total = $data['total'];
    $kodeBaru = $total;
    return $kodeBaru;
}

function total_ruangan()
{
    $ci = get_instance();
    $query = "SELECT count(id_ruangan) as total FROM tbl_ruangan";
    $data = $ci->db->query($query)->row_array();
    $total = $data['total'];
    $kodeBaru = $total;
    return $kodeBaru;
}

function total_barang()
{
    $ci = get_instance();
    $query = "SELECT count(id_barang) as total FROM tbl_barang";
    $data = $ci->db->query($query)->row_array();
    $total = $data['total'];
    $kodeBaru = $total;
    return $kodeBaru;
}

function kodeAsalBarang()
{
    $ci = get_instance();
    $query = "SELECT max(kode_asal_barang) as maxKode FROM asal_barang";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 0);

    $noUrut++;

    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}

function kodeGolongan()
{
    $ci = get_instance();
    $query = "SELECT max(kode_gol) as maxKode FROM golongan";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 0);

    $noUrut++;
    $kodeBaru = sprintf('%01s', $noUrut);
    return $kodeBaru;
}

function kodeKlasifikasi()
{
    $ci = get_instance();
    $query = "SELECT max(kode_klas) as maxKode FROM klasifikasi where golongan_id = 1";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}

function kodeKlasifikasi2()
{
    $ci = get_instance();
    $query = "SELECT max(kode_klas) as maxKode FROM klasifikasi where golongan_id = 2";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeKlasifikasi3()
{
    $ci = get_instance();
    $query = "SELECT max(kode_klas) as maxKode FROM klasifikasi where golongan_id = 3";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeKlasifikasi4()
{
    $ci = get_instance();
    $query = "SELECT max(kode_klas) as maxKode FROM klasifikasi where golongan_id = 4";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeKlasifikasi5()
{
    $ci = get_instance();
    $query = "SELECT max(kode_klas) as maxKode FROM klasifikasi where golongan_id = 5";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeKlasifikasi6()
{
    $ci = get_instance();
    $query = "SELECT max(kode_klas) as maxKode FROM klasifikasi where golongan_id = 6";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeKlasifikasi7()
{
    $ci = get_instance();
    $query = "SELECT max(kode_klas) as maxKode FROM klasifikasi where golongan_id = 7";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeKlasifikasi8()
{
    $ci = get_instance();
    $query = "SELECT max(kode_klas) as maxKode FROM klasifikasi where golongan_id = 8";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeKlasifikasi9()
{
    $ci = get_instance();
    $query = "SELECT max(kode_klas) as maxKode FROM klasifikasi where golongan_id = 9";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}

//SUBKLASIFIKASI
function kodeSubKlasifikasi()
{
    $ci = get_instance();
    $query = "SELECT max(kode_subklasifikasi) as maxKode FROM subklasifikasi where id_klasifikasi = 1";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeSubKlasifikasi2()
{
    $ci = get_instance();
    $query = "SELECT max(kode_subklasifikasi) as maxKode FROM subklasifikasi where id_klasifikasi = 2";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeSubKlasifikasi3()
{
    $ci = get_instance();
    $query = "SELECT max(kode_subklasifikasi) as maxKode FROM subklasifikasi where id_klasifikasi = 3";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeSubKlasifikasi4()
{
    $ci = get_instance();
    $query = "SELECT max(kode_subklasifikasi) as maxKode FROM subklasifikasi where id_klasifikasi = 4";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeSubKlasifikasi5()
{
    $ci = get_instance();
    $query = "SELECT max(kode_subklasifikasi) as maxKode FROM subklasifikasi where id_klasifikasi = 5";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeSubKlasifikasi6()
{
    $ci = get_instance();
    $query = "SELECT max(kode_subklasifikasi) as maxKode FROM subklasifikasi where id_klasifikasi = 6";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeSubKlasifikasi7()
{
    $ci = get_instance();
    $query = "SELECT max(kode_subklasifikasi) as maxKode FROM subklasifikasi where id_klasifikasi = 7";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeSubKlasifikasi8()
{
    $ci = get_instance();
    $query = "SELECT max(kode_subklasifikasi) as maxKode FROM subklasifikasi where id_klasifikasi = 8";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeSubKlasifikasi9()
{
    $ci = get_instance();
    $query = "SELECT max(kode_subklasifikasi) as maxKode FROM subklasifikasi where id_klasifikasi = 9";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeSubKlasifikasi10()
{
    $ci = get_instance();
    $query = "SELECT max(kode_subklasifikasi) as maxKode FROM subklasifikasi where id_klasifikasi = 10";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeSubKlasifikasi11()
{
    $ci = get_instance();
    $query = "SELECT max(kode_subklasifikasi) as maxKode FROM subklasifikasi where id_klasifikasi = 11";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeSubKlasifikasi12()
{
    $ci = get_instance();
    $query = "SELECT max(kode_subklasifikasi) as maxKode FROM subklasifikasi where id_klasifikasi = 12";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeSubKlasifikasi13()
{
    $ci = get_instance();
    $query = "SELECT max(kode_subklasifikasi) as maxKode FROM subklasifikasi where id_klasifikasi = 13";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeSubKlasifikasi14()
{
    $ci = get_instance();
    $query = "SELECT max(kode_subklasifikasi) as maxKode FROM subklasifikasi where id_klasifikasi = 14";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeSubKlasifikasi15()
{
    $ci = get_instance();
    $query = "SELECT max(kode_subklasifikasi) as maxKode FROM subklasifikasi where id_klasifikasi = 15";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeSubKlasifikasi16()
{
    $ci = get_instance();
    $query = "SELECT max(kode_subklasifikasi) as maxKode FROM subklasifikasi where id_klasifikasi = 16";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeSubKlasifikasi17()
{
    $ci = get_instance();
    $query = "SELECT max(kode_subklasifikasi) as maxKode FROM subklasifikasi where id_klasifikasi = 17";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeSubKlasifikasi18()
{
    $ci = get_instance();
    $query = "SELECT max(kode_subklasifikasi) as maxKode FROM subklasifikasi where id_klasifikasi = 18";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeSubKlasifikasi19()
{
    $ci = get_instance();
    $query = "SELECT max(kode_subklasifikasi) as maxKode FROM subklasifikasi where id_klasifikasi = 19";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}
function kodeSubKlasifikasi20()
{
    $ci = get_instance();
    $query = "SELECT max(kode_subklasifikasi) as maxKode FROM subklasifikasi where id_klasifikasi = 20";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 1);

    $noUrut++;
    $kodeBaru = sprintf('%02s', $noUrut);
    return $kodeBaru;
}

//LAHAN
function kodeLahan()
{
    $ci = get_instance();
    $query = "SELECT max(kode_lahan) as maxKode FROM tbl_lahan";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 0);

    $noUrut++;
    $kodeBaru = sprintf('%01s', $noUrut);
    return $kodeBaru;
}

//Ruangan
function kodeRuangan()
{
    $ci = get_instance();
    $query = "SELECT max(kode_ruangan) as maxKode FROM tbl_ruangan where id_bangunan = 13";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 0, 3);

    $noUrut++;
    $kodeBaru = sprintf('%03s', $noUrut);
    return $kodeBaru;
}
function kodeRuangan2()
{
    $ci = get_instance();
    $query = "SELECT max(kode_ruangan) as maxKode FROM tbl_ruangan where id_bangunan = 14";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 0, 3);

    $noUrut++;
    $kodeBaru = sprintf('%03s', $noUrut);
    return $kodeBaru;
}

function kode_peminjaman()
{
    $ci = get_instance();
    $query = "SELECT max(kode_peminjaman) as maxKode FROM peminjaman";
    $data = $ci->db->query($query)->row_array();
    $kode = $data['maxKode'];
    $noUrut = (int) substr($kode, 0);

    $noUrut++;

    $kodeBaru = sprintf('%01s', $noUrut);
    return $kodeBaru;
}

function aturJadwal()
{
    $ci = get_instance();
    date_default_timezone_set('Asia/Jakarta'); # add your city to set local time zone
    $tanggal = date('Y-m-d');
    $times = date('h:i:s');
    $query = "UPDATE jadwal
    LEFT JOIN peminjaman ON peminjaman.id_peminjaman = jadwal.id_peminjaman
    SET status_jadwal = 3, status_peminjaman = 3
    WHERE tanggal <= '$tanggal' AND jam_berakhir < '$times' OR tanggal < '$tanggal'";
    $ci->db->query($query);
    // $data = array('status_peminjaman' => 3, 'status_jadwal' => 3);
    // $ci->db->where('tanggal', $tanggal);
    // $ci->db->where('jam_berakhir' >= $times);
    // $ci->db->update('peminjaman join jadwal on peminjaman.id_peminjaman = jadwal.id_peminjaman', $data);
}