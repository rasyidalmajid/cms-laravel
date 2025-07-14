@extends('layouts.app')

@section('title', 'Laporan Kegiatan | SMAN 1 Tengaran')

@section('content')
<h2 class="mb-4 text-primary">Laporan Kegiatan</h2>
<div class="card shadow-sm mb-4">
    <div class="card-body">
        <table class="table table-bordered table-striped">
            <thead class="table-primary">
                <tr>
                    <th>Tanggal</th>
                    <th>Nama Kegiatan</th>
                    <th>File</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>2024-03-10</td>
                    <td>Seminar Pendidikan</td>
                    <td><a href="#" class="btn btn-sm btn-outline-primary">Download</a></td>
                </tr>
                <tr>
                    <td>2024-02-15</td>
                    <td>Lomba Sains</td>
                    <td><a href="#" class="btn btn-sm btn-outline-primary">Download</a></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
@endsection
