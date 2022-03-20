<?php

include 'koneksi.php';
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $usia = $_POST['usia'];
    $jkel = $_POST['jkel'];
    $banyak_kencing = $_POST['banyak_kencing'];
    $turun_bb = $_POST['turun_bb'];
    $luka_sukar = $_POST['luka_sukar'];
    $kesemutan = $_POST['kesemutan'];
    $lemas = $_POST['lemas'];
    $kulit_gatal = $_POST['kulit_gatal'];
    $keturunan = $_POST['keturunan'];

    $sql =
        "select 'ya' as kelas,

        (
            (
                (
                    (select val from pxci where kelas = 'usia' and atribut = '$usia' and kelas_prediksi = 'ya')*
                    (select val from pci where kelas_prediksi = 'ya')
                )/
                (select val from px where kelas = 'usia' and atribut = '$usia')
            )
            *
            (
                (
                    (select val from pxci where kelas = 'jkel' and atribut = '$jkel' and kelas_prediksi = 'ya')*
                    (select val from pci where kelas_prediksi = 'ya')
                )/
                (select val from px where kelas = 'jkel' and atribut = '$jkel')
            )
            *
            (
                (
                    (select val from pxci where kelas = 'banyak_kencing' and atribut = '$banyak_kencing' and kelas_prediksi = 'ya')*
                    (select val from pci where kelas_prediksi = 'ya')
                )/
                (select val from px where kelas = 'banyak_kencing' and atribut = '$banyak_kencing')
            )
            *
            (
                (
                    (select val from pxci where kelas = 'turun_bb' and atribut = '$turun_bb' and kelas_prediksi = 'ya')*
                    (select val from pci where kelas_prediksi = 'ya')
                )/
                (select val from px where kelas = 'turun_bb' and atribut = '$turun_bb')
            )
            *
            (
                (
                    (select val from pxci where kelas = 'luka_sukar' and atribut = '$luka_sukar' and kelas_prediksi = 'ya')*
                    (select val from pci where kelas_prediksi = 'ya')
                )/
                (select val from px where kelas = 'luka_sukar' and atribut = '$luka_sukar')
            )
            *
            (
                (
                    (select val from pxci where kelas = 'kesemutan' and atribut = '$kesemutan' and kelas_prediksi = 'ya')*
                    (select val from pci where kelas_prediksi = 'ya')
                )/
                (select val from px where kelas = 'kesemutan' and atribut = '$kesemutan')
            )
            *
            (
                (
                    (select val from pxci where kelas = 'lemas' and atribut = '$lemas' and kelas_prediksi = 'ya')*
                    (select val from pci where kelas_prediksi = 'ya')
                )/
                (select val from px where kelas = 'lemas' and atribut = '$lemas')
            )
            *
            (
                (
                    (select val from pxci where kelas = 'kulit_gatal' and atribut = '$kulit_gatal' and kelas_prediksi = 'ya')*
                    (select val from pci where kelas_prediksi = 'ya')
                )/
                (select val from px where kelas = 'kulit_gatal' and atribut = '$kulit_gatal')
            )
            *
            (
                (
                    (select val from pxci where kelas = 'keturunan' and atribut = '$keturunan' and kelas_prediksi = 'ya')*
                    (select val from pci where kelas_prediksi = 'ya')
                )/
                (select val from px where kelas = 'keturunan' and atribut = '$keturunan')
            )
        )

        union 

        select 'tidak' as kelas,

        (
            (
                (
                    (select val from pxci where kelas = 'usia' and atribut = '$usia' and kelas_prediksi = 'tidak')*
                    (select val from pci where kelas_prediksi = 'tidak')
                )/
                (select val from px where kelas = 'usia' and atribut = '$usia')
            )
            *
            (
                (
                    (select val from pxci where kelas = 'jkel' and atribut = '$jkel' and kelas_prediksi = 'tidak')*
                    (select val from pci where kelas_prediksi = 'tidak')
                )/
                (select val from px where kelas = 'jkel' and atribut = '$jkel')
            )
            *
            (
                (
                    (select val from pxci where kelas = 'banyak_kencing' and atribut = '$banyak_kencing' and kelas_prediksi = 'tidak')*
                    (select val from pci where kelas_prediksi = 'tidak')
                )/
                (select val from px where kelas = 'banyak_kencing' and atribut = '$banyak_kencing')
            )
            *
            (
                (
                    (select val from pxci where kelas = 'turun_bb' and atribut = '$turun_bb' and kelas_prediksi = 'tidak')*
                    (select val from pci where kelas_prediksi = 'tidak')
                )/
                (select val from px where kelas = 'turun_bb' and atribut = '$turun_bb')
            )
            *
            (
                (
                    (select val from pxci where kelas = 'luka_sukar' and atribut = '$luka_sukar' and kelas_prediksi = 'tidak')*
                    (select val from pci where kelas_prediksi = 'tidak')
                )/
                (select val from px where kelas = 'luka_sukar' and atribut = '$luka_sukar')
            )
            *
            (
                (
                    (select val from pxci where kelas = 'kesemutan' and atribut = '$kesemutan' and kelas_prediksi = 'tidak')*
                    (select val from pci where kelas_prediksi = 'tidak')
                )/
                (select val from px where kelas = 'kesemutan' and atribut = '$kesemutan')
            )
            *
            (
                (
                    (select val from pxci where kelas = 'lemas' and atribut = '$lemas' and kelas_prediksi = 'tidak')*
                    (select val from pci where kelas_prediksi = 'tidak')
                )/
                (select val from px where kelas = 'lemas' and atribut = '$lemas')
            )
            *
            (
                (
                    (select val from pxci where kelas = 'kulit_gatal' and atribut = '$kulit_gatal' and kelas_prediksi = 'tidak')*
                    (select val from pci where kelas_prediksi = 'tidak')
                )/
                (select val from px where kelas = 'kulit_gatal' and atribut = '$kulit_gatal')
            )
            *
            (
                (
                    (select val from pxci where kelas = 'keturunan' and atribut = '$keturunan' and kelas_prediksi = 'tidak')*
                    (select val from pci where kelas_prediksi = 'tidak')
                )/
                (select val from px where kelas = 'keturunan' and atribut = '$keturunan')
            )
        )
        ";

    $res = mysqli_query($koneksi, $sql);
    $data = [];
    while ($row = mysqli_fetch_array($res)) {
        array_push($data, ['kelas' => $row[0], 'nilai' => $row[1]]);
    }
    $keys = array_column($data, 'nilai');
    array_multisort($keys, SORT_DESC, $data);
    $vonis = $data[0]['kelas'];
    echo $vonis;
}

