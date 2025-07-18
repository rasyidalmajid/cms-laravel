@extends('admin.layouts.app')

@section('title', 'Edit Page')

@section('content')
<div class="mb-3">
    <h2>Edit Page</h2>
</div>
<form method="POST" action="{{ route('admin.pages.update', $page->id) }}" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <div class="mb-3">
        <label>Judul</label>
        <input type="text" name="title" class="form-control" required value="{{ old('title', $page->title) }}">
    </div>
    <div class="mb-3">
        <label>Pilih Menu</label>
        <select name="menu_id" class="form-control" required>
            <option value="">-- Pilih Menu --</option>
            @foreach($menus as $menu)
                <option value="{{ $menu->id }}" {{ (old('menu_id', $selectedMenuId ?? null) == $menu->id) ? 'selected' : '' }}>{{ $menu->nama }}</option>
            @endforeach
        </select>
    </div>
    <div class="mb-3">
        <label>Konten</label>
        <textarea name="content" id="content" class="form-control" rows="8" required>{{ old('content', $page->content) }}</textarea>
    </div>
    <div class="mb-3">
        <label>Meta Description <span class="text-muted">(Opsional)</span></label>
        <textarea name="meta_desc" class="form-control" rows="2" placeholder="Deskripsi singkat halaman untuk hasil pencarian Google">{{ old('meta_desc', $page->meta_desc) }}</textarea>
        <small class="form-text text-muted">Meta Description membantu Google dan mesin pencari lain memahami ringkasan isi halaman Anda. Tampilkan kalimat yang menarik dan relevan.</small>
    </div>
    <div class="mb-3">
        <label>Meta Keywords <span class="text-muted">(Opsional)</span></label>
        <input type="text" name="meta_key" class="form-control" value="{{ old('meta_key', $page->meta_key) }}" placeholder="kata kunci, dipisah, koma">
        <small class="form-text text-muted">Meta Keywords adalah kata kunci utama yang relevan dengan halaman ini, dipisahkan dengan koma. Tidak wajib, tapi bisa membantu SEO.</small>
    </div>
    <div class="mb-3">
        <label>Meta Text <span class="text-muted">(Opsional)</span></label>
        <textarea name="meta_text" class="form-control" rows="2" placeholder="Teks meta tambahan (jika diperlukan)">{{ old('meta_text', $page->meta_text) }}</textarea>
        <small class="form-text text-muted">Meta Text bisa digunakan untuk informasi tambahan terkait SEO atau kebutuhan meta lain.</small>
    </div>
    <div class="mb-3">
        <label>Upload Berkas (opsional)</label>
        <input type="file" name="berkas_upload[]" class="form-control" accept=".pdf,.doc,.docx,.xls,.xlsx,.ppt,.pptx,.txt,.zip,.rar">
    </div>
    <div class="mb-3">
        <label>Pilih Berkas yang Sudah Ada (opsional)</label>
        <select name="berkas_pilih[]" class="form-control">
            <option value="">-- Pilih Berkas --</option>
            @foreach(\App\Models\Berkas::all() as $berkas)
                <option value="{{ $berkas->id }}" {{ $page->berkas->contains($berkas->id) ? 'selected' : '' }}>{{ $berkas->nama_berkas }} ({{ $berkas->berkas }})</option>
            @endforeach
        </select>
    </div>
    <div class="mb-3">
        <label>Berkas yang Sudah Terhubung:</label>
        <ul>
            @foreach($page->berkas as $berkas)
                <li>{{ $berkas->nama_berkas }} (<a href="{{ asset('assets/berkas/'.$berkas->berkas) }}" target="_blank">{{ $berkas->berkas }}</a>)</li>
            @endforeach
        </ul>
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
    <a href="{{ route('admin.pages.index') }}" class="btn btn-secondary">Batal</a>
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
