 <!-- Right Sidebar -->
 <aside id="rightsidebar" class="right-sidebar">
     <ul class="nav nav-tabs tab-nav-right" role="tablist">
         <li role="presentation" class="active"><a href="#skins" data-toggle="tab">SKINS</a></li>
         <li role="presentation"><a href="#settings" data-toggle="tab">SETTINGS</a></li>
     </ul>
     <div class="tab-content">
         <div role="tabpanel" class="tab-pane fade in active in active" id="skins">
             <ul class="demo-choose-skin">
                 <li data-theme="red" class="active">
                     <div class="red"></div>
                     <span>Red</span>
                 </li>
                 <li data-theme="pink">
                     <div class="pink"></div>
                     <span>Pink</span>
                 </li>
                 <li data-theme="purple">
                     <div class="purple"></div>
                     <span>Purple</span>
                 </li>
                 <li data-theme="deep-purple">
                     <div class="deep-purple"></div>
                     <span>Deep Purple</span>
                 </li>
                 <li data-theme="indigo">
                     <div class="indigo"></div>
                     <span>Indigo</span>
                 </li>
                 <li data-theme="blue">
                     <div class="blue"></div>
                     <span>Blue</span>
                 </li>
                 <li data-theme="light-blue">
                     <div class="light-blue"></div>
                     <span>Light Blue</span>
                 </li>
                 <li data-theme="cyan">
                     <div class="cyan"></div>
                     <span>Cyan</span>
                 </li>
                 <li data-theme="teal">
                     <div class="teal"></div>
                     <span>Teal</span>
                 </li>
                 <li data-theme="green">
                     <div class="green"></div>
                     <span>Green</span>
                 </li>
                 <li data-theme="light-green">
                     <div class="light-green"></div>
                     <span>Light Green</span>
                 </li>
                 <li data-theme="lime">
                     <div class="lime"></div>
                     <span>Lime</span>
                 </li>
                 <li data-theme="yellow">
                     <div class="yellow"></div>
                     <span>Yellow</span>
                 </li>
                 <li data-theme="amber">
                     <div class="amber"></div>
                     <span>Amber</span>
                 </li>
                 <li data-theme="orange">
                     <div class="orange"></div>
                     <span>Orange</span>
                 </li>
                 <li data-theme="deep-orange">
                     <div class="deep-orange"></div>
                     <span>Deep Orange</span>
                 </li>
                 <li data-theme="brown">
                     <div class="brown"></div>
                     <span>Brown</span>
                 </li>
                 <li data-theme="grey">
                     <div class="grey"></div>
                     <span>Grey</span>
                 </li>
                 <li data-theme="blue-grey">
                     <div class="blue-grey"></div>
                     <span>Blue Grey</span>
                 </li>
                 <li data-theme="black">
                     <div class="black"></div>
                     <span>Black</span>
                 </li>
             </ul>
         </div>
         <div role="tabpanel" class="tab-pane fade" id="settings">
             <div class="demo-settings">
                 <p>GENERAL SETTINGS</p>
                 <ul class="setting-list">
                     <li>
                         <span>Report Panel Usage</span>
                         <div class="switch">
                             <label><input type="checkbox" checked><span class="lever"></span></label>
                         </div>
                     </li>
                     <li>
                         <span>Email Redirect</span>
                         <div class="switch">
                             <label><input type="checkbox"><span class="lever"></span></label>
                         </div>
                     </li>
                 </ul>
                 <p>SYSTEM SETTINGS</p>
                 <ul class="setting-list">
                     <li>
                         <span>Notifications</span>
                         <div class="switch">
                             <label><input type="checkbox" checked><span class="lever"></span></label>
                         </div>
                     </li>
                     <li>
                         <span>Auto Updates</span>
                         <div class="switch">
                             <label><input type="checkbox" checked><span class="lever"></span></label>
                         </div>
                     </li>
                 </ul>
                 <p>ACCOUNT SETTINGS</p>
                 <ul class="setting-list">
                     <li>
                         <span>Offline</span>
                         <div class="switch">
                             <label><input type="checkbox"><span class="lever"></span></label>
                         </div>
                     </li>
                     <li>
                         <span>Location Permission</span>
                         <div class="switch">
                             <label><input type="checkbox" checked><span class="lever"></span></label>
                         </div>
                     </li>
                 </ul>
             </div>
         </div>
     </div>
 </aside>
 <!-- #END# Right Sidebar -->
 </section>

 <section class="content">
     <div class="login" data-login="<?= $this->session->flashdata('pesan') ?>">
         <?php if ($this->session->flashdata('pesan')) { ?>

         <?php } ?>
         <div class="row clearfix">
             <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                 <div class="card">
                     <div class="header">
                         <div class="row clearfix">
                             <div class="col-xs-12 col-sm-6">
                                 <h4>SELAMAT DATANG DI SISTEM INFORMASI MANAJEMEN BARANG</h4>
                             </div>
                             <div class="col-xs-12 col-sm-6 align-right">
                                 <div class="switch panel-switch-btn">
                                     <!-- <span class="m-r-10 font-12">REAL TIME</span>
                                        <label>OFF<input type="checkbox" id="realtime" checked><span class="lever switch-col-cyan"></span>ON</label> -->

                                 </div>
                             </div>

                         </div>
                         <hr>
                         <h5><b>DATA PENGAJUAN</b></h5>

                         <?php
                            $totalp = $this->db->query("SELECT count(id) as totalp FROM pengajuan where status = 'proses'");

                            foreach ($totalp->result() as $total) {
                            ?>

                         <div class="row clearfix">
                             <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                 <div class="info-box bg-pink hover-expand-effect">
                                     <div class="icon">
                                         <a href="<?php echo base_url('pengajuan/dpengajuan') ?>">
                                             <i class="material-icons">playlist_add_check</i>
                                         </a>
                                     </div>
                                     <div class="content">
                                         <div class="text">PROSES</div>
                                         <div class="number"><?php echo $total->totalp ?></div>
                                     </div>
                                 </div>
                             </div>
                             <?php } ?>

                             <?php
                                $totalp = $this->db->query("SELECT count(id) as totalp FROM pengajuan where status = 'disetujui' or status = 'Disetujui UPB'");

                                foreach ($totalp->result() as $total) {
                                ?>
                             <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                 <div class="info-box bg-cyan hover-expand-effect">
                                     <div class="icon">
                                         <i class="material-icons">done</i>
                                     </div>
                                     <div class="content">
                                         <div class="text">DISETUJUI</div>
                                         <div class="number"><?php echo $total->totalp ?></div>
                                     </div>
                                 </div>
                             </div>
                             <?php } ?>

                             <?php
                                $totalp = $this->db->query("SELECT count(id) as totalp FROM pengajuan where status = 'ditolak' and status = 'ditolak upb'");

                                foreach ($totalp->result() as $total) {
                                ?>
                             <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                 <div class="info-box bg-red hover-expand-effect">
                                     <div class="icon">
                                         <i class="material-icons">report</i>
                                     </div>
                                     <div class="content">
                                         <div class="text">DITOLAK</div>
                                         <div class="number"><?php echo $total->totalp ?></div>
                                     </div>
                                 </div>
                             </div>
                             <?php } ?>

                             <?php
                                $totalp = $this->db->query("SELECT count(id) as totalp FROM pengajuan where status = 'diusulkan' or status = 'Diusulkan keuangan' or status = 'Disetujui keuangan'");

                                foreach ($totalp->result() as $total) {
                                ?>
                             <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                 <div class="info-box bg-orange hover-expand-effect">
                                     <div class="icon">
                                         <i class="material-icons">forward</i>
                                     </div>
                                     <div class="content">
                                         <div class="text">DIAJUKAN</div>
                                         <div class="number"><?php echo $total->totalp ?></div>
                                     </div>
                                 </div>
                             </div>
                             <?php } ?>

                             <?php
                                $totalp = $this->db->query("SELECT count(id) as totalp FROM pengajuan where status = 'disetujui' and validasi = 'belum diterima' or status = 'Disetujui UPB' and validasi = 'belum diterima'");

                                foreach ($totalp->result() as $total) {
                                ?>
                             <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                 <div class="info-box bg-blue hover-expand-effect">
                                     <div class="icon">
                                         <i class="material-icons">warning</i>
                                     </div>
                                     <div class="content">
                                         <div class="text">BELUM VALIDASI</div>
                                         <div class="number"><?php echo $total->totalp ?></div>
                                     </div>
                                 </div>
                             </div>
                             <?php } ?>

                             <?php
                                $totalp = $this->db->query("SELECT count(id) as totalp FROM pengajuan where validasi = 'diterima' and status = 'disetujui' or validasi = 'diterima' and status = 'Disetujui UPB'");

                                foreach ($totalp->result() as $total) {
                                ?>
                             <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                 <div class="info-box bg-green hover-expand-effect">
                                     <div class="icon">
                                         <i class="material-icons">done_all</i>
                                     </div>
                                     <div class="content">
                                         <div class="text">BERHASIL</div>
                                         <div class="number"><?php echo $total->totalp ?></div>
                                     </div>
                                 </div>
                             </div>
                             <?php } ?>

                             <?php
                                $totalp = $this->db->query("SELECT count(id) as totalp FROM pengajuan");

                                foreach ($totalp->result() as $total) {
                                ?>
                             <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                 <div class="info-box bg-purple hover-expand-effect">
                                     <div class="icon">
                                         <i class="material-icons">list</i>
                                     </div>
                                     <div class="content">
                                         <div class="text">TOTAL</div>
                                         <div class="number"><?php echo $total->totalp ?></div>
                                     </div>
                                 </div>
                             </div>
                             <?php } ?>
                         </div>
                     </div>

                 </div>
             </div>
         </div>

         <div class="row clearfix">
             <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                 <div class="card">
                     <div class="header">
                         <div class="row clearfix">
                             <div class="col-xs-12 col-sm-6">
                                 <h5><b>DATA ASET</b></h5>
                             </div>
                             <div class="col-xs-12 col-sm-6 align-right">
                                 <div class="switch panel-switch-btn">
                                     <!-- <span class="m-r-10 font-12">REAL TIME</span>
                                        <label>OFF<input type="checkbox" id="realtime" checked><span class="lever switch-col-cyan"></span>ON</label> -->

                                 </div>
                             </div>

                         </div>

                         <ul class="list-group">
                             <a href="asal_barang">
                                 <li class="list-group-item">Asal Barang<span
                                         class="badge bg-grey"><?= total_asal_barang(); ?></span>
                                 </li>
                             </a>
                             <a href="jenis_barang">
                                 <li class="list-group-item">Jenis Barang<span
                                         class="badge bg-grey"><?= total_jenis_barang(); ?></span>
                                 </li>
                             </a>
                             <a href="golongan">
                                 <li class="list-group-item">Golongan<span
                                         class="badge bg-grey"><?= total_golongan(); ?></span>
                                 </li>
                             </a>
                             <a href="klasifikasi">
                                 <li class="list-group-item">Klasifikasi<span
                                         class="badge bg-grey"><?= total_klasifikasi(); ?></span>
                                 </li>
                             </a>
                             <a href="admin/sub_klasifikasi">
                                 <li class="list-group-item">Subklasifikasi<span
                                         class="badge bg-grey"><?= total_subklasifikasi(); ?></span></li>
                             </a>
                             <a href="lahan">
                                 <li class="list-group-item">Lahan<span
                                         class="badge bg-grey"><?= total_lahan(); ?></span>
                                 </li>
                             </a>
                             <a href="bangunan">
                                 <li class="list-group-item">Bangunan<span
                                         class="badge bg-grey"><?= total_bangunan(); ?></span>
                                 </li>
                             </a>
                             <a href="ruangan">
                                 <li class="list-group-item">Ruangan<span
                                         class="badge bg-grey"><?= total_ruangan(); ?></span>
                                 </li>
                             </a>
                             <a href="aset">
                                 <li class="list-group-item">Barang<span
                                         class="badge bg-grey"><?= total_barang(); ?></span>
                                 </li>
                             </a>
                         </ul>

                     </div>
                 </div>

             </div>
         </div>
     </div>
     </div>



     </div>


     </div>
 </section>