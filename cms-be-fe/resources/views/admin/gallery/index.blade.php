@extends('admin.layouts.app')

@section('title', 'Kelola Gallery (Album)')

@section('content')
<div class="d-flex justify-content-between align-items-center mb-3">
    <h2>Daftar Album Gallery</h2>
    <a href="{{ route('admin.gallery.create') }}" class="btn btn-success">+ Tambah Album</a>
</div>
@if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
@endif
<table class="table table-bordered table-striped">
    <thead>
        <tr>
            <th>#</th>
            <th>Nama Album</th>
            <th>Type</th>
            <th>Thumbnail</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        @forelse($albums as $album)
            <tr>
                <td>{{ ($albums->currentPage() - 1) * $albums->perPage() + $loop->iteration }}</td>
                <td>{{ $album->nama_album }}</td>
                <td>{{ $album->type }}</td>
                <td>
                    @if($album->thumbnail)
                        <img src="{{ asset('assets/album/'.$album->thumbnail) }}" alt="thumb" width="60">
                    @else
                        -
                    @endif
                </td>
                <td>
                    <a href="{{ route('admin.gallery.edit', $album->id) }}" class="btn btn-sm btn-primary">Edit</a>
                    <form action="{{ route('admin.gallery.destroy', $album->id) }}" method="POST" style="display:inline-block" onsubmit="return confirm('Yakin hapus album?')">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-sm btn-danger">Hapus</button>
                    </form>
                </td>
            </tr>
        @empty
            <tr><td colspan="5" class="text-center">Belum ada album.</td></tr>
        @endforelse
    </tbody>
</table>
<div class="d-flex justify-content-center">
    {{ $albums->onEachSide(1)->links('pagination::bootstrap-5') }}
</div>
@endsection
