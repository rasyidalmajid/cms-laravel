<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Page;

class ProfilController extends Controller
{
    public function visiMisi()
    {
        $page = Page::where('key_page', 'visi-misi')->first();
        return view('profil.visi-misi', compact('page'));
    }

    public function sejarah()
    {
        $page = Page::where('key_page', 'sejarah')->first();
        return view('profil.sejarah', compact('page'));
    }

    public function programJurusan()
    {
        $page = Page::where('key_page', 'program-jurusan')->first();
        return view('profil.program-jurusan', compact('page'));
    }
}
