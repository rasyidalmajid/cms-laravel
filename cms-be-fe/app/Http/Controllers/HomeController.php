<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Slider;
use App\Models\Agenda;
use App\Models\Album;
use App\Models\ProfilKepalaSekolah;

class HomeController extends Controller
{
    public function index()
    {
        $sliders = Slider::orderBy('no_urut')->get();
        $agendas = Agenda::orderBy('tgl', 'desc')->take(4)->get();
        $albums = Album::orderBy('id', 'desc')->take(4)->get();
        $profilKepalaSekolah = ProfilKepalaSekolah::first();
        return view('home', compact('sliders', 'agendas', 'albums', 'profilKepalaSekolah'));
    }
}
