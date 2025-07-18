@extends('admin.layouts.app')

@section('title', 'Tambah Slider')

@section('content')
<div class="mb-3">
    <h2>Tambah Slider</h2>
</div>
<form method="POST" action="{{ route('admin.slider.store') }}" enctype="multipart/form-data">
    @csrf
    <div class="mb-3">
        <label>Gambar Slider</label>
        <input type="file" name="picture" class="form-control" required>
    </div>
    <div class="mb-3">
        <label>Link (opsional)</label>
        <input type="url" name="link" class="form-control" value="{{ old('link') }}">
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
    <a href="{{ route('admin.slider.index') }}" class="btn btn-secondary">Batal</a>
</form>
@endsection
