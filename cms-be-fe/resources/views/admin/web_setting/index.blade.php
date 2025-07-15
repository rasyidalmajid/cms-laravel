@extends('admin.layouts.app')

@section('title', 'Kontak & Web Setting')

@section('content')
<div class="d-flex justify-content-between align-items-center mb-3">
    <h2>Data Kontak & Web Setting</h2>
    <a href="{{ route('admin.web_setting.edit') }}" class="btn btn-primary">Edit</a>
</div>
@if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
@endif
<table class="table table-bordered w-50">
    <tr><th>Judul Website</th><td>{{ $setting->judul_website }}</td></tr>
    <tr><th>Title</th><td>{{ $setting->title }}</td></tr>
    <tr><th>Alamat</th><td>{{ $setting->alamat }}</td></tr>
    <tr><th>Email</th><td>{{ $setting->email }}</td></tr>
    <tr><th>No. Telp</th><td>{{ $setting->no_telp }}</td></tr>
    <tr><th>Facebook</th><td>{{ $setting->facebook }}</td></tr>
    <tr><th>Twitter</th><td>{{ $setting->twitter }}</td></tr>
    <tr><th>Google Plus</th><td>{{ $setting->google_plus }}</td></tr>
    <tr><th>Running Text</th><td>{{ $setting->run_text }}</td></tr>
</table>
@endsection
