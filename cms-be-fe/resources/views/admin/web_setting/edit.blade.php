@extends('admin.layouts.app')

@section('title', 'Edit Kontak & Web Setting')

@section('content')
<div class="mb-3">
    <h2>Edit Data Kontak & Web Setting</h2>
</div>
<form method="POST" action="{{ route('admin.web_setting.update') }}">
    @csrf
    @method('PUT')
    <div class="mb-3">
        <label>Judul Website</label>
        <input type="text" name="judul_website" class="form-control" required value="{{ old('judul_website', $setting->judul_website) }}">
    </div>
    <div class="mb-3">
        <label>Title</label>
        <input type="text" name="title" class="form-control" required value="{{ old('title', $setting->title) }}">
    </div>
    <div class="mb-3">
        <label>Alamat</label>
        <textarea name="alamat" class="form-control" required>{{ old('alamat', $setting->alamat) }}</textarea>
    </div>
    <div class="mb-3">
        <label>Email</label>
        <input type="email" name="email" class="form-control" required value="{{ old('email', $setting->email) }}">
    </div>
    <div class="mb-3">
        <label>No. Telp</label>
        <input type="text" name="no_telp" class="form-control" required value="{{ old('no_telp', $setting->no_telp) }}">
    </div>
    <div class="mb-3">
        <label>Facebook</label>
        <input type="text" name="facebook" class="form-control" value="{{ old('facebook', $setting->facebook) }}">
    </div>
    <div class="mb-3">
        <label>Twitter</label>
        <input type="text" name="twitter" class="form-control" value="{{ old('twitter', $setting->twitter) }}">
    </div>
    <div class="mb-3">
        <label>Google Plus</label>
        <input type="text" name="google_plus" class="form-control" value="{{ old('google_plus', $setting->google_plus) }}">
    </div>
    <div class="mb-3">
        <label>Running Text</label>
        <textarea name="run_text" class="form-control">{{ old('run_text', $setting->run_text) }}</textarea>
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
    <a href="{{ route('admin.web_setting.index') }}" class="btn btn-secondary">Batal</a>
</form>
@endsection
