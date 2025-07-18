<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', $webSetting->meta_title ?? $webSetting->nama_sekolah ?? 'SMK Kesehatan Darussalam Begras')</title>
    <meta name="description" content="@yield('meta_description', $webSetting->meta_desc ?? $webSetting->deskripsi ?? '')">
    <meta name="keywords" content="@yield('meta_keywords', $webSetting->meta_key ?? '')">
    <meta name="text" content="@yield('meta_text', $webSetting->meta_text ?? '')">
    <link rel="icon" type="image/png" href="{{ asset('assets/images/' . ($webSetting->logo ?? 'logo.png')) }}"/>
    <link href="{{ asset('assets/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">
    <style>

    </style>
</head>
<body>
<div class="container">
  <div class="school-topbar d-none d-lg-flex">
    <div class="w-100 d-flex flex-column align-items-center justify-content-center text-center">
      <img src="{{ asset('assets/images/' . ($webSetting->logo ?? 'logo.png')) }}" alt="Logo Sekolah" class="school-logo mb-2" onerror="this.src='https://via.placeholder.com/70x70?text=Logo'">
      <div class="school-name">{{ $webSetting->nama_sekolah ?? 'Nama Sekolah' }}</div>
    </div>
  </div>
</div>
<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm">
  <div class="container">
    <a class="navbar-brand d-flex align-items-center d-lg-none" href="/">
      <img src="{{ asset('assets/images/' . ($webSetting->logo ?? 'logo.png')) }}" alt="Logo Sekolah" style="height:36px;width:auto;object-fit:contain;margin-right:8px;" onerror="this.src='https://via.placeholder.com/36x36?text=Logo'">
      <span style="font-size:1rem;font-weight:bold;line-height:1.1;">{{ $webSetting->nama_sekolah ?? 'Nama Sekolah' }}</span>
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav mx-auto">
        @foreach($navMenus as $menu)
          @if($menu->subMenus->count())
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="menuDropdown{{ $menu->id }}" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                {{ $menu->nama }}
              </a>
              <ul class="dropdown-menu" aria-labelledby="menuDropdown{{ $menu->id }}">
                @foreach($menu->subMenus as $submenu)
                  @if($submenu->page)
                    @php
                      $isSubActive = request()->is('page/' . strtolower($submenu->page->key_page));
                    @endphp
                    <li>
                      <a class="dropdown-item{{ $isSubActive ? ' active' : '' }}" href="{{ route('page.show', strtolower($submenu->page->key_page)) }}">{{ $submenu->nama }}</a>
                    </li>
                  @else
                    <li><span class="dropdown-item disabled">{{ $submenu->nama }}</span></li>
                  @endif
                @endforeach
              </ul>
            </li>
          @else
            @php
              $isActive = false;
              if ($menu->route) {
                  $isActive = Route::currentRouteName() === $menu->route;
              } else {
                  $isActive = request()->is(strtolower($menu->nama));
              }
            @endphp
            <li class="nav-item">
              <a class="nav-link{{ $isActive ? ' active' : '' }}" href="{{ $menu->route ? route($menu->route) : url('/'.strtolower($menu->nama)) }}">
                  {{ $menu->nama }}
              </a>
            </li>
          @endif
        @endforeach
      </ul>
    </div>
  </div>
</nav>
<main class="main-content py-4">
    @yield('content')
</main>
<footer class="footer-main">
    <img src="{{ asset('assets/images/' . ($webSetting->logo ?? 'logo.png')) }}" alt="Logo" class="footer-logo mb-2">
    <div class="fw-bold mb-2" style="font-size:1.1rem;">{{ $webSetting->nama_sekolah ?? 'Nama Sekolah' }}</div>
    <hr class="footer-hr my-3">
    <div class="text-center small footer-copyright">
        &copy; {{ date('Y') }} {{ $webSetting->nama_sekolah ?? 'Nama Sekolah' }}. Supported By Aston Sistem.
    </div>
</footer>
<script src="{{ asset('assets/js/bootstrap.bundle.min.js') }}"></script>
</body>
</html>
