<section class="content">
    <div class="container-fluid">
        <div class="block-header">
            <!-- <h2>ANIMATIONS</h2> -->
        </div>
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            Detail Nota
                            <!-- <small>Pure css animations - <a href="https://daneden.github.io/animate.css/"
                                    target="_blank">daneden.github.io/animate.css</a></small> -->
                        </h2>
                        <ul class="header-dropdown m-r--5">
                            <li class="dropdown">
                                <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"
                                    role="button" aria-haspopup="true" aria-expanded="false">
                                    <i class="material-icons">more_vert</i>
                                </a>
                                <ul class="dropdown-menu pull-right">
                                    <li><a href="javascript:void(0);">Action</a></li>
                                    <li><a href="javascript:void(0);">Another action</a></li>
                                    <li><a href="javascript:void(0);">Something else here</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="body">
                        <?php
                        foreach ($arsipgambar as $ag) : ?>
                        <!-- <img src="../../images/animation-bg.jpg" class="js-animating-object img-responsive"> -->
                        <label for="tanggal_perolehan">Tanggal</label>
                        <div class="form-group">
                            <div class="form-line">
                                <input type="text" id="tanggal" name="tanggal" class="form-control"
                                    value="<?= $ag['tanggal']; ?>" readonly>
                            </div>
                        </div>

                        <label for="tanggal_perolehan">Keterangan</label>
                        <div class="form-group">
                            <div class="form-line">
                                <input type="text" id="keterangan" name="keterangan" class="form-control"
                                    value="<?= $ag['keterangan']; ?>" readonly>
                            </div>
                        </div>

                        <label for="nama">Foto Barang</label>
                        <div class="form-group">
                            <div class="form-line">
                                <img src="<?= base_url('assets/img/arsip/arsipgambar/') . $ag['image']; ?>"
                                    class="img-thumbnail">
                            </div>
                        </div>
                        <!-- <div class="demo-image-copyright">
                            This image taken from <a href="https://unsplash.com" target="_blank">Unsplash</a>

                        </div> -->
                        <?php endforeach; ?>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>