@extends('admin.layouts.app')

@section('title', 'Tambah Agenda')

@section('content')
<div class="mb-3">
    <h2>Tambah Agenda</h2>
</div>
<form method="POST" action="{{ route('admin.agenda.store') }}">
    @csrf
    <div class="mb-3">
        <label>Judul</label>
        <input type="text" name="title" class="form-control" required value="{{ old('title') }}">
    </div>
    <div class="mb-3">
        <label>Tanggal</label>
        <input type="date" name="tgl" class="form-control" required value="{{ old('tgl') }}">
    </div>
    <div class="mb-3">
        <label>Konten</label>
        <textarea name="content" id="content" class="form-control" rows="8" required>{{ old('content') }}</textarea>
    </div>
    <div class="mb-3">
        <label>Meta Description <span class="text-muted">(Opsional)</span></label>
        <textarea name="meta_desc" class="form-control" rows="2" placeholder="Deskripsi singkat agenda untuk hasil pencarian Google">{{ old('meta_desc') }}</textarea>
        <small class="form-text text-muted">Meta Description membantu Google dan mesin pencari lain memahami ringkasan isi agenda Anda. Tampilkan kalimat yang menarik dan relevan.</small>
    </div>
    <div class="mb-3">
        <label>Meta Keywords <span class="text-muted">(Opsional)</span></label>
        <input type="text" name="meta_key" class="form-control" value="{{ old('meta_key') }}" placeholder="kata kunci, dipisah, koma">
        <small class="form-text text-muted">Meta Keywords adalah kata kunci utama yang relevan dengan agenda ini, dipisahkan dengan koma. Tidak wajib, tapi bisa membantu SEO.</small>
    </div>
    <div class="mb-3">
        <label>Meta Text <span class="text-muted">(Opsional)</span></label>
        <textarea name="meta_text" class="form-control" rows="2" placeholder="Teks meta tambahan (jika diperlukan)">{{ old('meta_text') }}</textarea>
        <small class="form-text text-muted">Meta Text bisa digunakan untuk informasi tambahan terkait SEO atau kebutuhan meta lain.</small>
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
    <button type="submit" class="btn btn-success">Simpan</button>
    <a href="{{ route('admin.agenda.index') }}" class="btn btn-secondary">Batal</a>
</form>
@endsection

@push('scripts')
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.20/dist/summernote-lite.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            $('#content').summernote({
                height: 300
            });
        });
    </script>
@endpush
