@extends('admin.layouts.app')

@section('title', 'Tambah Menu')

@section('content')
<div class="mb-3">
    <h2>Tambah Menu Baru</h2>
</div>
<form method="POST" action="{{ route('admin.menu.store') }}">
    @csrf
    <div class="mb-3">
        <label>Nama Menu</label>
        <input type="text" name="nama" class="form-control" required value="{{ old('nama') }}">
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
    <a href="{{ route('admin.menu.index') }}" class="btn btn-secondary">Batal</a>
</form>
@endsection
