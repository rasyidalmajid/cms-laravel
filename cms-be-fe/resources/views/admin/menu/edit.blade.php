@extends('admin.layouts.app')

@section('title', 'Edit Menu')

@section('content')
<div class="mb-3">
    <h2>Edit Menu</h2>
</div>
<form method="POST" action="{{ route('admin.menu.update', $menu->id) }}">
    @csrf
    @method('PUT')
    <div class="mb-3">
        <label>Posisi Menu</label>
        @php
        $menus = \App\Models\Menu::orderBy('urutan')->get();
        @endphp
        <select name="urutan" class="form-select">
            <option value="-1" {{ $menu->urutan == 0 ? 'selected' : '' }}>Paling atas</option>
            @foreach($menus as $m)
                @if($m->id != $menu->id)
                    <option value="{{ $m->urutan }}" {{ ($menu->urutan - 1 == $m->urutan) ? 'selected' : '' }}>
                        Setelah {{ $m->nama }}
                    </option>
                @endif
            @endforeach
        </select>
        <small class="form-text text-muted">Pilih posisi menu dalam navbar.</small>
    </div>

    <div class="mb-3">
        <label>Nama Menu</label>
        <input type="text" name="nama" class="form-control" required value="{{ old('nama', $menu->nama) }}">
    </div>
    <div class="mb-3">
        <label>Preview Urutan Menu Saat Ini</label>
        @php
            $menus = \App\Models\Menu::orderBy('urutan')->get();
            $urutanCounts = $menus->groupBy('urutan')->map->count();
            $hasDuplicate = $urutanCounts->filter(function($c){return $c>1;})->count() > 0;
        @endphp
        @if($hasDuplicate)
            <div class="alert alert-warning">Ada menu dengan urutan ganda! Silakan perbaiki urutan agar unik.</div>
        @endif
        <ol class="mb-0">
            @foreach($menus as $m)
                <li>{{ $m->nama }} <span class="text-muted">(urutan: {{ $m->urutan }})</span></li>
            @endforeach
        </ol>
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
    <a href="{{ route('admin.menu.index') }}" class="btn btn-secondary">Batal</a>
</form>
@endsection
