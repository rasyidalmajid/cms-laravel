@extends('layouts.app')

@section('title', 'Agenda & Kegiatan | ' . ($webSetting->nama_sekolah ?? 'Sekolah'))

@section('content')
<div class="mb-4">
    <h2 class="mb-3 text-primary">Agenda & Kegiatan</h2>
    <div class="row g-3">
        @forelse($agendas as $agenda)
            <div class="col-12 col-md-6 col-lg-4">
                <div class="card h-100 shadow-sm agenda-card"
                     data-title="{{ $agenda->title }}"
                     data-tgl="{{ $agenda->tgl ? date('d M Y', strtotime($agenda->tgl)) : '' }}"
                     data-content="{{ strip_tags($agenda->content) }}">
                    <div class="card-body" style="cursor:pointer;">
                        <div class="fw-bold mb-1" style="font-size:1.1rem;">{{ $agenda->title }}</div>
                        <div class="small text-muted mb-2">{{ $agenda->tgl ? date('d M Y', strtotime($agenda->tgl)) : '' }}</div>
                        <button type="button" class="btn btn-outline-primary btn-sm btn-detail-agenda"
                            data-title="{{ $agenda->title }}"
                            data-tgl="{{ $agenda->tgl ? date('d M Y', strtotime($agenda->tgl)) : '' }}"
                            data-content="{!! e($agenda->content) !!}">
                            Selengkapnya
                        </button>
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
<!-- Modal untuk detail agenda -->
<div class="modal fade" id="agendaModal" tabindex="-1" aria-labelledby="agendaModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="agendaModalLabel">Detail Agenda</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <h5 id="modalAgendaTitle"></h5>
        <div class="text-muted mb-2" id="modalAgendaTgl"></div>
        <div id="modalAgendaContent" style="max-height:350px; overflow:auto;"></div>
      </div>
    </div>
  </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
  document.querySelectorAll('.btn-detail-agenda').forEach(function(btn) {
    btn.addEventListener('click', function(e) {
      e.stopPropagation();
      document.getElementById('modalAgendaTitle').textContent = this.dataset.title;
      document.getElementById('modalAgendaTgl').textContent = this.dataset.tgl;
      // Render konten asli agenda (dengan enter dan <br>)
      let content = this.dataset.content
        .replace(/\r?\n/g, '<br>')
        .replace(/  /g, '&nbsp;&nbsp;');
      document.getElementById('modalAgendaContent').innerHTML = content;
      var modal = new bootstrap.Modal(document.getElementById('agendaModal'));
      modal.show();
    });
  });
});
</script>
@endsection
