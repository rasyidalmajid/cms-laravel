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
            <img src="{{ asset('assets/album/' . $album->thumbnail) }}" class="card-img-top gallery-img" alt="{{ $album->nama_album }}" style="cursor:pointer;">
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

<!-- Modal untuk preview gambar -->
<div class="modal fade" id="imageModal" tabindex="-1" aria-labelledby="imageModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg">
    <div class="modal-content border-0 position-relative" style="background:rgba(20,20,20,0.92); box-shadow:none;">
      <button type="button" class="btn-close btn-close-white position-absolute top-0 end-0 m-3" data-bs-dismiss="modal" aria-label="Close" style="filter: drop-shadow(0 0 4px #000);"></button>
      <img src="" id="modalImage" class="img-fluid rounded shadow" style="max-height:80vh;object-fit:contain; display:block; margin:auto;" alt="Preview">
    </div>
  </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
  var imageModal = document.getElementById('imageModal');
  var modalImage = document.getElementById('modalImage');
  document.querySelectorAll('.gallery-img').forEach(function(img) {
    img.addEventListener('click', function() {
      modalImage.src = this.src;
      var modal = new bootstrap.Modal(imageModal);
      modal.show();
    });
  });
});
</script>
@endsection
