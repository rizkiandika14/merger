const origin = document.location.origin;
const siplaburl = document.location.pathname.split('/')[1];
const base_url = origin + "/" + siplaburl;

function cekjam() {
	var pinjam_id_user = $(".pinjam_id_user").val();
	var id_ruangan = $(".id_ruangan").val();
	var tgl = $(".tgl").val();

	$(".jam").empty();
	$.ajax({
		type: "POST",
		data: {
			pinjam_id_user: pinjam_id_user,
			id_ruangan: id_ruangan,
			tgl: tgl
		},
		url: base_url + '/divisi/cekjam',
		success: function (msg) {
			$(".jam").html(msg);
		}
	});
}
// verify req date
$('.verifydate').change(function (e) {
	e.preventDefault();
	var tanggal = $('#tanggal').val();
	var jam_mulai = $('#pinjam_jam_mulai').val();
	var jam_selesai = $('#pinjam_jam_selesai').val();

	$.ajax({
		url: base_url + '/divisi/ajaxverifyreqdate',
		type: 'POST',
		data: {
			'tanggal': tanggal,
			'jam_mulai': jam_mulai,
			'jam_selesai': jam_selesai
		},
		success: function (data) {
			$('#alerttanggal').html(data);
			if (data != "") {
				$('.pinjam').attr('disabled', true);
			} else {
				$('.pinjam').removeAttr('disabled');
			}
		}
	})
});

$('.tgl').change(function () {
	cekjam();
});

$('.tgl').click(function () {
	cekjam();
});

//tombol hapus
$('.tombol-terima').on('click', function (e) {

	e.preventDefault(); //matikan fungsi href nya terlebih dahulu dengan event

	const href = $(this).attr('href'); //kita ambil attribute dari html yang mau kita jadikan flashmassage disini adalah attribut href(link)

	new Swal({
		title: 'Apakah anda yakin?',
		text: "Data akan Diterima!",
		icon: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		cancelButtonColor: '#d33',
		confirmButtonText: 'Terima!'
	}).then((result) => {
		if (result.value) {
			document.location.href = href; //kembalikan nilai true dengan redirect document ke halaman yang dituju
		}
	})

});

$('.tombol-tolak').on('click', function (e) {

	e.preventDefault(); //matikan fungsi href nya terlebih dahulu dengan event

	const href = $(this).attr('href'); //kita ambil attribute dari html yang mau kita jadikan flashmassage disini adalah attribut href(link)

	new Swal({
		title: 'Apakah anda yakin?',
		text: "Data akan Ditolak!",
		icon: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		cancelButtonColor: '#d33',
		confirmButtonText: 'Tolak!'
	}).then((result) => {
		if (result.value) {
			document.location.href = href; //kembalikan nilai true dengan redirect document ke halaman yang dituju
		}
	})

});

$('.tombol-batal').on('click', function (e) {

	e.preventDefault(); //matikan fungsi href nya terlebih dahulu dengan event

	const href = $(this).attr('href'); //kita ambil attribute dari html yang mau kita jadikan flashmassage disini adalah attribut href(link)

	new Swal({
		title: 'Apakah anda yakin?',
		text: "Data akan Dibatalkan!",
		icon: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		cancelButtonColor: '#d33',
		confirmButtonText: 'Batalkan Peminjaman!'
	}).then((result) => {
		if (result.value) {
			document.location.href = href; //kembalikan nilai true dengan redirect document ke halaman yang dituju
		}
	})

});
