<body class="theme-red">
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
                <a class="navbar-brand" href="<?php echo base_url('divisi/dash') ?>">SIMA | Divisi</a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <!-- Call Search -->
                    <!-- <li><a href="javascript:void(0);" class="js-search" data-close="true"><i class="material-icons">search</i></a></li> -->
                    <!-- #END# Call Search -->
                    <!-- Notifications -->
                    <!-- <li class="dropdown"> -->
                    <!-- <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button"> -->
                    <!-- <i class="material-icons">notifications</i> -->
                    <!-- <span class="label-count">7</span> -->
                    <!-- </a> -->

                    <!-- Tasks -->
                    <!-- <li class="dropdown"> -->
                    <!-- <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button"> -->
                    <!-- <i class="material-icons">flag</i> -->
                    <!-- <span class="label-count">9</span> -->
                    <!-- </a> -->

                </ul>
            </div>
        </div>
    </nav>
    <!-- #Top Bar -->
    <section>
        <!-- Left Sidebar -->
        <aside id="leftsidebar" class="sidebar">
            <!-- User Info -->
            <div class="user-info-divisi">
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
                            <li class="<?= $this->uri->segment(2) == 'profile2' ? 'active' : ' ' ?>"><a
                                    href="<?= base_url() ?>user/profile2/<?= $this->session->userdata('id'); ?>"><i
                                        class="material-icons">person</i>Profile</a>
                            </li>
                            <li class="<?= $this->uri->segment(2) == 'changepassword2' ? 'active' : ' ' ?>"><a
                                    href="<?= base_url('user/changepassword2') ?>"><i
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
                    <li class="<?= $this->uri->segment(2) == 'dash'  ? 'active' : ' ' ?>">
                        <a href="<?php echo base_url('divisi/dash') ?>">
                            <i class="material-icons">home</i>
                            <span>Home</span>
                        </a>
                    </li>
                    <li
                        class="<?= $this->uri->segment(2) == 'rekap' || $this->uri->segment(2) == 'divpengajuan' || $this->uri->segment(2) == 'pengajuan' || $this->uri->segment(2) == 'pengajuan2' || $this->uri->segment(2) == 'pengajuan3' || $this->uri->segment(2) == 'pengajuan4' || $this->uri->segment(2) == 'rekap_detail' ? 'active' : ' ' ?>">
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">view_list</i>
                            <span>Kelola Data Pengajuan</span>
                        </a>
                        <ul class="ml-menu">
                            <li
                                class="<?= $this->uri->segment(2) == 'pengajuan' || $this->uri->segment(2) == 'pengajuan2' || $this->uri->segment(2) == 'pengajuan3' || $this->uri->segment(2) == 'pengajuan4' ? 'active' : ' ' ?>">
                                <a href="javascript:void(0);" class="menu-toggle">
                                    <span>Pengajuan</span>
                                </a>
                                <ul class="ml-menu">
                                    <li class="<?= $this->uri->segment(2) == 'pengajuan' ? 'active' : ' ' ?>">
                                        <a href="<?php echo base_url('divisi/pengajuan') ?>">
                                            <span>Minggu ke 1</span>
                                        </a>
                                    </li>
                                    <li class="<?= $this->uri->segment(2) == 'pengajuan2' ? 'active' : ' ' ?>">
                                        <a href="<?php echo base_url('divisi/pengajuan2') ?>">
                                            <span>Minggu ke 2</span>
                                        </a>
                                    </li>
                                    <li class="<?= $this->uri->segment(2) == 'pengajuan3' ? 'active' : ' ' ?>">
                                        <a href="<?php echo base_url('divisi/pengajuan3') ?>">
                                            <span>Minggu ke 3</span>
                                        </a>
                                    </li>
                                    <li class="<?= $this->uri->segment(2) == 'pengajuan4' ? 'active' : ' ' ?>">
                                        <a href="<?php echo base_url('divisi/pengajuan4') ?>">
                                            <span>Minggu ke 4</span>
                                        </a>
                                    </li>

                                </ul>
                            </li>
                            <li class="<?= $this->uri->segment(2) == 'divpengajuan' ? 'active' : ' ' ?>">
                                <a href="<?php echo base_url('divisi/divpengajuan') ?>">
                                    <span>Data Pengajuan</span>
                                </a>
                            </li>
                            <li
                                class="<?= $this->uri->segment(2) == 'rekap' || $this->uri->segment(2) == 'rekap_detail' ? 'active' : ' ' ?>">
                                <a href="<?php echo base_url('divisi/rekap') ?>">
                                    <span>Rekap Pengajuan</span>
                                </a>
                            </li>
                        </ul>

                    </li>
                    <li class="<?= $this->uri->segment(2) == 'jadwal' || $this->uri->segment(2) == 'peminjaman' || $this->uri->segment(2) == 'ruangan' ? 'active' : ' ' ?>">
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">view_list</i>
                            <span>Kelola Data Peminjaman Ruangan</span>
                        </a>
                        <ul class="ml-menu">
                            <li class="<?= $this->uri->segment(2) == 'ruangan' ? 'active' : ' ' ?>">
                                <a href="<?php echo base_url('divisi/ruangan') ?>">
                                    <span>Peminjaman Ruangan</span>
                                </a>
                            </li>
                            <li class="<?= $this->uri->segment(2) == 'peminjaman' ? 'active' : ' ' ?>">
                                <a href="<?php echo base_url('divisi/peminjaman') ?>">
                                    <span>Data Peminjaman</span>
                                </a>
                            </li>
                            <li class="<?= $this->uri->segment(2) == 'jadwal' ? 'active' : ' ' ?>">
                                <a href="<?php echo base_url('divisi/jadwal') ?>">
                                    <span>Jadwal</span>
                                </a>
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
                    &copy; 2023 <a href="javascript:void(0);">Sistem Informasi Management | Amikom Purwokerto</a>.
                </div>
                <div class="version">

                </div>
            </div>
            <!-- #Footer -->
        </aside>
        <!-- #END# Left Sidebar -->