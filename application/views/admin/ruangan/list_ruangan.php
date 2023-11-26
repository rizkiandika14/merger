<section class="content">
    <div class="container-fluid">
        <div class="block-header">
            <h2>

            </h2>
        </div>
        <!-- Basic Examples -->


        <?= $this->session->flashdata('message'); ?>
        <div class="alert alert-info">

            <i class="material-icons">info</i><strong>INFO</strong><b><br>Ceklis pada ruangan yang boleh
                dipinjamkan</b>


        </div>
        <!-- #END# Basic Examples -->
        <!-- Exportable Table -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            Data Ruangan yang bisa dipinjam
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
                                        <th>Kode Ruangan</th>
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
                                        <td><a
                                                href="<?= base_url() ?>admin/ruangan_isi/<?= $rgn['id_ruangan']; ?>"><?= $rgn['kode_bangunan']; ?>.<?= $rgn['kode_ruangan']; ?>'</a>
                                        </td>
                                        <td><?= $rgn['nama_ruangan']; ?></td>
                                        <td>
                                            <div class="from-check">
                                                <input type="checkbox" class="filled-in"
                                                    id="basic_checkbox_1<?= $rgn['id_ruangan'] ?>"
                                                    <?= check_ruangan($rgn['id_ruangan'], $role = 2); ?>
                                                    data-id="<?= $rgn['id_ruangan'] ?>" data-role="<?= $role ?>">
                                                <label for="basic_checkbox_1<?= $rgn['id_ruangan'] ?>"></label>
                                            </div>
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

</section>