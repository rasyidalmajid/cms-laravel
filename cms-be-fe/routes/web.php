<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProfilController;
use App\Http\Controllers\InformasiController;
use App\Http\Controllers\GaleriController;
use App\Http\Controllers\KontakController;
use App\Http\Controllers\Admin\AuthController;
use App\Http\Controllers\Admin\DashboardController;

Route::get('/Home', [HomeController::class, 'index'])->name('home');
Route::get('/Gallery', [GaleriController::class, 'index'])->name('galeri');
Route::get('/Kontak', [KontakController::class, 'index'])->name('kontak');
Route::post('/Kontak', [KontakController::class, 'store'])->name('kontak.store');
Route::get('/page/{slug}', [\App\Http\Controllers\PageController::class, 'show'])->name('page.show');

Route::get('admin/login', [AuthController::class, 'showLoginForm'])->name('admin.login');
Route::post('admin/login', [AuthController::class, 'login'])->name('admin.login.submit');
Route::post('admin/logout', [AuthController::class, 'logout'])->name('admin.logout');

Route::middleware(['auth:admin'])->prefix('admin')->group(function () {
    Route::get('dashboard', [DashboardController::class, 'index'])->name('admin.dashboard');
    Route::resource('pages', App\Http\Controllers\Admin\PageController::class)->names('admin.pages');
    Route::resource('menu', App\Http\Controllers\Admin\MenuController::class)->names('admin.menu');
    Route::resource('gallery', App\Http\Controllers\Admin\GalleryController::class)->names('admin.gallery');
    Route::resource('kontak', App\Http\Controllers\Admin\KontakController::class)->only(['index', 'destroy'])->names('admin.kontak');
    Route::resource('agenda', App\Http\Controllers\Admin\AgendaController::class)->names('admin.agenda');
    Route::get('web-setting', [App\Http\Controllers\Admin\WebSettingController::class, 'index'])->name('admin.web_setting.index');
    Route::get('web-setting/edit', [App\Http\Controllers\Admin\WebSettingController::class, 'edit'])->name('admin.web_setting.edit');
    Route::put('web-setting', [App\Http\Controllers\Admin\WebSettingController::class, 'update'])->name('admin.web_setting.update');
});
