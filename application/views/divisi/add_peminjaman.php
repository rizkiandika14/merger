<section class="content">
    <div class="container-fluid">
        <div class="block-header">


        </div>


        <!-- #END# Basic Examples -->
        <!-- Exportable Table -->
        <?= $this->session->flashdata('message'); ?>
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="header">
                    <h2>
                        Pinjam Ruangan </h2>
                </div>

                <form action="<?= base_url('divisi/pinjam') ?>" method="post" enctype="multipart/form-data">


                    <div class="body">

                        <input type="hidden" id="pinjam_id_user" class='pinjam_id_user' name="id_user"
                            value="<?= $this->session->userdata('id'); ?>">
                        <input type="hidden" name="id_ruangan" id="id_ruangan" class="id_ruangan"
                            value="<?= $id_ruangan ?>">
                        <?php
                        $user = $this->db->query("SELECT nama_ruangan as nama FROM tbl_ruangan Where id_ruangan = '$id_ruangan'");

                        foreach ($user->result() as $users) {
                        ?>

                        <label for="nama"><b>Ruangan :</b></label>
                        <div class="form-group">
                            <div class="form-line">
                                <input type="text" id="nama_ruangan" name="nama_ruangan" class="form-control"
                                    value="<?= $users->nama ?>" disabled>
                            </div>
                        </div>

                        <?php } ?>

                        <label for="nama"><b>Tanggal :</b></label>
                        <div class="form-group">
                            <div class="form-line">
                                <input type="date" id="tanggal" name="tanggal" class="form-control verifydate tgl">
                                <span id="alerttanggal" class="text-danger" style=""></span>
                            </div>
                        </div>


                        <div class="form-group">
                            <label>Jam Mulai</label>
                            <div class="form-group">
                                <div class="form-line">
                                    <select id="pinjam_jam_mulai" name="jam_mulai"
                                        class="form-control verifydate jm jam" name='jm'>
                                        <option value=''>-pilih-</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Jam Selesai</label>
                            <div class="form-group">
                                <div class="form-line">
                                    <select id="pinjam_jam_selesai" name="jam_berakhir"
                                        class="form-control verifydate js jam" name='js'>
                                        <option value=''>-pilih-</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Contact Person</label>
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="text" name="contact_person" id="contact_person" class="form-control"
                                        required>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Acara</label>
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="text" name="acara" id="acara" class="form-control" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Keterangan</label>
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="text" name="keterangan" id="keterangan" class="form-control" required>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Jumlah Peserta</label>
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="number" name="jumlah_peserta" id="jumlah_peserta" class="form-control"
                                        required>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>File</label>
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="file" name="file" id="file" required>
                                </div>
                            </div>
                        </div>

                        <div class="footer js-sweetalert">
                            <button type="submit" id="tombol-tambah" class="btn btn-primary waves-effect pinjam">SAVE
                                CHANGES</button>

                        </div>

                    </div>

                </form>
            </div>
        </div>

    </div>

</section>