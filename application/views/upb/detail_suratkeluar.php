<section class="content">
    <div class="container-fluid">
        <div class="block-header">

        </div>




        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            Detail Surat Keluar
                        </h2>

                    </div>
                    <div class="body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover dataTable js-basic-example"
                                id="example">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Tanggal</th>
                                        <th>No Surat</th>
                                        <th>Tujuan Pengiriman</th>
                                        <th>Perihal</th>
                                        <th>Isi</th>
                                        <th>File</th>
                                        <th>Aksi</th>
                                    </tr>

                                </thead>


                                <tbody>

                                    <?php
                                    $no = 1;
                                    foreach ($suratkeluar as $sk) : ?>
                                    <tr>
                                        <td><?php echo $no++ ?></td>
                                        <td><?= $sk['tanggal']; ?></td>
                                        <td><?= $sk['no_surat']; ?></td>
                                        <td><?= $sk['tujuan_pengiriman']; ?></td>
                                        <td><?= $sk['perihal']; ?></td>
                                        <td><?= $sk['isi']; ?></td>
                                        <td> <a
                                                href="<?= base_url('assets/surat/suratkeluar/' . $sk['file']); ?>"><?= $sk['file']; ?></a>
                                        </td>
                                        <td>
                                            <!-- <a class="btn btn-sm btn-info"
                                                href="<?= base_url() ?>Upb/pengajuanDetailPr/<?= $dpr['waktu_pengajuan']; ?>/<?= $dpr['divisi']; ?>/<?= $dpr['minggu']; ?>"><i
                                                    class="material-icons">visibility</i> <span
                                                    class="icon-name"></span>
                                                Detail</a> -->
                                            <!-- <a class="btn btn-sm btn-danger waves-effect " data-type="success"
                                                href="<?= base_url() ?>upb/fungsi_delete_sk/<?= $sk['id_suratkeluar']; ?>"><span
                                                    class="fa fa-trash tombol-hapus"></span>
                                                Hapus</a> -->

                                                <a class="btn btn-sm btn-danger waves-effect tombol-hapus"
                                            data-type="success"
                                                href="<?= base_url() ?>Upb/fungsi_delete_sk/<?= $sk['id_suratkeluar'] ?>"><i
                                                    class="material-icons">delete</i> <span
                                                    class="icon-name"></span></a>


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

<!-- MODAL ADD -->
<div class="modal fade" id="defaultModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="defaultModalLabel">Cari Barang</h4>
            </div>
            <table class="table table-bordered table-condensed" style="font-size:11px;" id="mydata">
                <thead>
                    <tr>
                        <th style="text-align:center;width:40px;">No</th>
                        <th style="width:120px;">Nama Barang</th>
                        <th class="hide" style="width:120px;">ID</th>
                        <th style="text-align:center;width:20px;">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $i = 1; ?>
                    <?php foreach ($barang as $b) : ?>

                    <tr>
                        <th style="text-align:center;" scope="row">
                            <?= $i; ?>
                        </th>
                        <td><?= $b['nama_brg']; ?></td>
                        <td class="hide"><?= $b['id']; ?></td>
                        <td style="text-align:center;">
                            <button class="btn btn-sm btn-info" id="pilih" data-barang="<?= $b['nama_brg']; ?>"
                                data-id="<?= $b['id']; ?>">
                                Pilih</button>
                        </td>
                    </tr>
                    <?php $i++; ?>
                    <tr>


                    </tr>
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
</div>


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
    $("#jumlah, #harga").keyup(function() {
        var harga = $("#harga").val();
        var jumlah = $("#jumlah").val();

        var total = parseInt(harga) * parseInt(jumlah);
        $("#total").val(total);
    });
});
</script>