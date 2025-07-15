<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProfilController;
use App\Http\Controllers\InformasiController;
use App\Http\Controllers\GaleriController;
use App\Http\Controllers\KontakController;

Route::get('/Home', [HomeController::class, 'index'])->name('home');
Route::get('/Gallery', [GaleriController::class, 'index'])->name('galeri');
Route::get('/Kontak', [KontakController::class, 'index'])->name('kontak');
Route::post('/Kontak', [KontakController::class, 'store'])->name('kontak.store');
Route::get('/page/{slug}', [\App\Http\Controllers\PageController::class, 'show'])->name('page.show');
