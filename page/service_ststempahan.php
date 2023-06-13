<?php
include "../koneksi.php";
switch ($_GET['action']) {
    case 'edit':
        $id         = $_POST['id'];
        $Sk         = $_POST['Sk'];
        $Selesai    = $_POST['Selesai'];
        $Pb         = $_POST['Pb'];

        /** Updatenya */
        $query = mysqli_query($koneksi, "UPDATE `ststempahan` SET Sk='$Sk', Selesai='$Selesai', Pb='$Pb' WHERE id='$id'");
        // echo "success";
        break;
    case 'delete':
        $Kode = $_POST['Kode'];

        $query = mysqli_query($koneksi, "UPDATE `ststempahan` SET  Tipe = 'Z' WHERE  Kodetempahan='$Kode'");

        $kueri = mysqli_query($koneksi, "UPDATE `potempahan` SET Tipe = 'Z' WHERE Kode='$Kode'  ");
        // echo 'success';
        break;
}
