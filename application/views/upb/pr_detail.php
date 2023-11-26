<section class="content">
    <div class="container-fluid">
        <div class="block-header">
        <div class="login" data-login="<?= $this->session->flashdata('pesan') ?>">
            <?php if ($this->session->flashdata('pesan')) { ?>

            <?php } ?>
            <?= $this->session->flashdata('message'); ?>

        </div>
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            Data Purchase Requisition
                        </h2><br>
                        <h5>Minggu Ke - <?= $minggu ?></h5>
                        <?php
                        $user = $this->db->query("SELECT divisi as user FROM user Where id = '$user_id'");
                        foreach ($user->result() as $users) {
                        ?>
                        <h5>Divisi : <?= $users->user ?></h5>
                        <?php } ?>
                        <h5>Tanggal : <?php echo tanggal_indo($tanggal) ?></h5>



                        <form
                            action="<?= base_url('export/cetak_purchase_requisition'); ?>/<?= $tanggal ?>/<?= $user_id ?>/<?= $minggu ?> ?>"
                            method="post" enctype="multipart/form-data">
                            <h5>No Surat PR : <?= kodeSurat(); ?></h5>
                            <input type="hidden" id="no_surat" name="no_surat" value="<?= kodeSurat(); ?>"
                                class="form-control" readonly>
                            <div>
                                <button class='btn btn-primary waves-effect m-r-20' type="submit">
                                    <span class="glyphicon glyphicon-print" aria-hidden="true"></span>
                                    Cetak
                                </button>
                            </div>
                        </form>

                    </div>
                    <div class="body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover dataTable js-basic-example"
                                id="example">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama Barang</th>
                                        <th>Jumlah</th>
                                        <th>Realisasi</th>
                                        <th>Satuan</th>
                                        <th>Harga</th>
                                        <th>Total</th>
                                        <th>Status</th>
                                        <th>Deskripsi</th>
                                        <th>Aksi</th>
                                    </tr>

                                </thead>


                                <tbody>

                                    <?php
                                    $no = 1;
                                    foreach ($dpengajuanpr as $dpr) : ?>
                                    <tr>
                                        <td><?php echo $no++ ?></td>
                                        <td><?= $dpr['nama_brg']; ?></td>
                                        <td><?= $dpr['jumlah']; ?></td>
                                        <td><?= $dpr['realisasi']; ?></td>
                                        <td><?= $dpr['satuan']; ?></td>
                                        <td>Rp. <?= number_format($dpr['harga']);  ?></td>
                                        <td>Rp. <?= number_format($dpr['total']); ?></td>
                                        <td><?= $dpr['status']; ?></td>
                                        <td><?= $dpr['deskripsi']; ?></td>





                                        <td>

                                            <!-- <a class="btn btn-sm btn-info"
                                                href="<?= base_url() ?>Upb/diproses/<?= $dpr['id']; ?>"><span
                                                    class="fa fa-trash"></span>
                                                Proses</a> -->

                                            <!-- <?php $this->session->set_userdata('referred_from', current_url()); ?>
                                            <div class="btn btn-sm btn-warning">
                                                <div class="demo-google-material-icon" data-toggle="modal"
                                                    data-target="#editvModal<?= $dpr['id']; ?>"> <i
                                                        class="material-icons"></i> <span class="icon-name">Edit</span>
                                                </div>
                                            </div> -->


                                            <?php $this->session->set_userdata('referred_from', current_url()); ?>
                                            <div class="btn btn-sm btn-success">
                                                <div class="demo-google-material-icon" data-toggle="modal"
                                                    data-target="#editModal<?= $dpr['id']; ?>"> <i
                                                        class="material-icons"></i> <span
                                                        class="icon-name">Setujui</span>
                                                </div>
                                            </div>

                                            <?php $this->session->set_userdata('referred_from', current_url()); ?>
                                            <div class="btn btn-sm btn-danger">
                                                <div class="demo-google-material-icon" data-toggle="modal"
                                                    data-target="#tolakModal<?= $dpr['id']; ?>"> <i
                                                        class="material-icons"></i> <span class="icon-name">Tolak</span>
                                                </div>
                                            </div>



                                            <!-- <a class="btn btn-sm btn-danger"
                                                href="<?= base_url() ?>Upb/ditolak/<?= $dpr['id']; ?>"><span
                                                    class="fa fa-trash"></span>
                                                Tolak</a> -->


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
    <!-- MODAL  edit -->
    <?php
    $no = 0;
    foreach ($dpengajuanpr as $brg) : $no++; ?>
    <div class="modal fade" id="editModal<?= $brg['id']; ?>" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="defaultModalLabel">SETUJUI PENGAJUAN</h4>
                </div>
                <div class="modal-body">
                    <?= form_open_multipart('upb/setuju') ?>
                    <input type="hidden" name="id" value="<?= $brg['id']; ?>">
                    <div class="body">
                        <form class="form-horizontal">
                            <div class="row clearfix">
                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                    <label for="nama">Nama Barang</label>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">

                                            <input type="text" id="nama_brg" name="nama_brg" class="form-control"
                                                value="<?= $brg['nama_brg']; ?>" readonly>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                    <label for="asal_barang">Vendor</label>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input type="text" data-toggle="modal" data-target="#defaultModal"
                                                name="nama_vendor" id="nama_vendor" placeholder=""
                                                class="form-control ui-autocomplete-input" value="" autocomplete="off"
                                                readonly required>
                                        </div>

                                    </div>
                                </div>
                                <input type="hidden" id="id_vendor" name="id_vendor">

                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                    <label for="nama">Jumlah</label>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">

                                            <input type="number" id="jumlah" name="jumlah" class="form-control"
                                                onkeyup="hitung();" value="<?= $brg['jumlah']; ?>" readonly>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                    <label for="nama">Realisasi</label>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">

                                            <input type="number" id="realisasi" name="realisasi" class="form-control"
                                                value="<?= $brg['jumlah']; ?>">
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                    <label for="nama">Satuan</label>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">

                                            <input type="text" id="satuan" name="satuan" class="form-control"
                                                value="<?= $brg['satuan']; ?>" readonly>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                    <label for="nama">Harga</label>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">

                                            <input type="number" id="harga" name="harga" class="form-control"
                                                onkeyup="hitung();" value="<?= $brg['harga']; ?>">
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                    <label for="nama">Total</label>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">

                                            <input type="text" id="total" name="total" class="form-control"
                                                onkeyup="hitung();" value="<?= $brg['total']; ?>" readonly>
                                        </div>
                                    </div>
                                </div>


                            </div>


                            <div class="modal-footer">
                                <button   data-type="success" type="submit" class="btn btn-link waves-effect">SETUJUI</button>
                                <button type="button" class="btn btn-link waves-effect"
                                    data-dismiss="modal">CLOSE</button>
                                <?php echo form_close() ?>

                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php endforeach ?>



    <!-- MODAL  Tolak -->
    <?php
    $no = 0;
    foreach ($dpengajuanpr as $brg) : $no++; ?>
    <div class="modal fade" id="tolakModal<?= $brg['id']; ?>" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="defaultModalLabel">TOLAK PENGAJUAN</h4>
                </div>
                <div class="modal-body">
                    <?= form_open_multipart('upb/tolak') ?>
                    <input type="hidden" name="id" value="<?= $brg['id']; ?>">
                    <div class="body">
                        <form class="form-horizontal">
                            <div class="row clearfix">
                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                    <label for="nama">Nama Barang</label>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">

                                            <input type="text" id="nama_brg" name="nama_brg" class="form-control"
                                                value="<?= $brg['nama_brg']; ?>" readonly>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                    <label for="nama">Jumlah</label>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">

                                            <input type="number" id="jumlah" name="jumlah" class="form-control"
                                                onkeyup="hitung();" value="<?= $brg['jumlah']; ?>" readonly>
                                        </div>
                                    </div>
                                </div>

                                <!--<div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">-->
                                <!--    <label for="nama">Realisasi</label>-->
                                <!--</div>-->
                                <!--<div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">-->
                                <!--    <div class="form-group">-->
                                <!--        <div class="form-line">-->

                                <!--            <input type="number" id="realisasi" name="realisasi" class="form-control"-->
                                <!--                value="<?= $brg['jumlah']; ?>">-->
                                <!--        </div>-->
                                <!--    </div>-->
                                <!--</div>-->

                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                    <label for="nama">Satuan</label>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">

                                            <input type="text" id="satuan" name="satuan" class="form-control"
                                                value="<?= $brg['satuan']; ?>" readonly>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                    <label for="nama">Harga</label>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">

                                            <input type="number" id="harga" name="harga" class="form-control"
                                                onkeyup="hitung();" value="<?= $brg['harga']; ?>">
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                    <label for="nama">Total</label>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">

                                            <input type="text" id="total" name="total" class="form-control"
                                                onkeyup="hitung();" value="<?= $brg['total']; ?>" readonly>
                                        </div>
                                    </div>
                                </div>


                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                    <label for="nama">Alasan ditolak</label>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">

                                            <input type="text" id="keterangan" name="keterangan" class="form-control">
                                        </div>
                                    </div>
                                </div>


                            </div>


                            <div class="modal-footer">
                                <button  data-type="success" type="submit" class="btn btn-link waves-effect">TOLAK</button>
                                <button type="button" class="btn btn-link waves-effect"
                                    data-dismiss="modal">CLOSE</button>
                                <?php echo form_close() ?>

                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php endforeach ?>

    <!-- add vendor -->
    <?php
    $no = 0;
    foreach ($dpengajuanpr as $brg) : $no++; ?>
    <div class="modal fade" id="editvModal<?= $brg['id']; ?>" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="defaultModalLabel">EDIT PENGAJUAN</h4>
                </div>
                <div class="modal-body">
                    <?= form_open_multipart('upb/editvendor') ?>
                    <input type="hidden" name="id" value="<?= $brg['id']; ?>">
                    <div class="body">
                        <form class="form-horizontal">
                            <div class="row clearfix">
                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                    <label for="nama">Nama Barang</label>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">

                                            <input type="text" id="nama_brg" name="nama_brg" class="form-control"
                                                value="<?= $brg['nama_brg']; ?>" readonly>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                    <label for="nama">Vendor</label>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">

                                            <input type="text" id="vendor" name="vendor" class="form-control"
                                                value="<?= $brg['vendor']; ?>">
                                        </div>
                                    </div>
                                </div>



                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                    <label for="nama">Jumlah</label>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">

                                            <input type="number" id="jumlah" name="jumlah" class="form-control"
                                                onkeyup="hitung();" value="<?= $brg['jumlah']; ?>" readonly>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                    <label for="nama">Realisasi</label>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">

                                            <input type="number" id="realisasi" name="realisasi" class="form-control"
                                                value="<?= $brg['jumlah']; ?>">
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                    <label for="nama">Satuan</label>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">

                                            <input type="text" id="satuan" name="satuan" class="form-control"
                                                value="<?= $brg['satuan']; ?>" readonly>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                    <label for="nama">Harga</label>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">

                                            <input type="number" id="harga" name="harga" class="form-control"
                                                onkeyup="hitung();" value="<?= $brg['harga']; ?>" readonly>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                                    <label for="nama">Total</label>
                                </div>
                                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                                    <div class="form-group">
                                        <div class="form-line">

                                            <input type="text" id="total" name="total" class="form-control"
                                                onkeyup="hitung();" value="<?= $brg['total']; ?>" readonly>
                                        </div>
                                    </div>
                                </div>


                            </div>


                            <div class="modal-footer">
                                <button type="submit" class="btn btn-link waves-effect">EDIT</button>
                                <button type="button" class="btn btn-link waves-effect"
                                    data-dismiss="modal">CLOSE</button>
                                <?php echo form_close() ?>

                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php endforeach ?>

    <!-- NAMA VENDOR -->
    <div class="modal fade" id="defaultModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="defaultModalLabel">Cari Nama Vendor</h4>
                </div>
                <div class="modal-body">
                    <table class="table table-bordered table-striped table-hover dataTable js-basic-example"
                        width="100%">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Vendor</th>
                                <th class="hide">ID</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1; ?>
                            <?php foreach ($vendor  as $ab) : ?>

                            <tr>
                                <td><?= $no++ ?></td>
                                <td><?= $ab['nama_vendor']; ?></td>
                                <td class="hide"><?= $ab['id_vendor']; ?></td>
                                <td style="text-align:center;">
                                    <button class="btn btn-sm btn-info" id="pilih4"
                                        data-keterangan="<?= $ab['nama_vendor']; ?>" data-id="<?= $ab['id_vendor']; ?>">
                                        Pilih</button>
                                </td>
                            </tr>
                            <?php $i++; ?>

                            <?php endforeach; ?>
                        </tbody>
                    </table>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-link waves-effect" data-dismiss="modal">CLOSE</button>
                        <?php echo form_close() ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Nomor surat -->
    <div class="modal fade" id="defaultnoModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="defaultnoModalLabel">Cari Nomor surat</h4>
                </div>
                <div class="modal-body">
                    <table class="table table-bordered table-striped table-hover dataTable js-basic-example"
                        width="100%">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nomor Surat</th>
                                <th class="hide">ID</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i = 1; ?>
                            <?php foreach ($nosurat  as $ab) : ?>

                            <tr>
                                <td><?= $no++ ?></td>
                                <td><?= $ab['kode_surat']; ?></td>
                                <td class="hide"><?= $ab['id_surat']; ?></td>
                                <td style="text-align:center;">
                                    <button class="btn btn-sm btn-info" id="pilih5"
                                        data-keterangan="<?= $ab['kode_surat']; ?>" data-id="<?= $ab['id_surat']; ?>">
                                        Pilih</button>
                                </td>
                            </tr>
                            <?php $i++; ?>

                            <?php endforeach; ?>
                        </tbody>
                    </table>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-link waves-effect" data-dismiss="modal">CLOSE</button>
                        <?php echo form_close() ?>
                    </div>
                </div>
            </div>
        </div>
    </div>


