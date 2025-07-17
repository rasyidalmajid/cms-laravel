@extends('admin.layouts.app')
@section('title', 'Jam Kerja')
@section('content')
<div class="d-flex justify-content-between align-items-center mb-3">
    <h2>Jam Kerja</h2>
    <a href="{{ route('admin.jam_kerja.create') }}" class="btn btn-success">+ Tambah Jam Kerja</a>
</div>
@if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
@endif
<table class="table table-bordered">
    <thead>
        <tr>
            <th>Hari</th>
            <th>Jam Mulai</th>
            <th>Jam Selesai</th>
            <th>Keterangan</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        @foreach($jamKerja as $row)
        <tr>
            <td>{{ $row->hari }}</td>
            <td>{{ $row->jam_mulai }}</td>
            <td>{{ $row->jam_selesai }}</td>
            <td>{{ $row->keterangan }}</td>
            <td>
                <a href="{{ route('admin.jam_kerja.edit', $row->id) }}" class="btn btn-sm btn-primary">Edit</a>
                <form action="{{ route('admin.jam_kerja.destroy', $row->id) }}" method="POST" style="display:inline-block">
                    @csrf @method('DELETE')
                    <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Hapus jam kerja?')">Hapus</button>
                </form>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
@endsection
