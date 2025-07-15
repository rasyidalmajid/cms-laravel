@extends('admin.layouts.app')

@section('title', 'Tambah Page')

@section('content')
<div class="mb-3">
    <h2>Tambah Page Baru</h2>
</div>
<form method="POST" action="{{ route('admin.pages.store') }}">
    @csrf
    <div class="mb-3">
        <label>Judul</label>
        <input type="text" name="title" class="form-control" required value="{{ old('title') }}">
    </div>
    <div class="mb-3">
        <label>Slug (key_page)</label>
        <input type="text" name="key_page" class="form-control" required value="{{ old('key_page') }}">
    </div>
    <div class="mb-3">
        <label>Pilih Menu</label>
        <select name="menu_id" class="form-control" required>
            <option value="">-- Pilih Menu --</option>
            @foreach($menus as $menu)
                <option value="{{ $menu->id }}" {{ old('menu_id') == $menu->id ? 'selected' : '' }}>{{ $menu->nama }}</option>
            @endforeach
        </select>
    </div>
    <div class="mb-3">
        <label>Konten</label>
        <textarea name="content" id="content" class="form-control" rows="8" required>{{ old('content') }}</textarea>
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
    <a href="{{ route('admin.pages.index') }}" class="btn btn-secondary">Batal</a>
</form>
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
@endsection
