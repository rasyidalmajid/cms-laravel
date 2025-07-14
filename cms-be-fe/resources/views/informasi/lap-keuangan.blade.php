@extends('layouts.app')

@section('title', 'Laporan Keuangan | SMAN 1 Tengaran')

@section('content')
<h2 class="mb-4 text-primary">Laporan Keuangan</h2>
<div class="card shadow-sm mb-4">
    <div class="card-body">
        <table class="table table-bordered table-striped">
            <thead class="table-primary">
                <tr>
                    <th>Tahun</th>
                    <th>Jenis Laporan</th>
                    <th>File</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>2023</td>
                    <td>Laporan BOS</td>
                    <td><a href="#" class="btn btn-sm btn-outline-primary">Download</a></td>
                </tr>
                <tr>
                    <td>2022</td>
                    <td>Laporan BOS</td>
                    <td><a href="#" class="btn btn-sm btn-outline-primary">Download</a></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
@endsection
