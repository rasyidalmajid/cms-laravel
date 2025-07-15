@extends('admin.layouts.app')

@section('title', 'Edit Album Gallery')

@section('content')
<div class="mb-3">
    <h2>Edit Album Gallery</h2>
</div>
<form method="POST" action="{{ route('admin.gallery.update', $album->id) }}" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <div class="mb-3">
        <label>Nama Album</label>
        <input type="text" name="nama_album" class="form-control" required value="{{ old('nama_album', $album->nama_album) }}">
    </div>
    <div class="mb-3">
        <label>Type</label>
        <input type="text" name="type" class="form-control" required value="{{ old('type', $album->type) }}">
    </div>
    <div class="mb-3">
        <label>Thumbnail (opsional)</label>
        <input type="file" name="thumbnail" class="form-control" accept="image/jpeg,image/png,image/jpg,image/gif">
        @if($album->thumbnail)
            <div class="mt-2">
                <img src="{{ asset('assets/album/'.$album->thumbnail) }}" alt="thumb" width="100">
            </div>
        @endif
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
    <a href="{{ route('admin.gallery.index') }}" class="btn btn-secondary">Batal</a>
</form>
@endsection
