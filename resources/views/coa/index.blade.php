@extends('layouts.dashboard')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-header">
            <div class="d-flex justify-content-between align-items-center">
                <div>
                    CRUD COA
                </div>
                <div>
                    <a href="{{ route('coa.create') }}" class="btn btn-primary">Create</a>
                </div>
            </div>
        </div>
        <div class="card-body">
            <table class="table">
                <thead>
                    <tr>
                        <th>
                            Account Number
                        </th>
                        <th>
                             Account Name
                        </th>
                        <th>
                            NIP - Name
                        </th>
                        <th>
                            Nominal Budget
                        </th>
                        <th>
                            Action
                        </th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($datas as $item)
                    <tr>
                        <td>
                            {{ $item->noakun }}
                        </td>
                        <td>
                            {{ $item->nama_akun }}
                        </td>
                        <td>
                            {{ $item->user->nip }} - {{$item->user->nama}}
                        </td>
                        <td>
                            {{ $item->nominal_anggaran }}
                        </td>
                        <td class="d-flex align-items-center">
                            <div>
                                <a href="{{ route('coa.edit', $item->id) }}" class="btn btn-success ml-3">Update</a>
                            </div>
                            <div>
                                <form action="{{ route('coa.destroy', $item->id) }}" method="post">
                                    @csrf
                                    @method('delete')
                                    <button class="btn btn-danger ml-3">Delete</button>
                                </form>
                            </div>
                            @if ($item->status == 'proses' && Auth::user()->jabatan != 'wd2')
                            <div>
                                <form action="{{ route('coa.validasi', $item->id) }}" method="post">
                                    @csrf
                                    <input type="hidden" name="status" value="disetujui">
                                    <button class="btn btn-info ml-5">Accept</button>
                                </form>
                            </div>
                            @else
                            <div></div>
                            @endif
                        </td>
                    </tr>
                    @empty
                    <tr>
                        <th>
                            Belum Ada Data
                        </th>
                    </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
