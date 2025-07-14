@extends('layouts.app')
@section('title', 'Beranda | SMAN 1 Tengaran')
@section('content')

{{-- SLIDER CAROUSEL --}}
@if($sliders->count())
<div id="mainCarousel" class="carousel slide mb-5" data-bs-ride="carousel">
  <div class="carousel-inner">
    @foreach($sliders as $i => $slider)
      <div class="carousel-item @if($i==0) active @endif">
        <img src="{{ asset('assets/slider/' . $slider->picture) }}" class="d-block w-100 rounded" alt="Slider" style="max-height:350px;object-fit:cover;">
        @if($slider->title || $slider->desc)
        <div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50 rounded">
          <h5>{{ $slider->title }}</h5>
          <p>{{ $slider->desc }}</p>
        </div>
        @endif
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
    <img src="{{ asset('assets/images/kepala-sekolah.jpg') }}" alt="Kepala Sekolah" class="img-fluid rounded-circle shadow mb-2" style="max-width: 150px;">
    <div class="fw-bold mt-2">Drs. Tri Ajar Suprapto Al Kusworo, M.Pd</div>
    <div class="small text-muted">Kepala Sekolah</div>
  </div>
  <div class="col-md-6 d-flex align-items-center">
    <div>
      <h5 class="fw-bold text-primary mb-2">Sambutan Kepala Sekolah</h5>
      <div class="mb-2" style="font-size: 1.05rem;">
        Assalamu’alaikum Wr. Wb.<br>
        Selamat datang di website resmi SMA Negeri 1 Tengaran. Kami berkomitmen untuk memberikan layanan pendidikan terbaik dan membangun generasi muda yang berkarakter, berprestasi, dan berwawasan global. Silakan jelajahi website ini untuk mengenal lebih jauh tentang sekolah kami.<br>
        <span class="fw-bold">- Drs. Tri Ajar Suprapto Al Kusworo, M.Pd</span>
      </div>
    </div>
  </div>
  <div class="col-md-3">
    <div class="card h-100 shadow-sm">
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
        <a href="#" class="btn btn-link p-0">Lihat semua agenda &rarr;</a>
      </div>
    </div>
  </div>
</div>

{{-- GALERI --}}
<div class="mb-5">
  <h4 class="mb-3 text-primary">Galeri Foto</h4>
  <div class="row g-3">
    @foreach($galeri as $foto)
      <div class="col-6 col-md-3">
        <img src="{{ asset('assets/gallery/' . $foto->gambar) }}" class="img-fluid rounded shadow-sm" alt="Galeri">
        <div class="small mt-1">{{ $foto->title }}</div>
      </div>
    @endforeach
  </div>
  <a href="/galeri" class="btn btn-outline-primary btn-sm mt-3">Lihat Galeri Lengkap</a>
</div>
@endsection
