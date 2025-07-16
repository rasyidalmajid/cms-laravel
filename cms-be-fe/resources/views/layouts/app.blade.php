<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>@yield('title', 'SMK Kesehatan Darussalam Begras')</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">
    <style>
      .school-topbar {
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 1rem;
        padding: 1rem 0 0.5rem 0;
      }
      .school-logo {
        width: 70px;
        height: 70px;
        object-fit: contain;
      }
      .school-name {
        flex: 1;
        text-align: center;
        font-size: 1.0rem;
        font-weight: bold;
        color: #2c3e50;
        letter-spacing: 1px;
      }
      .school-search {
        min-width: 180px;
        max-width: 260px;
      }
      @media (max-width: 768px) {
        .school-topbar {
          flex-direction: column;
          align-items: stretch;
          text-align: center;
        }
        .school-name {
          font-size: 1.2rem;
          margin: 0.5rem 0;
        }
        .school-search {
          max-width: 100%;
          margin: 0 auto;
        }
      }
    </style>
</head>
<body>
<div class="container">
  <div class="school-topbar">
    <img src="/assets/images/logo.png" alt="Logo Sekolah" class="school-logo" onerror="this.src='https://via.placeholder.com/70x70?text=Logo'">
    <div class="school-name">SMK Kesehatan Darussalam Bergas</div>
    <form class="d-flex school-search" action="{{ url('/search') }}" method="GET">
      <input class="form-control form-control-sm me-2" type="search" name="q" placeholder="Cari..." aria-label="Search">
      <button class="btn btn-outline-primary btn-sm" type="submit">Cari</button>
    </form>
  </div>
</div>
<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm">
  <div class="container">
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
                    <li><a class="dropdown-item" href="{{ route('page.show', strtolower($submenu->page->key_page)) }}">{{ strtolower($submenu->nama) }}</a></li>
                  @else
                    <li><span class="dropdown-item disabled">{{ $submenu->nama }}</span></li>
                  @endif
                @endforeach
              </ul>
            </li>
          @else
            <li class="nav-item">
              <a class="nav-link" href="{{ $menu->route ? route($menu->route) : url('/'.strtolower($menu->nama)) }}">
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
        <small>&copy; {{ date('Y') }} SMK Kesehatan Darussalam Begras. Supported By Aston Sistem.</small>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
