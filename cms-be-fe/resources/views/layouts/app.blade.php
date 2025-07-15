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
        @foreach($navMenus as $menu)
          @if($menu->subMenus->count())
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="menuDropdown{{ $menu->id }}" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                {{ $menu->nama }}
              </a>
              <ul class="dropdown-menu" aria-labelledby="menuDropdown{{ $menu->id }}">
                @foreach($menu->subMenus as $submenu)
                  @if($submenu->page)
                    <li><a class="dropdown-item" href="{{ route('page.show', $submenu->page->key_page) }}">{{ $submenu->nama }}</a></li>
                  @else
                    <li><span class="dropdown-item disabled">{{ $submenu->nama }}</span></li>
                  @endif
                @endforeach
              </ul>
            </li>
          @else
            <li class="nav-item">
              <a class="nav-link" href="{{ $menu->route ? route($menu->route) : url('/'.$menu->nama) }}">
                  {{ $menu->nama }}
              </a>
            </li>
          @endif
        @endforeach
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
