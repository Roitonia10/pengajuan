@extends('layouts.dashboard')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">
            <div class="d-flex justify-content-between align-items-center">
                <div>
                    Dashboard
                </div>
            </div>
        </div>
        <div class="card-body mt-4">
            <div class="row">

                <!-- Earnings (Monthly) Card Example -->

                <div class="col-xl-5 col-md-15 mb-7">
                    <div class="card border-left-primary shadow h-100 py-4 ">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-4">
                                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-2">
                                        Dana Belum Turun</div>
                                    <div class="h5 mb-3 font-weight-bold text-gray-800">{{ $proses }}</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-edit fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xl-5 col-md-15 mb-7">
                    <div class="card border-left-info shadow h-100 py-4">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-4">
                                    <div class="text-xs font-weight-bold text-info text-uppercase mb-2">
                                        Pengajuan Diterima</div>
                                    <div class="h5 mb-3 font-weight-bold text-gray-800">{{ $terima }}</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-clone fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xl-5 col-md-15 mb-7 mt-4">
                    <div class="card border-left-warning shadow h-100 py-4">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-4">
                                    <div class="text-xs font-weight-bold text-warning text-uppercase mb-2">
                                        Dana Cair</div>
                                    <div class="h5 mb-3 font-weight-bold text-gray-800">{{ $selesai }}</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xl-5 col-md-15 mb-7 mt-4">
                    <div class="card border-left-success shadow h-100 py-4">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-4">
                                    <div class="text-xs font-weight-bold text-success text-uppercase mb-2">
                                        Coa Disetujui</div>
                                    <div class="h5 mb-3 font-weight-bold text-gray-800">{{ $coa }}</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-check fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Earnings (Monthly) Card Example -->
            </div>
        </div>
    </div>
</div>
@endsection
