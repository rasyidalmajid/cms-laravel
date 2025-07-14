<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'SMK Kesehatan Darussalam Begras')</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">

</head>
<body>
<style>
  body { padding-top: 70px; }
</style>
<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm fixed-top">
  <div class="container">
    <a class="navbar-brand" href="/">SMK Kesehatan Darussalam Begras</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link @if(request()->is('/')) active @endif" href="/">Home</a></li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle @if(request()->is('profil*')) active @endif" href="#" id="profilDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Profil Sekolah</a>
          <ul class="dropdown-menu" aria-labelledby="profilDropdown">
            <li><a class="dropdown-item" href="/profil/visi-misi">Visi Misi</a></li>
            <li><a class="dropdown-item" href="/profil/sejarah">Sejarah</a></li>
            <li><a class="dropdown-item" href="/profil/program-jurusan">Program Jurusan</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle @if(request()->is('informasi*')) active @endif" href="#" id="informasiDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Informasi</a>
          <ul class="dropdown-menu" aria-labelledby="informasiDropdown">
            <li><a class="dropdown-item" href="/informasi/lap-keuangan">Laporan Keuangan</a></li>
            <li><a class="dropdown-item" href="/informasi/lap-kegiatan">Laporan Kegiatan</a></li>
          </ul>
        </li>
        <li class="nav-item"><a class="nav-link @if(request()->is('galeri')) active @endif" href="/galeri">Galeri</a></li>
        <li class="nav-item"><a class="nav-link @if(request()->is('kontak')) active @endif" href="/kontak">Kontak</a></li>
      </ul>
    </div>
  </div>
</nav>

<main class="container py-4">
    @yield('content')
</main>

<footer class="footer text-center">
    <div class="container">
        <small>&copy; {{ date('Y') }} SMK Kesehatan Darussalam Begras. All rights reserved.</small>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
