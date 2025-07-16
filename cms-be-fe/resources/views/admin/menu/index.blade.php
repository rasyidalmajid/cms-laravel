@extends('admin.layouts.app')

@section('title', 'Kelola Menu')

@section('content')
<div class="d-flex justify-content-between align-items-center mb-3">
    <h2>Daftar Menu</h2>
    <a href="{{ route('admin.menu.create') }}" class="btn btn-success">+ Tambah Menu</a>
</div>
<div class="alert alert-info mb-3">
    <strong>Info:</strong> Urutkan menu dengan cara <b>drag & drop</b> menggunakan tombol <span class="badge bg-secondary"><i class="bi bi-list"></i></span> di samping kiri setiap baris. Urutan akan otomatis tersimpan.
</div>
@php $menus = $menus->sortBy('urutan'); @endphp
<table class="table table-bordered table-striped">
    <thead>
        <tr>
            <th style="width:40px;"></th>
            <th>#</th>
            <th>Nama Menu</th>
            <th>Slug</th>
            <th>Route</th>
            <th>Submenu</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        @foreach($menus as $menu)
            <tr data-id="{{ $menu->id }}">
                <td class="text-center align-middle cursor-move">
                    <button type="button" class="btn btn-light btn-sm drag-handle" title="Urutkan (drag untuk pindah)" aria-label="Urutkan" style="min-width:32px;">
                        <span class="drag-icon"><i class="bi bi-list"></i></span>
                    </button>
                </td>
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
        @endforeach
    </tbody>
</table>
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
                fetch("{{ route('admin.menu.reorder') }}", {
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
                        notif.innerHTML = 'Urutan menu berhasil disimpan!';
                        document.body.appendChild(notif);
                    } else {
                        notif.className = 'alert alert-success position-fixed top-0 end-0 m-3';
                        notif.innerHTML = 'Urutan menu berhasil disimpan!';
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
                        notif.innerHTML = 'Gagal menyimpan urutan menu!';
                        document.body.appendChild(notif);
                    } else {
                        notif.className = 'alert alert-danger position-fixed top-0 end-0 m-3';
                        notif.innerHTML = 'Gagal menyimpan urutan menu!';
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
@endsection
