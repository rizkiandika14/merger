<section class="content">
    <div class="container-fluid">
        <div class="block-header">
            <h2>

            </h2>
        </div>
        <!-- Basic Examples -->

        <div class="login" data-login="<?= $this->session->flashdata('pesan') ?>">
            <?php if ($this->session->flashdata('pesan')) { ?>

            <?php } ?>
        </div>
        <div class="eror" data-eror="<?= $this->session->flashdata('alert') ?>">
            <?php if ($this->session->flashdata('alert')) { ?>

            <?php } ?>
        </div>
        <?= $this->session->flashdata('message'); ?>
        <!-- #END# Basic Examples -->
        <!-- Exportable Table -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            Data Peminjaman Ruangan
                        </h2>
                    </div>
                    <div class="body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover dataTable js-basic-example"
                                id="example">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Ruangan</th>
                                        <th>Divisi</th>
                                        <th>Tanggal</th>
                                        <th nowrap>Jam Mulai</th>
                                        <th nowrap>Jam Berakhir</th>
                                        <th nowrap>Contact Person</th>
                                        <th>Acara</th>
                                        <th>Keterangan</th>
                                        <th nowrap>Jumlah Peserta</th>
                                        <th>File</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php
                                    date_default_timezone_set('Asia/Jakarta'); # add your city to set local time zone
                                    $tanggal = date('Y-m-d');
                                    $times = date('h:i:s');
                                    $time = intval(substr($times, 0, 4));
                                    $str = intval(strtotime($times));
                                    $no = 1;
                                    foreach ($jadwal as $rgn) : ?>
                                    <tr>
                                        <td><?= $no++ ?></td>
                                        <td><?= $rgn['nama_ruangan']; ?></td>
                                        <td><?= $rgn['divisi']; ?></td>
                                        <td nowrap align='center'><?php $date = date_create($rgn['tanggal']);
                                                                        echo date_format($date, 'd/m/Y'); ?></td>
                                        <td nowrap align='center'><?php echo substr($rgn['jam_mulai'], 0, 5); ?></td>
                                        <td nowrap align='center'><?php echo substr($rgn['jam_berakhir'], 0, 5); ?></td>
                                        <td nowrap><?= $rgn['contact_person']; ?></td>
                                        <td nowrap><?= $rgn['acara']; ?></td>
                                        <td nowrap><?= $rgn['keterangan_peminjaman']; ?></td>
                                        <td align='center'><?= $rgn['jumlah_peserta']; ?></td>
                                        <td><a href="<?= base_url('divisi/file_request/' . $rgn['file']); ?>"
                                                class="badge bg-cyan" target="_blank">unduh</a>
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