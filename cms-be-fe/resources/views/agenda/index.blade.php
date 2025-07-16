@extends('layouts.app')

@section('title', 'Agenda & Kegiatan | ' . ($webSetting->nama_sekolah ?? 'Sekolah'))

@section('content')
<div class="mb-4">
    <h2 class="mb-3 text-primary">Agenda & Kegiatan</h2>
    <div class="row g-3">
        @forelse($agendas as $agenda)
            <div class="col-12 col-md-6 col-lg-4">
                <div class="card h-100 shadow-sm">
                    <div class="card-body">
                        <div class="fw-bold mb-1" style="font-size:1.1rem;">{{ $agenda->title }}</div>
                        <div class="small text-muted mb-2">{{ $agenda->tgl ? date('d M Y', strtotime($agenda->tgl)) : '' }}</div>
                        <div class="mb-2">{!! Str::limit(strip_tags($agenda->content), 120) !!}</div>
                        {{-- <a href="#" class="btn btn-sm btn-outline-primary">Detail</a> --}}
                    </div>
                </div>
            </div>
        @empty
            <div class="col-12"><div class="alert alert-warning">Belum ada agenda.</div></div>
        @endforelse
    </div>
    <div class="mt-4 d-flex justify-content-center">
        {{ $agendas->onEachSide(1)->links('pagination::bootstrap-5') }}
    </div>
</div>
@endsection
