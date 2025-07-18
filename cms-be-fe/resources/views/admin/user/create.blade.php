@extends('admin.layouts.app')

@section('title', 'Tambah Admin')

@section('content')
<div class="mb-3">
    <h2>Tambah Admin</h2>
</div>
<form method="POST" action="{{ route('admin.user.store') }}">
    @csrf
    <div class="mb-3">
        <label>Username</label>
        <input type="text" name="username" class="form-control" required value="{{ old('username') }}">
    </div>
    <div class="mb-3">
        <label>Nama</label>
        <input type="text" name="nama" class="form-control" required value="{{ old('nama') }}">
    </div>
    <div class="mb-3">
        <label>NIK (opsional)</label>
        <input type="text" name="nik" class="form-control" value="{{ old('nik') }}">
    </div>
    <div class="mb-3">
        <label>Password</label>
        <input type="password" name="password" class="form-control" required>
    </div>
    @if($errors->any())
        <div class="alert alert-danger">
            <ul class="mb-0">
                @foreach($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    <button type="submit" class="btn btn-success">Simpan</button>
    <a href="{{ route('admin.user.index') }}" class="btn btn-secondary">Batal</a>
</form>
@endsection
