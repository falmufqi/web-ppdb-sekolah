<?php

include "pondasi/kepala.php";
include "pondasi/kiri.php";

?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="d-flex align-items-center">
            <div class="mr-auto">
                <h3 class="page-title">Data Pendaftar</h3>
                <div class="d-inline-block align-items-center">
                    <nav>
                        <a onclick="PrintDoc()" class="btn btn-success md-2 no-print">Print Data</a>
                        <a onclick="tableHtmlToExcel('tabel', 'Data Pendaftar')" class="btn btn-warning no-print">Export To Excel</a>
                    </nav>
                </div>
            </div>

        </div>
    </div>


    <!-- Main content -->
    <section class="content">

        <div class="row">

            <div class="col-12">
                <div class="box">
                    <!-- /.box-header -->
                    <div class="box-body no-padding" id="tabel">
                        <div class="table-responsive">
                            <table class="table table-hover" id="isi_tabel">
                                <tr>
                                    <th>Id</th>
                                    <th>Nama Siswa</th>
                                    <th>Jenis Kelamin</th>
                                    <th>Asal Sekolah</th>
                                    <th>Jurusan</th>
                                    <th>Agama</th>

                                    <th class="no-print">Aksi</th>
                                </tr>
                                <?php
                                $sql = mysqli_query($conn, "SELECT * FROM ppdb");
                                while ($b = mysqli_fetch_assoc($sql)) {
                                    echo "
                                    <tr>
                                    <td>" . $b['id'] . "                     
                                    </td>
                                    <td>" . $b['nama_siswa'] . "
                                    </td>
                                    <td>" . $b['jenis_kel'] . "
                                    </td>
                                    <td>" . $b['asal_sklh'] . "
                                    </td>
                                    <td>" . $b['jurusan'] . "
                                    </td>
                                    <td>" . $b['agama'] . "
                                    </td>

                                    <td>
                                    <a href='pendaftar-edit.php?id=" . $b['id'] . "' class='btn btn-primary'><i class='fa fa-edit'></i></a>
                                    <a href='pendaftar-hapus.php?id=" . $b['id'] . "' class='btn btn-danger'><i class='fa fa-trash'></i></a>
                                    </td>
                                </tr>
                                    ";
                                }
                                ?>

                            </table>
                        </div>
                    </div>
                    <!-- Script Untuk Button Print & Export Excel -->
                    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" class="no-print"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" class="no-print"></script>
                    <script src="https://code.jquery.com/jquery-3.6.0.min.js" class="no-print"></script>
                    <script src="http://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js" class="no-print"></script>
                    <script>
                        $(document).ready(function() {
                            $('#isi_tabel').DataTable();
                        });
                        //Print Function//
                        function PrintDoc() {

                            var toPrint = document.getElementById('tabel');
                            var popupWin = window.open('');

                            popupWin.document.open();

                            popupWin.document.write('<html><title>::Print Data::</title><link rel="stylesheet" type="text/css" href="css/print.css" /></head><body onload="window.print()">')
                            popupWin.document.write(toPrint.outerHTML);
                            popupWin.document.write('</html>');
                            popupWin.document.close();
                        }
                        // Export To Excel Function//
                        function tableHtmlToExcel(tabel, filename = '') {
                            var downloadLink;
                            var dataType = 'application/vnd.ms-excel';
                            var tableSelect = document.getElementById(tabel);
                            var tableHTML = tableSelect.outerHTML.replace(/ /g, '%20');

                            filename = filename ? filename + '.xls' : 'excel_data.xls';

                            downloadLink = document.createElement("a");

                            document.body.appendChild(downloadLink);

                            if (navigator.msSaveOrOpenBlob) {
                                var blob = new Blob(['\ufeff', tableHTML], {
                                    type: dataType
                                });
                                navigator.msSaveOrOpenBlob(blob, filename);
                            } else {
                                downloadLink.href = 'data:' + dataType + ', ' + tableHTML;

                                downloadLink.download = filename;

                                downloadLink.click();
                            }
                        }
                    </script>
                    <!-- /Print & Export Excel-->
                    <!-- /.box-body -->

                </div>
                <!-- /.box -->
            </div>

        </div>
        <!-- /.row -->

    </section>
    <!-- /.content -->
</div>
<?php

include "pondasi/kaki.php";

?>