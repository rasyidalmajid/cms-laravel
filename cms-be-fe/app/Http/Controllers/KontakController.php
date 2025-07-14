<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Kontak;

class KontakController extends Controller
{
    public function index()
    {
        return view('kontak');
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required',
            'email' => 'required|email',
            'pesan' => 'required',
        ]);
        Kontak::create($request->only('nama', 'email', 'pesan'));
        return redirect()->back()->with('success', 'Pesan Anda berhasil dikirim!');
    }
}
