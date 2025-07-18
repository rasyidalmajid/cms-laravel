@extends('admin.layouts.app')

@section('title', 'Edit Admin')

@section('content')
<div class="mb-3">
    <h2>Edit Admin</h2>
</div>
<form method="POST" action="{{ route('admin.user.update', $user->id) }}">
    @csrf
    @method('PUT')
    <div class="mb-3">
        <label>Username</label>
        <input type="text" name="username" class="form-control" required value="{{ old('username', $user->username) }}">
    </div>
    <div class="mb-3">
        <label>Nama</label>
        <input type="text" name="nama" class="form-control" required value="{{ old('nama', $user->nama) }}">
    </div>
    <div class="mb-3">
        <label>NIK (opsional)</label>
        <input type="text" name="nik" class="form-control" value="{{ old('nik', $user->nik) }}">
    </div>
    <div class="mb-3">
        <label>Password (kosongkan jika tidak diubah)</label>
        <input type="password" name="password" class="form-control">
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
    <button type="submit" class="btn btn-success">Update</button>
    <a href="{{ route('admin.user.index') }}" class="btn btn-secondary">Batal</a>
</form>
@endsection
