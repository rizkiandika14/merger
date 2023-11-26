<section class="content">
    <div class="container-fluid">
        <div class="block-header">
            <h2>

            </h2>
        </div>
        <!-- Basic Examples -->


        <?= $this->session->flashdata('message'); ?>
        <!-- #END# Basic Examples -->
        <!-- Exportable Table -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            Data Ruangan
                        </h2>
                    </div>
                    <div class="body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover dataTable js-basic-example"
                                id="example">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama Bangunan</th>
                                        <th>Nama Ruangan</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php
                                    $no = 1;
                                    foreach ($ruangans as $rgn) : ?>
                                    <tr>
                                        <td><?= $no++ ?></td>
                                        <td><?= $rgn['nama_bangunan']; ?></td>
                                        <td><?= $rgn['nama_ruangan']; ?></td>
                                        <td>
                                            <a class="btn bg-light-blue waves-effect"
                                                href="<?= base_url() ?>divisi/pinjaman/<?= $rgn['id_ruangan']; ?>">
                                                Pinjam</a>
                                        </td>


                                    </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- #END# Exportable Table -->
    </div>
    <!-- Button trigger modal -->
    <!-- MODAL PINJAM-->
    <?php foreach ($ruangans as $rgn) : ?>
    <div class="modal fade" id="pinjamModal<?= $rgn['id_ruangan']; ?>" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="defaultModalLabel">Pinjam Ruangan</h4>
                </div>
                <form action="<?= base_url('divisi/pinjam') ?>" method="post" enctype="multipart/form-data">
                    <div class="modal-body">
                        <?php echo form_open_multipart() ?>
                        <div class="body">
                            <form class="form-horizontal">
                                <input type="hidden" id="pinjam_id_user" class='pinjam_id_user' name="id_user"
                                    value="<?= $this->session->userdata('id'); ?>">
                                <input type="text" name="id_ruangan" id="id_ruangan" class="id_ruangan"
                                    value="<?= $rgn['id_ruangan']; ?>">
                                <div class="row clearfix">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <label for="nama"><b>Ruangan :</b></label>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="text" id="nama_ruangan" name="nama_ruangan"
                                                    class="form-control" value="<?= $rgn['nama_ruangan']; ?>" disabled>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row clearfix">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                        <label for="nama"><b>Tanggal :</b></label>
                                        <div class="form-group">
                                            <div class="form-line">
                                                <input type="date" id="tanggal" name="tanggal"
                                                    class="form-control verifydate tgl">
                                                <span id="alerttanggal" class="text-danger" style=""></span>
                                            </div>
                                        </div>
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
                                            <input type="text" name="contact_person" id="contact_person"
                                                class="form-control" required>
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
                                            <input type="text" name="keterangan" id="keterangan" class="form-control"
                                                required>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label>Jumlah Peserta</label>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input type="number" name="jumlah_peserta" id="jumlah_peserta"
                                                class="form-control" required>
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


                                <div class="modal-footer js-sweetalert">
                                    <button type="submit" id="tombol-tambah"
                                        class="btn btn-primary waves-effect pinjam">SAVE
                                        CHANGES</button>
                                    <button type="button" class="btn btn-link waves-effect"
                                        data-dismiss="modal">CLOSE</button>
                                    <?php echo form_close() ?>
                                </div>
                            </form>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <?php endforeach; ?>
</section>