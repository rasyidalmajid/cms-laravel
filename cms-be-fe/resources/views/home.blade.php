@extends('layouts.app')
@section('title', 'Beranda | SMAN 1 Tengaran')
@section('content')

{{-- SLIDER CAROUSEL --}}
@if($sliders->count())
<div id="mainCarousel" class="carousel slide mb-5" data-bs-ride="carousel">
  <div class="carousel-inner">
    @foreach($sliders as $i => $slider)
      <div class="carousel-item @if($i==0) active @endif">
        <img src="{{ asset('assets/slider/' . $slider->picture) }}" class="d-block w-100 rounded banner-img" alt="Slider">
      </div>
    @endforeach
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#mainCarousel" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#mainCarousel" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>
@endif

{{-- KEPALA SEKOLAH, SAMBUTAN, AGENDA --}}
<div class="row align-items-stretch mb-5 g-3">
  <div class="col-md-3 text-center d-flex flex-column justify-content-center">
    <img src="{{ asset('assets/images/' . $profilKepalaSekolah->foto) }}" alt="Kepala Sekolah" class="img-fluid rounded-circle shadow mb-2" style="max-width: 150px;">
    <div class="fw-bold mt-2">{{ $profilKepalaSekolah->nama_kepala_sekolah }}</div>
    <div class="small text-muted">Kepala Sekolah</div>
  </div>
  <div class="col-md-6 d-flex align-items-center">
    <div>
      <h5 class="fw-bold text-primary mb-2">Sambutan Kepala Sekolah</h5>
      <div class="mb-2" style="font-size: 1.05rem;">
        {!! $profilKepalaSekolah->sambutan !!}
      </div>
    </div>
  </div>
  <div class="col-md-3">
    <div class="card shadow-sm h-auto">
      <div class="card-body">
        <h5 class="card-title text-primary">Agenda & Kegiatan</h5>
        <ul class="list-group list-group-flush mb-2">
          @foreach($agendas as $agenda)
            <li class="list-group-item px-0 py-1 border-0">
              <strong>{{ $agenda->title }}</strong><br>
              <small class="text-muted">{{ $agenda->tgl }}</small>
            </li>
          @endforeach
        </ul>
        <a href="/agenda" class="btn btn-link p-0">Lihat semua agenda &rarr;</a>
      </div>
    </div>
  </div>
</div>

{{-- GALERI --}}
<div class="mb-5 bg-gallery-section">
  <div class="container">
    <h4 class="mb-3 text-primary">Galeri Foto</h4>
    <div class="row g-3">
      @foreach($albums as $foto)
        <div class="col-6 col-md-3">
          <img src="{{ asset('assets/album/' . $foto->thumbnail) }}" class="img-fluid rounded shadow-sm" alt="Galeri">
          <div class="small mt-1">{{ $foto->nama_album }}</div>
        </div>
      @endforeach
    </div>
    <a href="/galeri" class="btn btn-outline-primary btn-sm mt-3">Lihat Galeri Lengkap</a>
  </div>
</div>

{{-- MAP/ PETA SEKOLAH --}}
<div class="mb-5">
  <h4 class="mb-3 text-primary">Lokasi Sekolah</h4>
  <div style="width: 100%; height: 400px;">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3257.59854453919!2d110.39711117400044!3d-7.17206319283276!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e70865dafb8111f%3A0x1f0f4bbae809aceb!2sSMK%20Kesehatan%20Darussalam%20Bergas!5e1!3m2!1sid!2sid!4v1752639226105!5m2!1sid!2sid" style="border:0; width:100%; height:100%;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
  </div>
</div>
@endsection
