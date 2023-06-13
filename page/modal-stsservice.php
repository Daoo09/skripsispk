<link href="css/style.css" rel="stylesheet">
<!-- Main Content -->
<div id="content">
    <?php
    include '../koneksi.php';
    $id = $_GET['id'];
    $query = mysqli_query($koneksi, "SELECT * FROM `stsservice` WHERE id='$id' AND Tipe!='Z' ") or die(mysqli_error($koneksi));
    $result = mysqli_fetch_array($query);
    ?>
    <!-- Begin Page Content -->
    <div class="modal-dialog modal-dialog-scrollable modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Data Status Pesanan Service / Reparasi</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="formEdit" method="POST" autocomplete="off">
                    <div class="form-group row" style="margin-bottom:8px">
                        <label for="" class="col-sm-3 col-form-label">Nama</label>
                        <div class="col-sm-9">
                            <input type="hidden" class="form-control" id="id" name="id" id="myclass" value="<?php echo $result['id']; ?>">
                            <input type="text" class="form-control" id="" name="" 
                                value="<?php 
                                        $aku = $result['Kodeservice'];
                                        $a = mysqli_query($koneksi, "SELECT * FROM `poservice` WHERE Tipe!='Z' AND Kode='$aku' ");
                                        $b = mysqli_fetch_array($a);
                                        $pelanggan = $b['KodePelanggan'];
                                        $aa = mysqli_query($koneksi, "SELECT * FROM `pelanggan` WHERE Tipe!='Z' AND Kode ='$pelanggan' ");
                                        $bb = mysqli_fetch_array($aa);
                                        echo $bb['Nama'];
                                        ?>" disabled>
                        </div>
                    </div>
                    <div class="form-group row" style="margin-bottom:8px">
                        <label for="" class="col-sm-3 col-form-label">Sedang Di Kerjakan</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="Sk" name="Sk" value="">
                        </div>
                    </div>
                    <div class="form-group row" style="margin-bottom:8px">
                        <label for="" class="col-sm-3 col-form-label">Tanggal Selesai</label>
                        <div class="col-sm-9">
                            <input type="date" class="form-control" id="Selesai" name="Selesai" value="">
                        </div>
                    </div>
                    <div class="form-group row" style="margin-bottom:8px">
                        <label for="" class="col-sm-3 col-form-label">Pengembalian Barang</label>
                        <div class="col-sm-9">
                            <input type="date" class="form-control" id="Pb" name="Pb" value="">
                        </div>
                    </div>
                    <div class=" modal-footer justify-content-between">
                        <button type="submit" class="btn btn-primary waves-effect">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>