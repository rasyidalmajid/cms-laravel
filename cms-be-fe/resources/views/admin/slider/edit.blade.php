@extends('admin.layouts.app')

@section('title', 'Edit Slider')

@section('content')
<div class="mb-3">
    <h2>Edit Slider</h2>
</div>
<form method="POST" action="{{ route('admin.slider.update', $slider->id) }}" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <div class="mb-3">
        <label>Gambar Slider</label><br>
        @if($slider->picture)
            <img src="{{ asset('assets/slider/' . $slider->picture) }}" alt="Slider" style="max-width:100px; margin-bottom:8px;">
        @endif
        <input type="file" name="picture" class="form-control">
        <small class="text-muted">Biarkan kosong jika tidak ingin mengubah gambar.</small>
    </div>
    <div class="mb-3">
        <label>Urutan</label>
        <input type="number" name="no_urut" class="form-control" required value="{{ old('no_urut', $slider->no_urut) }}">
    </div>
    <div class="mb-3">
        <label>Link (opsional)</label>
        <input type="url" name="link" class="form-control" value="{{ old('link', $slider->link) }}">
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
    <a href="{{ route('admin.slider.index') }}" class="btn btn-secondary">Batal</a>
</form>
@endsection
