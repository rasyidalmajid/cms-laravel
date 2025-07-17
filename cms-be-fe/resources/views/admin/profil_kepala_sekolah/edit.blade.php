@extends('admin.layouts.app')
@section('title', 'Edit Profil Kepala Sekolah')
@section('content')
<div class="d-flex justify-content-between align-items-center mb-3">
    <h2>Edit Profil Kepala Sekolah</h2>
</div>
@if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
@endif
<div class="card mb-4">
    <div class="card-body">
        <form method="POST" action="{{ route('admin.profil_kepala_sekolah.update') }}" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="mb-3">
                <label>Nama Kepala Sekolah</label>
                <input type="text" name="nama_kepala_sekolah" class="form-control" required value="{{ old('nama_kepala_sekolah', $profil->nama_kepala_sekolah) }}">
            </div>
            <div class="mb-3">
                <label>Alamat</label>
                <textarea name="alamat" class="form-control" required>{{ old('alamat', $profil->alamat) }}</textarea>
            </div>
            <div class="mb-3">
                <label>Sambutan</label>
                <textarea name="sambutan" id="sambutan" class="form-control" rows="6" required>{{ old('sambutan', $profil->sambutan) }}</textarea>
            </div>
            <div class="mb-3">
                <label>Foto Kepala Sekolah</label><br>
                @if($profil->foto)
                    <img src="{{ asset('assets/images/' . $profil->foto) }}" alt="Foto Kepala Sekolah" style="max-height:100px; margin-bottom:8px;">
                @endif
                <input type="file" name="foto" class="form-control">
                <small class="text-muted">Biarkan kosong jika tidak ingin mengubah foto.</small>
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
        </form>
    </div>
</div>
@endsection

@push('scripts')
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            $('#sambutan').summernote({
                height: 250
            });
        });
    </script>
@endpush
