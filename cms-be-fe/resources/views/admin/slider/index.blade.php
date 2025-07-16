@extends('admin.layouts.app')

@section('title', 'Manajemen Slider')

@section('content')
<div class="mb-3 d-flex justify-content-between align-items-center">
    <h2>Manajemen Slider</h2>
    <a href="{{ route('admin.slider.create') }}" class="btn btn-primary">Tambah Slider</a>
</div>
@if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
@endif
<table class="table table-bordered table-striped">
    <thead>
        <tr>
            <th>#</th>
            <th>Gambar</th>
            <th>Urutan</th>
            <th>Link</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        @foreach($sliders as $slider)
        <tr>
            <td>{{ $loop->iteration }}</td>
            <td>
                @if($slider->picture)
                    <img src="{{ asset('assets/slider/' . $slider->picture) }}" alt="Slider" style="max-width:80px;">
                @endif
            </td>
            <td>{{ $slider->no_urut }}</td>
            <td><a href="{{ $slider->link }}" target="_blank">{{ $slider->link }}</a></td>
            <td>
                <a href="{{ route('admin.slider.edit', $slider->id) }}" class="btn btn-sm btn-warning">Edit</a>
                <form action="{{ route('admin.slider.destroy', $slider->id) }}" method="POST" style="display:inline-block;" onsubmit="return confirm('Yakin hapus slider ini?')">
                    @csrf
                    @method('DELETE')
                    <button class="btn btn-sm btn-danger">Hapus</button>
                </form>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
@endsection
