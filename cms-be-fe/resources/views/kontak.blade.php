@extends('layouts.app')
@section('title', 'Kontak | ' . ($webSetting->nama_sekolah ?? 'SMK Kesehatan Darussalam Begras'))
@section('content')
<h2 class="mb-4 text-primary">Kontak Kami</h2>
@if(session('success'))
  <div class="alert alert-success">{{ session('success') }}</div>
@endif
<div class="row mb-4">
    <div class="col-md-6 mb-4">
        <div class="card shadow-sm h-100">
            <div class="card-body">
                <h5 class="fw-bold mb-3">Alamat</h5>
                <p class="mb-1">{{ $webSetting->alamat ?? 'Jl. Raya Salatiga - Solo Km. 10, Tengaran, Kab. Semarang, Jawa Tengah' }}</p>
                <p class="mb-1">Telp: {{ $webSetting->telepon ?? '(0298) 321656' }}</p>
                <p>Email: {{ $webSetting->email ?? 'smanegeri1tengaran@gmail.com' }}</p>
            </div>
        </div>
    </div>
    <div class="col-md-6 mb-4">
        <div class="card shadow-sm h-100">
            <div class="card-body">
                <h5 class="fw-bold mb-3">Media Sosial</h5>
                <ul class="list-unstyled mb-0">
                  @if(!empty($webSetting->facebook))
                    <li class="mb-2"><i class="bi bi-facebook me-2"></i> <a href="{{ $webSetting->facebook }}" target="_blank">Facebook</a></li>
                  @endif
                  @if(!empty($webSetting->twitter))
                    <li class="mb-2"><i class="bi bi-twitter me-2"></i> <a href="{{ $webSetting->twitter }}" target="_blank">Twitter</a></li>
                  @endif
                  @if(!empty($webSetting->google_plus))
                    <li class="mb-2"><i class="bi bi-google me-2"></i> <a href="{{ $webSetting->google_plus }}" target="_blank">Google+</a></li>
                  @endif
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6 mb-4">
        <div class="card shadow-sm h-100">
            <div class="card-body">
                <h5 class="fw-bold mb-3">Jam Kerja</h5>
                <ul class="list-unstyled mb-0">
                  <li>Senin - Kamis: 07.00 - 15.00</li>
                  <li>Jumat: 07.00 - 11.00</li>
                  <li>Sabtu & Minggu: Libur</li>
                </ul>
            </div>
        </div>
    </div>
    <div class="col-md-6 mb-4">
        <div class="card shadow-sm h-100">
            <div class="card-body p-2">
                <h5 class="fw-bold mb-3">Lokasi Sekolah</h5>
                <div style="width: 100%; height: 260px;">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3257.59854453919!2d110.39711117400044!3d-7.17206319283276!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e70865dafb8111f%3A0x1f0f4bbae809aceb!2sSMK%20Kesehatan%20Darussalam%20Bergas!5e1!3m2!1sid!2sid!4v1752639226105!5m2!1sid!2sid" width="525" height="260" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>                </div>
            </div>
        </div>
    </div>
</div>
@endsection
