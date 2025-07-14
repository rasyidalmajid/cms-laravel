<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Berkas;

class InformasiController extends Controller
{
    public function lapKeuangan()
    {
        $berkas = Berkas::where('nama_berkas', 'like', '%keuangan%')->get();
        return view('informasi.lap-keuangan', compact('berkas'));
    }

    public function lapKegiatan()
    {
        $berkas = Berkas::where('nama_berkas', 'like', '%kegiatan%')->get();
        return view('informasi.lap-kegiatan', compact('berkas'));
    }
}
