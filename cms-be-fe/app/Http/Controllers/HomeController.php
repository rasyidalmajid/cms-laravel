<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Slider;
use App\Models\Agenda;
use App\Models\FotoGallery;

class HomeController extends Controller
{
    public function index()
    {
        $sliders = Slider::orderBy('no_urut')->get();
        $agendas = Agenda::orderBy('tgl', 'desc')->take(4)->get();
        $galeri = FotoGallery::orderBy('id', 'desc')->take(4)->get();
        return view('home', compact('sliders', 'agendas', 'galeri'));
    }
}
