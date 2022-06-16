<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>
</head>
<body>

    <div class="container mt-4">
        <div class="card">
            <div class="card-header">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <h2><b>PERMOHONAN PERSETUJUAN PENCAIRAN DANA FAKULTAS TEKNOLOGI INFORMASI </b></h2>
                        </div>
                    <hr>
                    <p> Berikut ini informasi detail mengenai pencairan dana :
                    <div>
                        {{-- <a href="{{ route('pengajuan.index') }}" class="btn btn-primary">Kembali</a> --}}
                    </div>
                </div>
            </div>
            <div class="card-body">
                <table class="table">
                    <tr>
                        <th style = "width : 30%;"> Tanggal Pengajuan</th>
                        <th>:</th>
                        <td>
                            {{ $pengajuan->tanggal_pengajuan }} <br>
                        </td>
                    </tr>
                    <tr>
                        <th style = "width : 30%;">Program Studi</th>
                        <th>:</th>
                        <td>
                            {{ $pengajuan->prodi }}
                        </td>
                    </tr>
                    <tr>
                        <th style = "width : 30%;"> Nama Pengaju</th>
                        <th>:</th>
                        <td>
                            {{ $pengajuan->user->nama }} <br>
                        </td>
                    </tr>
                    <tr>
                        <th style = "width : 30%;">Status Pengajuan  </th>
                        <th>:</th>
                        <td>
                            <div class="badge badge-{{ $pengajuan->status == 'selesai' ? 'success' : 'danger' }} text-uppercase">{{ $pengajuan->status }}</div>
                        </td> <br>
                    </tr>
                </table>
                <div class="card">
                    <div class="card-header"> <br>
                        <b> Tabel Pengajuan : </b>
                    </div> <br>
                    <div class="card-body">
                        <table style="width: 100%" border="1">
                        <thead>
                            <tr>
                                <th>
                                    Account Number
                                </th>
                                <th>
                                    Account Name
                                </th>
                                <th>
                                    Activity Name
                                </th>
                                <th>
                                    Nominal Budget
                                </th>
                                <th>
                                    Realization
                                </th>
                            </tr>
                        </thead>
                            @foreach ($items as $item)
                            <tr>
                                <th>{{ $item->coa->noakun }}</th>
                                <th>{{ $item->coa->nama_akun }}</th>
                                <th>{{ $item->nama_kegiatan }}</th>
                                <th>Rp.{{ $item->jumlah_pengajuan }}</th>
                                <th>Rp.{{ $item->realisasi }}</th>
                            </tr>
                            @endforeach
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
