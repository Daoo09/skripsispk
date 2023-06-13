<?php
session_start();
include '../koneksi.php';
?>

<!-- DataTables -->
<link rel="stylesheet" href="../plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="../plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<link rel="stylesheet" href="../plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
<link href="../data/bootstrap4-modal-fullscreen.min.css" rel="stylesheet">

<!-- Main content -->
<div class="col-12">
    <div class="card">
        <div class="card-header">
            <i class="nav-icon fas fa-th"></i>
        </div>
        <div class="card-body">
            <table id="example2" class="table table-bordered table-striped">
                <thead>
                    <tr class="table-primary">
                        <th>No</th>
                        <th>Nama&nbsp;Pelanggan</th>
                        <th>Sedang&nbsp;Di&nbsp;Kerjakan</th>
                        <th>Tanggal&nbsp;Selesai</th>
                        <th>Pengambilan&nbsp;Barang</th>
                        <?php
                        if ($_SESSION['SES_Level'] == '1') {
                        ?>
                            <th>
                                <center>Opsi</center>
                            </th>
                        <?php } ?>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    include '../koneksi.php';
                    $no = 1;
                    $f4hri = mysqli_query($koneksi, "SELECT * FROM `ststempahan` WHERE Tipe!='Z' ");
                    while ($a = mysqli_fetch_array($f4hri)) {
                        $Kode = $a['Kodetempahan'];
                        $ini = mysqli_query($koneksi, "SELECT * FROM `potempahan` WHERE Tipe!='Z' AND Kode = '$Kode' ");
                        $aa = mysqli_fetch_array($ini);
                        $pelanggan = $aa['KodePelanggan'];
                        $pelanggan2 = mysqli_query($koneksi, "SELECT * FROM `pelanggan` WHERE Tipe!='Z' AND Kode ='$pelanggan' ");
                        $aaa = mysqli_fetch_array($pelanggan2);
                    ?>

                        <tr>
                            <td style="padding-top:0; padding-bottom:0; vertical-align: middle"><?php echo $no++; ?></td>
                            <td style="padding-top:0; padding-bottom:0; vertical-align: middle"><?php echo $aaa['Nama']; ?></td>
                            <td style="padding-top:0; padding-bottom:0; vertical-align: middle">
                                <?php
                                if ($a['Sk'] == '') {
                                    echo '<button class="btn btn-danger btn-sm" disabled="disabled">Data Belum Diisi</button>';
                                } else {
                                    echo $a['Sk'];
                                }
                                ?>
                            </td>
                            <td style="padding-top:0; padding-bottom:0; vertical-align: middle">
                                <?php
                                if ($a['Selesai'] == '0000-00-00') {
                                    echo '<button class="btn btn-danger btn-sm" disabled="disabled">Data Belum Diisi</button>';
                                } else {
                                    echo $a['Selesai'];
                                }
                                ?>
                            </td>
                            <td style="padding-top:0; padding-bottom:0; vertical-align: middle">
                                <?php
                                if ($a['Pb'] == '0000-00-00') {
                                    echo '<button class="btn btn-danger btn-sm" disabled="disabled">Data Belum Diisi</button>';
                                } else {
                                    echo $a['Pb'];
                                }
                                ?>
                            </td>
                            <?php
                            if ($_SESSION['SES_Level'] == '1') {
                            ?>
                                <td style="padding-top:0; padding-bottom:0; vertical-align: middle">
                                    <center><a href="javascript:void(0)" class='btn btn-primary btn-sm open_modal' id='<?php echo $a['id']; ?>'><i class="fas fa-pencil-alt"></i></a>
                                        <button type="submit" id="DeleteButton" class='btn btn-danger btn-sm' value="<?php echo $a['Kodetempahan']; ?>"><i class="fas fa-trash"></i></button>
                                    </center>
                                </td>
                            <?php } ?>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
        <!-- /.card-body -->
    </div>
    <!-- /.card -->

    <!-- Modal -->

    <div id="ModalEdit" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    </div>

    <div id="view" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">

    </div>
    <!-- end Modal   -->

    <!-- DataTables  & Plugins -->
    <script src="../plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="../plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="../plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
    <script src="../plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
    <script src="../plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
    <script src="../plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
    <script src="../plugins/jszip/jszip.min.js"></script>
    <script src="../plugins/pdfmake/pdfmake.min.js"></script>
    <script src="../plugins/pdfmake/vfs_fonts.js"></script>
    <script src="../plugins/datatables-buttons/js/buttons.html5.min.js"></script>
    <script src="../plugins/datatables-buttons/js/buttons.print.min.js"></script>
    <script src="../../plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
    <!-- Page specific script -->
    <script>
        $(document).ready(function() {
            $(".open_modal").click(function(e) {
                var m = $(this).attr("id");
                $.ajax({
                    url: "modal-ststempahan.php",
                    type: "GET",
                    data: {
                        id: m,
                    },
                    success: function(ajaxData) {
                        // alert(ajaxData);
                        $("#ModalEdit").html(ajaxData);
                        $("#ModalEdit").modal('show', {
                            backdrop: 'true'
                        });
                    }
                });
            });
        });

        $(function() {
            $("#example2").DataTable({
                "responsive": true,
                "autoWidth": false,
            });
        });
    </script>