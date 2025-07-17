@extends('admin.layouts.app')

@section('title', 'Edit Kontak & Web Setting')

@section('content')
<div class="mb-3">
    <h2>Edit Data Kontak & Web Setting</h2>
</div>
<form method="POST" action="{{ route('admin.web_setting.update') }}" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <div class="mb-3">
        <label>Judul Website</label>
        <input type="text" name="judul_website" class="form-control" required value="{{ old('judul_website', $setting->judul_website) }}">
    </div>
    <div class="mb-3">
        <label>Title</label>
        <input type="text" name="title" class="form-control" required value="{{ old('title', $setting->title) }}">
    </div>
    <div class="mb-3">
        <label>Alamat</label>
        <textarea name="alamat" class="form-control" required>{{ old('alamat', $setting->alamat) }}</textarea>
    </div>
    <div class="mb-3">
        <label>Email</label>
        <input type="email" name="email" class="form-control" required value="{{ old('email', $setting->email) }}">
    </div>
    <div class="mb-3">
        <label>No. Telp</label>
        <input type="text" name="no_telp" class="form-control" required value="{{ old('no_telp', $setting->no_telp) }}">
    </div>
    <div class="mb-3">
        <label>Facebook</label>
        <input type="text" name="facebook" class="form-control" value="{{ old('facebook', $setting->facebook) }}">
    </div>
    <div class="mb-3">
        <label>Twitter</label>
        <input type="text" name="twitter" class="form-control" value="{{ old('twitter', $setting->twitter) }}">
    </div>
    <div class="mb-3">
        <label>Google Plus</label>
        <input type="text" name="google_plus" class="form-control" value="{{ old('google_plus', $setting->google_plus) }}">
    </div>

    <div class="mb-3">
        <label>Nama Sekolah</label>
        <input type="text" name="nama_sekolah" class="form-control" required value="{{ old('nama_sekolah', $setting->nama_sekolah) }}">
    </div>
    <div class="mb-3">
        <label>Logo Sekolah</label><br>
        @if($setting->logo)
            <img src="{{ asset('assets/images/' . $setting->logo) }}" alt="Logo" style="max-height:60px; margin-bottom:8px;">
        @endif
        <input type="file" name="logo" class="form-control">
        <small class="text-muted">Biarkan kosong jika tidak ingin mengubah logo.</small>
    </div>
    <div class="mb-3">
        <label>Meta Description <span class="text-muted">(Opsional)</span></label>
        <textarea name="meta_desc" class="form-control" rows="2" placeholder="Deskripsi singkat website untuk hasil pencarian Google">{{ old('meta_desc', $setting->meta_desc) }}</textarea>
        <small class="form-text text-muted">Meta Description membantu Google dan mesin pencari lain memahami ringkasan isi website Anda. Tampilkan kalimat yang menarik dan relevan.</small>
    </div>
    <div class="mb-3">
        <label>Meta Keywords <span class="text-muted">(Opsional)</span></label>
        <input type="text" name="meta_key" class="form-control" value="{{ old('meta_key', $setting->meta_key) }}" placeholder="kata kunci, dipisah, koma">
        <small class="form-text text-muted">Meta Keywords adalah kata kunci utama yang relevan dengan website ini, dipisahkan dengan koma. Tidak wajib, tapi bisa membantu SEO.</small>
    </div>
    <div class="mb-3">
        <label>Meta Text <span class="text-muted">(Opsional)</span></label>
        <textarea name="meta_text" class="form-control" rows="2" placeholder="Teks meta tambahan (jika diperlukan)">{{ old('meta_text', $setting->meta_text) }}</textarea>
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
    <button type="submit" class="btn btn-success">Update</button>
    <a href="{{ route('admin.web_setting.index') }}" class="btn btn-secondary">Batal</a>
</form>
@endsection
