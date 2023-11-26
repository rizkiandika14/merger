<section class="content">
    <div class="container-fluid">
        <div class="block-header">

        </div>


        <?= $this->session->flashdata('message'); ?>

        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            Arsip Dokumen UPB
                        </h2>

                        <button type="button" class="btn btn-primary waves-effect m-r-20" data-toggle="modal"
                            data-target="#defaultModal"> <i class="material-icons">add</i> <span
                                class="icon-name"></i>Add
                                Data</button>

                    </div>
                    <div class="body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover dataTable js-basic-example"
                                id="example">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Tanggal</th>
                                        <th>Keterangan</th>
                                        <th>File</th>
                                        <th>Aksi</th>
                                    </tr>

                                </thead>


                                <tbody>

                                    <?php
                                    $no = 1;
                                    foreach ($arsipdokumen as $ad) : ?>
                                    <tr>
                                        <td><?php echo $no++ ?></td>
                                        <td><?= $ad['tanggal']; ?></td>
                                        <td><?= $ad['keterangan']; ?></td>
                                        <td><a
                                                href="<?= base_url('assets/arsip/arsipdokumen/' . $ad['file']); ?>"><?= $ad['file']; ?></a>
                                        </td>
                                        </td>

                                        <td>
                                            <!-- <a class="btn btn-sm btn-info"
                                                href="<?= base_url() ?>Upb/detail_arsipgambar/<?= $ag['id_gambar'] ?>"><i
                                                    class="material-icons">visibility</i> <span
                                                    class="icon-name">Detail</span></a> -->

                                            <a class="btn btn-sm btn-danger"
                                                href="<?= base_url() ?>Upb/fungsi_delete_arsipdokumen/<?= $ad['id_dokumen'] ?>"><i
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
                <h4 class="modal-title" id="defaultModalLabel">Add Data</h4>
            </div>
            <div class="modal-body">

                <div class="body">
                    <?php echo form_open_multipart('upb/add_arsipdokumen') ?>
                    <form>

                        <div class="form-group form-float">
                            <div class="form-line">
                                <input type="date" id="tanggal" name="tanggal" class="form-control">
                                <label class="form-label"></label>
                            </div>
                        </div>

                        <div class="form-group form-float">
                            <div class="form-line">
                                <input type="text" id="no_surat" name="no_surat" class="form-control">
                                <label class="form-label">No Surat</label>
                            </div>
                        </div>

                        <div class="form-group form-float">
                            <div class="form-line">
                                <input type="text" id="keterangan" name="keterangan" class="form-control">
                                <label class="form-label">Keterangan</label>
                            </div>
                        </div>





                        <label for="nama">File</label>
                        <div class="form-group">
                            <label for="exampleInputFile"></label>
                            <div class="input-group">
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="file" name="file" required>
                                    <label for="file" class="custom-file-label">Choose
                                        file</label>
                                </div>
                            </div>
                        </div>


                </div>

                <div class="modal-footer js-sweetalert">
                    <button type="submit" id="tombol-tambah" class="btn btn-primary waves-effect"
                        data-type="success">SAVE
                        CHANGES</button>
                    <button type="button" class="btn btn-link waves-effect" data-dismiss="modal">CLOSE</button>
                    <?php echo form_close() ?>
                </div>
                </form>
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