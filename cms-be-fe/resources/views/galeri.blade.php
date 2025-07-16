@extends('layouts.app')
@section('title', 'Galeri | SMK Kesehatan Darussalam Begras')
@section('content')
<h2 class="mb-4 text-primary">Album</h2>
@if($albums->count())
  <div class="row g-3 mb-5">
    @foreach($albums as $album)
      <div class="col-6 col-md-3">
        <div class="card h-100 shadow-sm">
          @if($album->thumbnail)
            <img src="{{ asset('assets/album/' . $album->thumbnail) }}" class="card-img-top" alt="{{ $album->nama_album }}">
          @else
            <div class="bg-light d-flex align-items-center justify-content-center" style="height:150px;">No Image</div>
          @endif
          <div class="card-body p-2">
            <div class="fw-bold small text-center">{{ $album->nama_album }}</div>
          </div>
        </div>
      </div>
    @endforeach
  </div>
@else
  <div class="alert alert-warning">Belum ada album galeri.</div>
@endif
@endsection
