<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Album;
use App\Models\FotoGallery;

class GaleriController extends Controller
{
    public function index()
    {
        $albums = Album::get();
        return view('galeri', compact('albums'));
    }
}
