@extends('admin.layouts.app')
@section('title', 'Edit Jam Kerja')
@section('content')
<div class="mb-3">
    <h2>Edit Jam Kerja</h2>
</div>
<form method="POST" action="{{ route('admin.jam_kerja.update', $jamKerja->id) }}">
    @csrf
    @method('PUT')
    <div class="mb-3">
        <label>Hari</label>
        <input type="text" name="hari" class="form-control" required value="{{ old('hari', $jamKerja->hari) }}">
    </div>
    <div class="mb-3">
        <label>Jam Mulai</label>
        <input type="time" name="jam_mulai" class="form-control" required value="{{ old('jam_mulai', $jamKerja->jam_mulai) }}">
    </div>
    <div class="mb-3">
        <label>Jam Selesai</label>
        <input type="time" name="jam_selesai" class="form-control" required value="{{ old('jam_selesai', $jamKerja->jam_selesai) }}">
    </div>
    <div class="mb-3">
        <label>Keterangan (opsional)</label>
        <input type="text" name="keterangan" class="form-control" value="{{ old('keterangan', $jamKerja->keterangan) }}">
    </div>
    <button type="submit" class="btn btn-success">Update</button>
    <a href="{{ route('admin.jam_kerja.index') }}" class="btn btn-secondary">Batal</a>
</form>
@endsection
