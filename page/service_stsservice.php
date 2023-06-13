<?php
include "../koneksi.php";
switch ($_GET['action']) {
    case 'edit':
        $id         = $_POST['id'];
        $Sk         = $_POST['Sk'];
        $Selesai    = $_POST['Selesai'];
        $Pb         = $_POST['Pb'];

        /** Updatenya */
        $query = mysqli_query($koneksi, "UPDATE `stsservice` SET Sk='$Sk', Selesai='$Selesai', Pb='$Pb' WHERE id='$id'");
        // echo "success";
        break;
    case 'delete':
        $Kode = $_POST['Kode'];

        $query = mysqli_query($koneksi, "UPDATE `stsservice` SET  Tipe = 'Z' WHERE  Kodeservice='$Kode'");

        $kueri = mysqli_query($koneksi, "UPDATE `poservice` SET Tipe = 'Z' WHERE Kode='$Kode'  ");
        // echo 'success';
        break;
}
