@extends('layouts.app')
@section('title', ($page->title ?? 'Halaman') . ' | ' . ($webSetting->nama_sekolah ?? 'Sekolah') )
@section('content')
<div class="row">
  <div class="col-lg-3 mb-4">
    <nav class="nav flex-column card shadow-sm p-2">
      @foreach($menus as $menu)
        <div class="nav-item mb-2">
          <span class="fw-bold">{{ $menu->nama }}</span>
          @if($menu->subMenus->count())
            <ul class="nav flex-column ms-2">
              @foreach($menu->subMenus as $submenu)
                <li class="nav-item">
                  <a class="nav-link p-1" href="{{ route('page.show', $submenu->page->key_page) }}">{{ $submenu->nama }}</a>
                </li>
              @endforeach
            </ul>
          @endif
        </div>
      @endforeach
    </nav>
  </div>
  <div class="col-lg-9">
    <div class="card shadow-sm mb-4">
      <div class="card-body">
        <h2 class="mb-3 text-primary">{{ $page->title }}</h2>
        {!! $page->content !!}
      </div>
    </div>
  </div>
</div>
@endsection
