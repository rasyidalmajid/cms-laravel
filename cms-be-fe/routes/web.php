<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProfilController;
use App\Http\Controllers\InformasiController;
use App\Http\Controllers\GaleriController;
use App\Http\Controllers\KontakController;

Route::get('/', [HomeController::class, 'index'])->name('home');

Route::prefix('profil')->group(function () {
    Route::get('visi-misi', [ProfilController::class, 'visiMisi'])->name('profil.visi-misi');
    Route::get('sejarah', [ProfilController::class, 'sejarah'])->name('profil.sejarah');
    Route::get('program-jurusan', [ProfilController::class, 'programJurusan'])->name('profil.program-jurusan');
});

Route::prefix('informasi')->group(function () {
    Route::get('lap-keuangan', [InformasiController::class, 'lapKeuangan'])->name('informasi.lap-keuangan');
    Route::get('lap-kegiatan', [InformasiController::class, 'lapKegiatan'])->name('informasi.lap-kegiatan');
});

Route::get('/galeri', [GaleriController::class, 'index'])->name('galeri');
Route::get('/kontak', [KontakController::class, 'index'])->name('kontak');
Route::post('/kontak', [KontakController::class, 'store'])->name('kontak.store');
