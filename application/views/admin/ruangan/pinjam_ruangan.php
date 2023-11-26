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
                            Data Pinjam Ruangan <?= kode_peminjaman(); ?>
                        </h2>
                    </div>
                    <div class="body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover dataTable js-basic-example"
                                id="example">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama</th>
                                        <th>Divisi</th>
                                        <th>Ruangan</th>
                                        <th>Tanggal</th>
                                        <th nowrap>Jam Mulai</th>
                                        <th nowrap>Jam Berakhir</th>
                                        <th nowrap>Contact Person</th>
                                        <th>Acara</th>
                                        <th>Keterangan</th>
                                        <th nowrap>Jumlah Peserta</th>
                                        <th>File</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php
                                    $no = 1;
                                    foreach ($ruangans as $rgn) : ?>
                                    <tr>
                                        <td><?= $no++ ?></td>
                                        <td><?= $rgn['nama']; ?></td>
                                        <td><?= $rgn['divisi']; ?></td>
                                        <td><?= $rgn['nama_ruangan']; ?></td>
                                        <td nowrap align='center'><?php $date = date_create($rgn['tanggal']);
                                                                        echo date_format($date, 'd/m/Y'); ?></td>
                                        <td nowrap align='center'><?php echo substr($rgn['jam_mulai'], 0, 5); ?></td>
                                        <td nowrap align='center'><?php echo substr($rgn['jam_berakhir'], 0, 5); ?></td>
                                        <td nowrap><?= $rgn['contact_person']; ?></td>
                                        <td nowrap><?= $rgn['acara']; ?></td>
                                        <td nowrap><?= $rgn['keterangan_peminjaman']; ?></td>
                                        <td align='center'><?= $rgn['jumlah_peserta']; ?></td>
                                        <td><a href="<?= base_url('admin_ruangan/file_request/' . $rgn['file']); ?>"
                                                class="badge bg-cyan" target="_blank">unduh</a>
                                        </td>
                                        <td>
                                            <a href="<?php echo base_url('admin_ruangan/accrequest/' . $rgn['id_peminjaman']) ?>"
                                                onclick="return confirm('Terima Request?')"
                                                class="badge bg-green">Terima Request</a>
                                            <a href="<?php echo base_url('admin_ruangan/disaccrequest/' . $rgn['id_peminjaman']) ?>"
                                                onclick="return confirm('Tolak Request?')" class="badge bg-red">Tolak
                                                Request</a>
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
</section>