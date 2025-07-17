@extends('admin.layouts.app')

@section('title', 'Kelola Pages')

@section('content')
<div class="d-flex justify-content-between align-items-center mb-3">
    <h2>Daftar Pages</h2>
    <a href="{{ route('admin.pages.create') }}" class="btn btn-success">+ Tambah Page</a>
</div>
@if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
@endif

@foreach($groupedPages as $menuInduk => $pages)
  <h4 class="mt-4 mb-2">{{ $menuInduk }}</h4>
  <table class="table table-bordered table-striped table-admin-pages">
      <thead>
          <tr>
              <th>#</th>
              <th>Judul</th>
              <th>Slug</th>
              <th>Meta Description</th>
              <th>Meta Keywords</th>
              <th>Meta Text</th>
              <th>Aksi</th>
          </tr>
      </thead>
      <tbody>
          @foreach($pages as $page)
              <tr>
                  <td>{{ $loop->iteration }}</td>
                  <td>{{ $page->title }}</td>
                  <td>{{ $page->key_page }}</td>
                  <td>{{ Str::limit($page->meta_desc, 60) }}</td>
                  <td>{{ Str::limit($page->meta_key, 40) }}</td>
                  <td>{{ Str::limit($page->meta_text, 40) }}</td>
                  <td>
                      <a href="{{ route('admin.pages.edit', $page->id) }}" class="btn btn-sm btn-primary">Edit</a>
                      <form action="{{ route('admin.pages.destroy', $page->id) }}" method="POST" style="display:inline-block" onsubmit="return confirm('Yakin hapus page?')">
                          @csrf
                          @method('DELETE')
                          <button type="submit" class="btn btn-sm btn-danger">Hapus</button>
                      </form>
                  </td>
              </tr>
          @endforeach
      </tbody>
  </table>
@endforeach
@endsection
