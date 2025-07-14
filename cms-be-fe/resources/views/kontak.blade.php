@extends('layouts.app')
@section('title', 'Kontak | ' . ($webSetting->nama_sekolah ?? 'SMK Kesehatan Darussalam Begras'))
@section('content')
<h2 class="mb-4 text-primary">Kontak Kami</h2>
@if(session('success'))
  <div class="alert alert-success">{{ session('success') }}</div>
@endif
<div class="row">
    <div class="col-md-6 mb-4">
        <div class="card shadow-sm">
            <div class="card-body">
                <h5 class="fw-bold mb-3">Alamat</h5>
                <p class="mb-1">{{ $webSetting->alamat ?? 'Jl. Raya Salatiga - Solo Km. 10, Tengaran, Kab. Semarang, Jawa Tengah' }}</p>
                <p class="mb-1">Telp: {{ $webSetting->telepon ?? '(0298) 321656' }}</p>
                <p>Email: {{ $webSetting->email ?? 'smanegeri1tengaran@gmail.com' }}</p>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="card shadow-sm">
            <div class="card-body">
                <h5 class="fw-bold mb-3">Form Kontak</h5>
                <form method="POST" action="{{ route('kontak.store') }}">
                    @csrf
                    <div class="mb-3">
                        <label for="nama" class="form-label">Nama</label>
                        <input type="text" class="form-control" id="nama" name="nama" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="mb-3">
                        <label for="pesan" class="form-label">Pesan</label>
                        <textarea class="form-control" id="pesan" name="pesan" rows="3" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Kirim</button>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
