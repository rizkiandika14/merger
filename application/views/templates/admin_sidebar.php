<body class="theme-purple">
    <!-- Page Loader -->
    <div class="page-loader-wrapper">
        <div class="loader">
            <div class="preloader">
                <div class="spinner-layer pl-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
            <p>Please wait...</p>
        </div>
    </div>
    <!-- #END# Page Loader -->
    <!-- Overlay For Sidebars -->
    <!-- <div class="overlay"></div> -->
    <!-- #END# Overlay For Sidebars -->
    <!-- Search Bar -->
    <!-- <div class="search-bar"> -->
    <!-- <div class="search-icon"> -->
    <!-- <i class="material-icons">search</i> -->
    <!-- </div> -->
    <!-- <input type="text" placeholder="START TYPING..."> -->
    <!-- <div class="close-search"> -->
    <!-- <i class="material-icons">close</i> -->
    <!-- </div> -->
    <!-- </div> -->
    <!-- #END# Search Bar -->
    <!-- Top Bar -->
    <nav class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="javascript:void(0);" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#navbar-collapse" aria-expanded="false"></a>
                <a href="javascript:void(0);" class="bars"></a>
                <a class="navbar-brand" href="<?php echo base_url('admin/dash') ?>">SIMA | Admin</a>

            </div>

        </div>
        </div>
    </nav>
    <!-- #Top Bar -->
    <section>
        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
            <!-- User Info -->
            <div class="user-info">
                <div class="image">
                    <img src="<?= base_url('assets/'); ?>images/user.png" width="48" height="48" alt="User" />
                </div>
                <div class="info-container">
                    <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <?= $this->session->userdata('username'); ?></div>
                    <div class="email"><?= $this->session->userdata('email'); ?></div>
                    <div class="btn-group user-helper-dropdown">
                        <i class="material-icons" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="true">keyboard_arrow_down</i>
                        <ul class="dropdown-menu pull-right">
                            <li
                                <?= $this->uri->segment(2) == 'profile' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                                <a href="<?= base_url() ?>user/profile/<?= $this->session->userdata('id'); ?>"><i
                                        class="material-icons">person</i>Profile</a>
                            </li>

                            <li
                                <?= $this->uri->segment(2) == 'changepassword' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                                <a href="<?= base_url('user/changepassword') ?>"><i
                                        class="material-icons">lock</i>Change Password</a>
                            </li>

                            <li role="separator" class="divider"></li>
                            <li><a href="<?php echo site_url('auth/logout') ?>" class="tombol-logout"><i
                                        class="material-icons">input</i>Sign Out</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- #User Info -->
            <!-- Menu -->
            <div class="menu">
                <ul class="list">
                    <li class="header">MAIN MENU</li>
                    <li <?= $this->uri->segment(2) == 'dash' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                        <a href="<?php echo base_url('admin/dash') ?>">
                            <i class="material-icons">home</i>
                            <span>Home</span>
                        </a>
                    </li>
                    <li
                        <?= $this->uri->segment(2) == 'getDataUser' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                        <a href="<?php echo base_url('user/getDataUser') ?>">
                            <i class="material-icons">people</i>
                            <span>Kelola User</span>
                        </a>
                    </li>

                    <li
                        <?= $this->uri->segment(2) == 'jabatan' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                        <a href="<?php echo base_url('admin/jabatan') ?>">
                            <i class="material-icons">person</i>
                            <span>Kelola Jabatan</span>
                        </a>
                    </li>

                    <li
                        <?= $this->uri->segment(2) == 'barang' || $this->uri->segment(2) == 'dpengajuan' || $this->uri->segment(2) == 'detpengajuan' || $this->uri->segment(2) == 'rekapBarang' || $this->uri->segment(2) == 'pengajuanDetail' ? 'class="active"' : '' ?>>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">storage</i>
                            <span>Kelola Data Pengajuan</span>
                        </a>
                        <ul class="ml-menu">
                            <li
                                <?= $this->uri->segment(2) == 'barang' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                                <a href="<?php echo base_url('admin/barang') ?>">
                                    <span>Data Nama Barang</span>
                                </a>
                            </li>
                            <li
                                <?= $this->uri->segment(2) == 'dpengajuan' || $this->uri->segment(2) == 'pengajuanDetail' ? 'class="active"' : '' ?>>
                                <a href="<?php echo base_url('pengajuan/dpengajuan') ?>">
                                    <span>Data Pengajuan</span>
                                </a>
                            </li>
                            <li
                                <?= $this->uri->segment(2) == 'detpengajuan' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                                <a href="<?php echo base_url('pengajuan/detpengajuan') ?>">
                                    <span>Rekap Pengajuan</span>
                                </a>
                            </li>
                            <li
                                <?= $this->uri->segment(2) == 'rekapBarang' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                                <a href="<?php echo base_url('admin/rekapBarang') ?>">
                                    <span>Rekap Barang</span>
                                </a>
                            </li>
                        </ul>

                    </li>

                    <li
                        <?= $this->uri->segment(2) == 'asal_barang' || $this->uri->segment(2) == 'jenis_barang' || $this->uri->segment(2) == 'golongan' || $this->uri->segment(2) == 'klasifikasi' || $this->uri->segment(2) == 'sub_klasifikasi' || $this->uri->segment(2) == 'lahan' || $this->uri->segment(2) == 'bangunan' || $this->uri->segment(2) == 'ruangan' || $this->uri->segment(2) == 'aset' || $this->uri->segment(2) == 'add_lahan' || $this->uri->segment(2) == 'add_bangunan' ? 'class="active"' : '' ?>>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">storage</i>
                            <span>Kelola Data Inventaris</span>
                        </a>
                        <ul class="ml-menu">
                            <li
                                <?= $this->uri->segment(2) == 'asal_barang' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                                <a href="<?php echo base_url('admin/asal_barang') ?>"><span>Asal Barang</span></a>
                            </li>

                            <li
                                <?= $this->uri->segment(2) == 'jenis_barang' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                                <a href="<?php echo base_url('admin/jenis_barang') ?>"><span>Jenis Barang</span></a>
                            </li>

                            <li
                                <?= $this->uri->segment(2) == 'golongan' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                                <a href="<?php echo base_url('admin/golongan') ?>"><span>Golongan</span></a>
                            </li>

                            <li
                                <?= $this->uri->segment(2) == 'klasifikasi' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                                <a href="<?php echo base_url('admin/klasifikasi') ?>"><span>Klasifikasi</span></a>
                            </li>
                            <li
                                <?= $this->uri->segment(2) == 'sub_klasifikasi' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                                <a
                                    href="<?php echo base_url('admin/sub_klasifikasi') ?>"><span>Subklasifikasi</span></a>
                            </li>
                            <li
                                <?= $this->uri->segment(2) == 'lahan' || $this->uri->segment(2) == 'add_lahan' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                                <a href="<?php echo base_url('admin/lahan') ?>"><span>Lahan</span></a>
                            </li>
                            <li
                                <?= $this->uri->segment(2) == 'bangunan' || $this->uri->segment(2) == 'add_bangunan' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                                <a href="<?php echo base_url('admin/bangunan') ?>"><span>Bangunan</span></a>
                            </li>
                            <li
                                <?= $this->uri->segment(2) == 'ruangan' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                                <a href="<?php echo base_url('admin/ruangan') ?>"><span>Ruangan</span></a>
                            </li>
                            <li
                                <?= $this->uri->segment(2) == 'aset' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                                <a href="<?php echo base_url('admin/aset') ?>"><span>Barang</span></a>
                            </li>
                        </ul>
                    </li>
                    <li
                        <?= $this->uri->segment(2) == 'arsip_pinjam' || $this->uri->segment(2) == 'jadwal' || $this->uri->segment(2) == 'ruangan_pinjam' || $this->uri->segment(2) == 'admin_ruangan' ? 'class="active"' : '' ?>>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">storage</i>
                            <span>Kelola Data Pinjam Ruangan</span>
                        </a>
                        <ul class="ml-menu">
                            <li
                                <?= $this->uri->segment(2) == 'admin_ruangan' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                                <a href="<?php echo base_url('admin_ruangan/admin_ruangan') ?>"><span>Data Ruangan</span></a>
                            </li>
                            <li
                                <?= $this->uri->segment(2) == 'ruangan_pinjam' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                                <a href="<?php echo base_url('admin_ruangan/ruangan_pinjam') ?>"><span>Data Peminjaman Ruangan</span></a>
                            </li>
                            <li
                                <?= $this->uri->segment(2) == 'jadwal' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                                <a href="<?php echo base_url('admin_ruangan/jadwal') ?>"><span>Jadwal Peminjaman Ruangan</span></a>
                            </li>
                            <li
                                <?= $this->uri->segment(2) == 'arsip_pinjam' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                                <a href="<?php echo base_url('admin_ruangan/arsip_pinjam') ?>"><span>Arsip Peminjaman Ruangan</span></a>
                            </li>
                        </ul>
                    </li>
                    <li
                        <?= $this->uri->segment(2) == 'laporan' || $this->uri->segment(2) == 'laporan_master_barang' || $this->uri->segment(2) == 'laporanDetail' ? 'class="active"' : '' ?>>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">file_download</i>
                            <span>Laporan</span>
                        </a>
                        <ul class="ml-menu">
                            <li
                                <?= $this->uri->segment(2) == 'laporan' || $this->uri->segment(2) == 'laporanDetail' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                                <a href="<?php echo base_url('admin/laporan') ?>"><span>Data Laporan
                                        Pengajuan</span></a>
                            </li>
                            <li
                                <?= $this->uri->segment(2) == 'laporan_master_barang' || $this->uri->segment(1) == '' ? 'class="active"' : '' ?>>
                                <a href="<?php echo base_url('admin/laporan_master_barang') ?>"><span>Data Laporan
                                        Master Data
                                        Barang</span></a>
                            </li>
                        </ul>
                    </li>

                    <li class="header">LABELS</li>
                    <li class="active">
                        <a href="javascript:void(0);">
                            <i class="material-icons col-red">donut_large</i>
                            <span>Important</span>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- #Menu -->
            <!-- Footer -->
            <div class="legal">
                <div class="copyright">
                    &copy; 2023 <a href="javascript:void(0);">Sistem Informasi Manajemen | Amikom Purwokerto</a>.
                </div>
                <div class="version">

                </div>
            </div>
            <!-- #Footer -->
        </aside>
        <!-- #END# Left Sidebar -->