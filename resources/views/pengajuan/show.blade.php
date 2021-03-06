@extends('layouts.dashboard')

@section('content')
    <div class="container mt-4">
        <div class="card">
            <div class="card-header">
                <div class="d-flex justify-content-between align-items-center">
                    <div>
                        Detail Item Pengajuan
                    </div>
                    <div>
                        <a href="{{ route('pengajuan.index') }}" class="btn btn-primary">Kembali</a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <table class="table">
                    <tr>
                        <th>Tanggal Pengajuan</th>
                        <th>:</th>
                        <td>
                            {{ $pengajuan->tanggal_pengajuan }}
                        </td>
                    </tr>
                    <tr>
                        <th>Nama Pengaju</th>
                        <th>:</th>
                        <td>
                            {{ $pengajuan->user->nama }}
                        </td>
                    </tr>
                    <tr>
                        <th>Prodi</th>
                        <th>:</th>
                        <td>
                            {{ $pengajuan->prodi }}
                        </td>
                    </tr>
                    <tr>
                        <th>Status</th>
                        <th>:</th>
                        <td>
                            <div class="badge badge-{{ $pengajuan->status == 'selesai' ? 'success' : 'danger' }} text-uppercase">{{ $pengajuan->status }}</div>
                        </td>
                    </tr>
                </table>
                <div class="card">
                    <div class="card-header">
                       Tabel Pengajuan
                    </div>
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
                            </tr>
                            @endforeach
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
