

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="icon.png" alt="" style="width: 20%;" class="d-inline-block align-top">
                SiDeDi
            </a>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/uas_spk/view_training.php">Data Training</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/uas_spk/view_naive_bayes.php">Naive Bayes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/uas_spk/view_deteksi.php">Deteksi</a>
                </li>
            </ul>
            <button type="button" class="btn btn-outline-warning btn-sm" data-bs-toggle="modal"
                data-bs-target="#exampleModal">
                Import Data
            </button>
        </div>
    </nav>

    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Import Data Excel</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="import_data.php" method="POST" enctype="multipart/form-data" >
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="formFile" class="form-label">Pilih file Excel</label>
                            <input class="form-control" type="file" id="formFile" required  name="form_excel">
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                        <button type="submit" class="btn btn-primary" name="import_file">Import</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>