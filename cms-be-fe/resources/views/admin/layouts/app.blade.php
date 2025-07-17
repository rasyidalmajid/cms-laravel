<!DOCTYPE html>
<html>
<head>
    <title>Admin - @yield('title', 'Dashboard')</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Tambahkan Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <meta name="csrf-token" content="{{ csrf_token() }}">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
    <div class="container-fluid">
        <a class="navbar-brand" href="{{ route('admin.dashboard') }}">Admin CMS</a>
        <form method="POST" action="{{ route('admin.logout') }}" class="d-flex ms-auto">
            @csrf
            <button class="btn btn-outline-light" type="submit">Logout</button>
        </form>
    </div>
</nav>
<div class="container-fluid">
    <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar py-4">
            <div class="list-group">
                <div class="mb-2 text-success fw-bold text-uppercase small">Main Menu</div>
                <a href="{{ route('admin.dashboard') }}" class="list-group-item list-group-item-action">
                    <i class="bi bi-speedometer2 me-2"></i> Dashboard
                </a>
                <hr>
                <div class="mb-2 text-success fw-bold text-uppercase small">Konten Website</div>
                <a href="{{ route('admin.menu.index') }}" class="list-group-item list-group-item-action">
                    <i class="bi bi-list-ul me-2"></i> Kelola Menu
                </a>
                <a href="{{ route('admin.pages.index') }}" class="list-group-item list-group-item-action">
                    <i class="bi bi-file-earmark-text me-2"></i> Kelola Submenu
                </a>
                <a href="{{ route('admin.gallery.index') }}" class="list-group-item list-group-item-action">
                    <i class="bi bi-images me-2"></i> Kelola Gallery
                </a>
                <a href="{{ route('admin.slider.index') }}" class="list-group-item list-group-item-action">
                    <i class="bi bi-images me-2"></i> Kelola Foto Home Page
                </a>
                <a href="{{ route('admin.web_setting.index') }}" class="list-group-item list-group-item-action">
                    <i class="bi bi-geo-alt me-2"></i> Kontak & Info Sekolah
                </a>
                <a href="{{ route('admin.agenda.index') }}" class="list-group-item list-group-item-action">
                    <i class="bi bi-calendar-event me-2"></i> Kelola Agenda
                </a>
                <a href="{{ route('admin.profil_kepala_sekolah.edit') }}" class="list-group-item list-group-item-action">
                    <i class="bi bi-person-badge me-2"></i> Profil Kepala Sekolah
                </a>
            </div>
        </nav>
        <main class="col-md-10 ms-sm-auto px-md-4 py-4">
            @yield('content')
        </main>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
@stack('scripts')
</body>
</html>