</section>







<!-- Script -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- jQuery UI -->
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#nama_brg').autocomplete({
        source: function(request, response) {
            $.ajax({
                url: '<?= base_url() ?>admin/barangList',
                type: 'post',
                dataType: 'json',
                data: {
                    search: request.term
                },
                success: function(data) {
                    response(data);
                }
            });
        },
        select: function(event, ui) {
            $('#nama_brg').val(ui.item.label);
            $('#id').val(ui.item.value);

            return false;
        }
    });
});
</script>
<script>
$(document).ready(function() {
    $(document).on('click', '#pilih', function() {
        var nama_barang = $(this).data('barang');
        var id = $(this).data('id');
        $('#nama_brg').val(nama_barang);
        $('#barang_id').val(id);
        $('#defaultModal').modal('hide');
    })
});
</script>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $("#realisasi, #harga").keyup(function() {
        var harga = $("#harga").val();
        var jumlah = $("#realisasi").val();

        var total = parseInt(harga) * parseInt(jumlah);
        $("#total").val(total);
    });
});
</script>

<script>
function hitung() {

    var jumlah = Number(document.getElementById('jumlah').value);
    var harga = Number(document.getElementById('harga').value);
    var total = parseInt(jumlah) * parseInt(harga);
    if (!isNaN(result)) {

        document.getElementById('total').value = total;

    }

};
$(document).ready(function() {
    $(document).on('click', '#pilih4', function() {
        var nama_klas = $(this).data('keterangan');
        var id = $(this).data('id');
        $('#nama_vendor').val(nama_klas);
        $('#id_vendor').val(id);
        $('#defaultModal').modal('hide');
    })
});

$(document).ready(function() {
    $(document).on('click', '#pilih5', function() {
        var nama_klas = $(this).data('keterangan');
        var id = $(this).data('id');
        $('#kode_surat').val(nama_klas);
        $('#id_surat').val(id);
        $('#defaultnoModal').modal('hide');
    })
});
</script>