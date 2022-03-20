<?php


require "./vendor/autoload.php";
include "./koneksi.php";

if (isset($_POST['import_file'])) {

    $input_name = 'form_excel';
    $file_import = $_FILES[$input_name]['name'];
    $ekstensi = explode(".", $file_import);
    $nama_file = "file-import" . '.' . end($ekstensi);
    $sumber = $_FILES[$input_name]['tmp_name'];
    $target_dir = "./file/";
    $target_file = $target_dir . $nama_file;
    $upload = move_uploaded_file($sumber, $target_file);

    if ($xlsx = SimpleXLSX::parse($target_file)) {

        $header_values = $rows = [];
        foreach ($xlsx->rows() as $k => $r) {
            if ($k === 0) {
                $header_values = $r;
                continue;
            }
            $rows[] = array_combine($header_values, $r);
        }
        // print_r($rows);

        $sql = "insert into training (usia,jkel,banyak_kencing,turun_bb,luka_sukar,kesemutan,lemas,kulit_gatal,keturunan,hasil,waktu_insert) values ";

        for ($i=0; $i < count($rows) ; $i++) { 
            $usia = $rows[$i]['usia'];
            $jkel = $rows[$i]['jkel'];
            $banyak_kencing = $rows[$i]['banyak_kencing'];
            $turun_bb = $rows[$i]['turun_bb'];
            $luka_sukar = $rows[$i]['luka_sukar'];
            $kesemutan = $rows[$i]['kesemutan'];
            $lemas = $rows[$i]['lemas'];
            $kulit_gatal = $rows[$i]['kulit_gatal'];
            $keturunan = $rows[$i]['keturunan'];
            $hasil = $rows[$i]['hasil'];

            $sql.=  "('$usia','$jkel','$banyak_kencing','$turun_bb','$luka_sukar','$kesemutan','$lemas','$kulit_gatal','$keturunan','$hasil',current_timestamp()),";
        }
        $sql = substr($sql, 0, -1); // menghilangkan koma diakhir
        $sql .= ';';

        $insert = mysqli_query($koneksi,$sql);
        if($insert > 0){
            echo "<script>alert('DATA BERHASIL DIIMPORT')</script>";
        }else{
            echo "<script>alert('DATA GAGAL DIIMPORT')</script>";
        }
        header('Location: ' . $_SERVER['HTTP_REFERER']);
        // echo $sql;

        // or $xlsx->toHTML();	
    } else {
        echo SimpleXLSX::parseError();
    }
}
