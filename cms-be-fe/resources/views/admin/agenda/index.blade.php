@extends('admin.layouts.app')

@section('title', 'Kelola Agenda')

@section('content')
<div class="d-flex justify-content-between align-items-center mb-3">
    <h2>Daftar Agenda</h2>
    <a href="{{ route('admin.agenda.create') }}" class="btn btn-success">+ Tambah Agenda</a>
</div>
@if(session('success'))
    <div class="alert alert-success">{{ session('success') }}</div>
@endif
<table class="table table-bordered table-striped">
    <thead>
        <tr>
            <th>#</th>
            <th>Judul</th>
            <th>Tanggal</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        @forelse($agendas as $agenda)
            <tr>
                <td>{{ ($agendas->currentPage() - 1) * $agendas->perPage() + $loop->iteration }}</td>
                <td>{{ $agenda->title }}</td>
                <td>{{ $agenda->tgl }}</td>
                <td>
                    <a href="{{ route('admin.agenda.edit', $agenda->id) }}" class="btn btn-sm btn-primary">Edit</a>
                    <form action="{{ route('admin.agenda.destroy', $agenda->id) }}" method="POST" style="display:inline-block" onsubmit="return confirm('Yakin hapus agenda?')">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-sm btn-danger">Hapus</button>
                    </form>
                </td>
            </tr>
        @empty
            <tr><td colspan="4" class="text-center">Belum ada agenda.</td></tr>
        @endforelse
    </tbody>
</table>
<div class="d-flex justify-content-center">
    {{ $agendas->onEachSide(1)->links('pagination::bootstrap-5') }}
</div>
@endsection
