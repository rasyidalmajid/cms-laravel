@extends('admin.layouts.app')

@section('title', 'Edit Agenda')

@section('content')
<div class="mb-3">
    <h2>Edit Agenda</h2>
</div>
<form method="POST" action="{{ route('admin.agenda.update', $agenda->id) }}">
    @csrf
    @method('PUT')
    <div class="mb-3">
        <label>Judul</label>
        <input type="text" name="title" class="form-control" required value="{{ old('title', $agenda->title) }}">
    </div>
    <div class="mb-3">
        <label>Tanggal</label>
        <input type="date" name="tgl" class="form-control" required value="{{ old('tgl', $agenda->tgl) }}">
    </div>
    <div class="mb-3">
        <label>Konten</label>
        <textarea name="content" id="content" class="form-control" rows="8" required>{{ old('content', $agenda->content) }}</textarea>
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
