@extends('admin.layouts.app')

@section('title', 'Manajemen Slider')

@section('content')
<div class="d-flex justify-content-between align-items-center mb-3">
    <h2>Manajemen Slider</h2>
    <a href="{{ route('admin.slider.create') }}" class="btn btn-primary">Tambah Slider</a>
</div>
<div class="alert alert-info mb-3">
    <strong>Info:</strong> Urutkan slider dengan cara <b>drag & drop</b> menggunakan tombol <span class="badge bg-secondary"><i class="bi bi-list"></i></span> di samping kiri setiap baris. Urutan akan otomatis tersimpan.
</div>
<table class="table table-bordered table-striped">
    <thead>
        <tr>
            <th style="width:40px;"></th>
            <th>#</th>
            <th>Gambar</th>
            <th>Link</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        @foreach($sliders as $slider)
        <tr data-id="{{ $slider->id }}">
            <td class="text-center align-middle cursor-move">
                <button type="button" class="btn btn-light btn-sm drag-handle" title="Urutkan (drag untuk pindah)" aria-label="Urutkan" style="min-width:32px;">
                    <span class="drag-icon"><i class="bi bi-list"></i></span>
                </button>
            </td>
            <td>{{ $loop->iteration }}</td>
            <td>
                @if($slider->picture)
                    <img src="{{ asset('assets/slider/' . $slider->picture) }}" alt="Slider" style="max-width:80px;">
                @endif
            </td>
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

@push('scripts')
<script src="https://cdn.jsdelivr.net/npm/sortablejs@1.15.0/Sortable.min.js"></script>
<script>
document.addEventListener('DOMContentLoaded', function() {
    var tbody = document.querySelector('table tbody');
    if (tbody) {
        new Sortable(tbody, {
            animation: 150,
            handle: '.drag-handle',
            ghostClass: 'table-active',
            onEnd: function () {
                let order = [];
                tbody.querySelectorAll('tr').forEach(function(row) {
                    order.push(row.getAttribute('data-id'));
                });
                fetch("{{ route('admin.slider.reorder') }}", {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'X-CSRF-TOKEN': document.querySelector('meta[name=csrf-token]').content
                    },
                    body: JSON.stringify({order: order})
                }).then(res => res.json()).then(data => {
                    let notif = document.getElementById('dragNotif');
                    if (!notif) {
                        notif = document.createElement('div');
                        notif.id = 'dragNotif';
                        notif.className = 'alert alert-success position-fixed top-0 end-0 m-3';
                        notif.style.zIndex = 9999;
                        notif.innerHTML = 'Urutan slider berhasil disimpan!';
                        document.body.appendChild(notif);
                    } else {
                        notif.className = 'alert alert-success position-fixed top-0 end-0 m-3';
                        notif.innerHTML = 'Urutan slider berhasil disimpan!';
                    }
                    setTimeout(() => notif.remove(), 2000);
                    // Update row numbers after reorder
                    tbody.querySelectorAll('tr').forEach(function(row, idx) {
                        let cell = row.querySelector('td:nth-child(2)');
                        if (cell) cell.textContent = idx + 1;
                    });
                }).catch(function() {
                    let notif = document.getElementById('dragNotif');
                    if (!notif) {
                        notif = document.createElement('div');
                        notif.id = 'dragNotif';
                        notif.className = 'alert alert-danger position-fixed top-0 end-0 m-3';
                        notif.style.zIndex = 9999;
                        notif.innerHTML = 'Gagal menyimpan urutan slider!';
                        document.body.appendChild(notif);
                    } else {
                        notif.className = 'alert alert-danger position-fixed top-0 end-0 m-3';
                        notif.innerHTML = 'Gagal menyimpan urutan slider!';
                    }
                    setTimeout(() => notif.remove(), 3000);
                });
            }
        });
    }
});
</script>
<style>
.dragging { background: #f8f9fa !important; box-shadow: 0 2px 8px rgba(0,0,0,0.08); }
.cursor-move { cursor: grab; }
.table-active { background: #e9ecef !important; }
</style>
@endpush
