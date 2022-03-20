<?php
include 'koneksi.php';

if (isset($_POST['test'])) {
    $jkel = $_POST['jkel'];
    $usia = $_POST['usia'];
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
    $awal = $data;
    $keys = array_column($data, 'nilai');
    array_multisort($keys, SORT_DESC, $data);
    $vonis = $data[0]['kelas'];

}

?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <title>Test Deteksi</title>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.23/css/jquery.dataTables.css">

    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.23/js/jquery.dataTables.js">
    </script>
    <style>
        td,
        th {
            border: 1px solid gray;
            padding: 10px;
        }
    </style>

</head>

<body style="background-color: grey;">
    <!-- Image and text -->
    <?php include 'nav.php'; ?>

    <div class="container" style="background-color: white; padding-top: 2%;padding-bottom: 2%;">
        <div class="ml-5 mr-5 ">
            <div class="row">
                <div class="col-sm-6">
                    <h1 class="text-center">Test Deteksi Diabetes</h1>
                    <form method="POST">
                        <table style="width: 100%;">
                            <tr>
                                <td>1.</td>
                                <td>Jenis Kelamin</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="jkel" id="jkelp" value="pria"
                                            required>
                                        <label class="form-check-label" for="jkelp">Pria</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="jkel" id="jkelw"
                                            value="wanita" required>
                                        <label class="form-check-label" for="jkelw">Wanita</label>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td>2.</td>
                                <td>Usia</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="usia" id="usia1"
                                            value="20-40" required>
                                        <label class="form-check-label" for="usia1">20-40 tahun</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="usia" id="usia2"
                                            value="40-50" required>
                                        <label class="form-check-label" for="usia2">40-50 tahun</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="usia" id="usia3"
                                            value="50-60" required>
                                        <label class="form-check-label" for="usia3">50-60 tahun</label>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td>3.</td>
                                <td>Banyak kencing akhir-akhir ini?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="banyak_kencing" id="bk1"
                                            value="ya" required>
                                        <label class="form-check-label" for="bk1">Ya</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="banyak_kencing" id="bk2"
                                            value="tidak" required>
                                        <label class="form-check-label" for="bk2">Tidak</label>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td>4.</td>
                                <td>Turun Berat Badan Ekstrem ?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="turun_bb" id="bb1" value="ya"
                                            required>
                                        <label class="form-check-label" for="bb1">Ya</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="turun_bb" id="bb2"
                                            value="tidak" required>
                                        <label class="form-check-label" for="bb2">Tidak</label>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td>5.</td>
                                <td>Luka Sukar sembuh ?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="luka_sukar" id="ls1"
                                            value="ya" required>
                                        <label class="form-check-label" for="ls1">Ya</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="luka_sukar" id="ls2"
                                            value="tidak" required>
                                        <label class="form-check-label" for="ls2">Tidak</label>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td>6.</td>
                                <td>Sering merasa kesemutan ?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="kesemutan" id="ks1"
                                            value="ya" required>
                                        <label class="form-check-label" for="ks1">Ya</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="kesemutan" id="ks2"
                                            value="tidak" required>
                                        <label class="form-check-label" for="ks2">Tidak</label>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td>7.</td>
                                <td>Sering merasa letih / lemas ?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="lemas" id="lms1" value="ya"
                                            required>
                                        <label class="form-check-label" for="lms1">Ya</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="lemas" id="lms2"
                                            value="tidak" required>
                                        <label class="form-check-label" for="lms2">Tidak</label>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td>8.</td>
                                <td>Kulit merasa gatal-gatal ?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="kulit_gatal" id="kg1"
                                            value="ya" required>
                                        <label class="form-check-label" for="kg1">Ya</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="kulit_gatal" id="kg2"
                                            value="tidak" required>
                                        <label class="form-check-label" for="kg2">Tidak</label>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td>9.</td>
                                <td>Memiliki riwayat keturunan diabetes dalam keluarga ?</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="keturunan" id="kt1"
                                            value="ya" required>
                                        <label class="form-check-label" for="kt1">Ya</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="keturunan" id="kt2"
                                            value="tidak" required>
                                        <label class="form-check-label" for="kt2">Tidak</label>
                                    </div>
                                </td>
                            </tr>
                            <tr class="text-center">
                                <td colspan="2"><button type="submit" class="btn btn-warning btn-block"
                                        name="test">Deteksi</button></td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div class="col-sm-6">
                    <h1 class="text-center">Hasil Deteksi Diabetes</h1>
                    <table style="width: 100%;">
                        <tr>
                            <td>Terdeteksi Ya</td>
                            <td><?php if(isset($vonis)){echo round($awal[0]['nilai'],4);}else{echo '-';} ?></td>
                        </tr>
                        <tr>
                            <td>Terdeteksi Tidak</td>
                            <td><?php if(isset($vonis)){echo round($awal[1]['nilai'],4);}else{echo '-';} ?></td>
                        </tr>
                        <tr class="text-center">
                            <td colspan="2">Hasil Deteksi : </td>
                        </tr>
                        <tr class="text-center" style="background-color: yellow;">
                            <td colspan="2"><b><?php if(isset($vonis)){echo $vonis;}else{echo '-';} ?></b> </td>
                        </tr>
                    </table>
                </div>
            </div>

        </div>
    </div>



    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous">
    </script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    -->


</body>

</html>