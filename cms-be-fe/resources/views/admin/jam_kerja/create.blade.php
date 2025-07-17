@extends('admin.layouts.app')
@section('title', 'Tambah Jam Kerja')
@section('content')
<div class="mb-3">
    <h2>Tambah Jam Kerja</h2>
</div>
<form method="POST" action="{{ route('admin.jam_kerja.store') }}">
    @csrf
    <div class="mb-3">
        <label>Hari</label>
        <input type="text" name="hari" class="form-control" required value="{{ old('hari') }}">
    </div>
    <div class="mb-3">
        <label>Jam Mulai</label>
        <input type="time" name="jam_mulai" class="form-control" required value="{{ old('jam_mulai') }}">
    </div>
    <div class="mb-3">
        <label>Jam Selesai</label>
        <input type="time" name="jam_selesai" class="form-control" required value="{{ old('jam_selesai') }}">
    </div>
    <div class="mb-3">
        <label>Keterangan (opsional)</label>
        <input type="text" name="keterangan" class="form-control" value="{{ old('keterangan') }}">
    </div>
    <button type="submit" class="btn btn-success">Simpan</button>
    <a href="{{ route('admin.jam_kerja.index') }}" class="btn btn-secondary">Batal</a>
</form>
@endsection
