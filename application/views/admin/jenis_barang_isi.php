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
                        <?php
                        $user = $this->db->query("SELECT jenis_barang as nama FROM jenis_barang Where id_jenis_barang = '$id_jenis_barang'");

                        foreach ($user->result() as $users) {
                        ?>
                        <h2>
                            Data Jenis Barang <b><?= $users->nama ?></b>
                        </h2>

                        <?php } ?>

                    </div>
                    <div class="body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover dataTable js-exportable-5"
                                id="example">
                                <thead>
                                    <tr>
                                        <th>Kode Barang</th>
                                        <th>Nama Barang</th>
                                        <th>Jumlah</th>
                                        <th>Satuan</th>
                                        <th>Kondisi</th>
                                        <th class="hide">id</th>

                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th class="hide"></th>

                                    </tr>
                                </tfoot>

                                <tbody>

                                    <?php

                                    foreach ($id_jenis as $bgn) : ?>
                                    <tr>
                                        <td><?= $bgn['kode_barang'] ?></td>
                                        <td><?= $bgn['nama_barang']; ?></td>
                                        <td><?= $bgn['jumlah_barang']; ?></td>
                                        <td><?= $bgn['satuan_barang']; ?></td>
                                        <td><?= $bgn['keadaan_barang']; ?></td>
                                        <td class="hide"><?= $bgn['id_barang']; ?></td>

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