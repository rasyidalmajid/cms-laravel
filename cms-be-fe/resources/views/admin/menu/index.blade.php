@extends('admin.layouts.app')

@section('title', 'Kelola Menu')

@section('content')
<div class="d-flex justify-content-between align-items-center mb-3">
    <h2>Daftar Menu</h2>
    <a href="{{ route('admin.menu.create') }}" class="btn btn-success">+ Tambah Menu</a>
</div>
@if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
@endif
<table class="table table-bordered table-striped">
    <thead>
        <tr>
            <th>#</th>
            <th>Nama Menu</th>
            <th>Slug</th>
            <th>Route</th>
            <th>Submenu</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        @forelse($menus as $menu)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ $menu->nama }}</td>
                <td>{{ $menu->slug }}</td>
                <td>{{ $menu->route }}</td>
                <td>
                    @if($menu->subMenus->count())
                        <ul class="mb-0">
                        @foreach($menu->subMenus as $sub)
                            <li>{{ $sub->nama }}</li>
                        @endforeach
                        </ul>
                    @else
                        -
                    @endif
                </td>
                <td>
                    <a href="{{ route('admin.menu.edit', $menu->id) }}" class="btn btn-sm btn-primary">Edit</a>
                    <form action="{{ route('admin.menu.destroy', $menu->id) }}" method="POST" style="display:inline-block" onsubmit="return confirm('Yakin hapus menu?')">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-sm btn-danger">Hapus</button>
                    </form>
                </td>
            </tr>
        @empty
            <tr><td colspan="6" class="text-center">Belum ada menu.</td></tr>
        @endforelse
    </tbody>
</table>
@endsection
