@extends('layouts.app')

@section('title', 'Kontak | SMAN 1 Tengaran')

@section('content')
<h2 class="mb-4 text-primary">Kontak Kami</h2>
<div class="row">
    <div class="col-md-6 mb-4">
        <div class="card shadow-sm">
            <div class="card-body">
                <h5 class="fw-bold mb-3">Alamat</h5>
                <p class="mb-1">Jl. Raya Salatiga - Solo Km. 10, Tengaran, Kab. Semarang, Jawa Tengah</p>
                <p class="mb-1">Telp: (0298) 321656</p>
                <p>Email: smanegeri1tengaran@gmail.com</p>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="card shadow-sm">
            <div class="card-body">
                <h5 class="fw-bold mb-3">Form Kontak</h5>
                <form>
                    <div class="mb-3">
                        <label for="nama" class="form-label">Nama</label>
                        <input type="text" class="form-control" id="nama" placeholder="Nama Anda">
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" placeholder="email@domain.com">
                    </div>
                    <div class="mb-3">
                        <label for="pesan" class="form-label">Pesan</label>
                        <textarea class="form-control" id="pesan" rows="3" placeholder="Tulis pesan Anda..."></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Kirim</button>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
