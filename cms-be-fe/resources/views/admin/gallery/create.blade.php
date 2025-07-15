@extends('admin.layouts.app')

@section('title', 'Tambah Album Gallery')

@section('content')
<div class="mb-3">
    <h2>Tambah Album Gallery</h2>
</div>
<form method="POST" action="{{ route('admin.gallery.store') }}" enctype="multipart/form-data">
    @csrf
    <div class="mb-3">
        <label>Nama Album</label>
        <input type="text" name="nama_album" class="form-control" required value="{{ old('nama_album') }}">
    </div>
    <div class="mb-3">
        <label>Type</label>
        <input type="text" name="type" class="form-control" required value="{{ old('type') }}">
    </div>
    <div class="mb-3">
        <label>Thumbnail (opsional)</label>
        <input type="file" name="thumbnail" class="form-control" accept="image/jpeg,image/png,image/jpg,image/gif">
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
    <a href="{{ route('admin.gallery.index') }}" class="btn btn-secondary">Batal</a>
</form>
@endsection
