<!-- Jquery Core Js -->
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/jquery/jquery.min.js"></script>

<!-- Bootstrap Core Js -->
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/bootstrap/js/bootstrap.js"></script>

<!-- Select Plugin Js -->


<!-- Slimscroll Plugin Js -->
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/bootstrap-notify/bootstrap-notify.js"></script>

<!-- Waves Effect Plugin Js -->
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/node-waves/waves.js"></script>


<!-- Jquery CountTo Plugin Js -->
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/jquery-countto/jquery.countTo.js"></script>


<!-- Morris Plugin Js -->
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/raphael/raphael.min.js"></script>
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/morrisjs/morris.js"></script>

<!-- ChartJs -->
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/chartjs/Chart.bundle.js"></script>

<!-- Flot Charts Plugin Js -->
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/flot-charts/jquery.flot.js"></script>
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/flot-charts/jquery.flot.resize.js"></script>
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/flot-charts/jquery.flot.pie.js"></script>
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/flot-charts/jquery.flot.categories.js"></script>
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/flot-charts/jquery.flot.time.js"></script>

<!-- Jquery DataTable Plugin Js -->
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/jquery-datatable/jquery.dataTables.js"></script>
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js"></script>
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js"></script>
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/jquery-datatable/extensions/export/buttons.flash.min.js"></script>
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/jquery-datatable/extensions/export/jszip.min.js"></script>
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/jquery-datatable/extensions/export/pdfmake.min.js"></script>
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/jquery-datatable/extensions/export/vfs_fonts.js"></script>
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/jquery-datatable/extensions/export/buttons.html5.min.js"></script>
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/jquery-datatable/extensions/export/buttons.print.min.js"></script>
<!-- SweetAlert Plugin Js -->
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/sweetalert/sweetalert.min.js"></script>

<!-- Sparkline Chart Plugin Js -->
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>plugins/jquery-sparkline/jquery.sparkline.js"></script>

<!-- Custom Js -->
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>js/admin.js"></script>
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>js/pages/tables/jquery-datatable.js"></script>
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>js/pages/ui/dialogs.js"></script>
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>js/pages/index.js"></script>



<script src="<?= base_url('assets/'); ?>js/sweetalert2.all.min.js"></script>
<link href="<?= base_url('assets/'); ?>js/sweetalert2.min.css" rel="stylesheet">

<script src="<?= base_url('assets/'); ?>js/scripts.js"></script>
<script src="<?= base_url('assets/'); ?>js/myscript.js"></script>
<script src="<?= base_url('assets/'); ?>js/script.js"></script>
<script src="<?= base_url('assets/'); ?>js/sa.js"></script>
<script src="<?= base_url('assets/'); ?>js/notif.js"></script>
<script src="<?= base_url('assets/'); ?>js/pinjam.js"></script>


<!-- Demo Js -->
<script src="<?= base_url('vendor/AdminBSBMaterialDesign-master/'); ?>js/demo.js"></script>


<script>
    $('.filled-in').on('click', function() {
        const id_ruangan = $(this).data('id');
        const role = $(this).data('role');
        $.ajax({
            url: "<?= base_url('admin_ruangan/akses'); ?>",
            type: 'post',
            data: {
                id: id_ruangan,
                role: role
            },
            success: function() {
                document.location.href = "<?= base_url('admin_ruangan/admin_ruangan') ?>";
            }
        })
    });
    </script>
   


</body>

</html>