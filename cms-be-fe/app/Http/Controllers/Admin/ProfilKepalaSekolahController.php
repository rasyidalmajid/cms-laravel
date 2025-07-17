<?php
namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ProfilKepalaSekolah;

class ProfilKepalaSekolahController extends Controller
{
    public function edit()
    {
        $profil = ProfilKepalaSekolah::first();
        return view('admin.profil_kepala_sekolah.edit', compact('profil'));
    }

    public function update(Request $request)
    {
        $profil = ProfilKepalaSekolah::first();
        $request->validate([
            'nama_kepala_sekolah' => 'required',
            'alamat' => 'required',
            'sambutan' => 'required',
            'foto' => 'nullable|image|mimes:jpg,jpeg,png,gif|max:2048',
        ]);
        $data = $request->only(['nama_kepala_sekolah', 'alamat', 'sambutan']);
        if ($request->hasFile('foto')) {
            $file = $request->file('foto');
            $filename = 'kepala_sekolah_' . time() . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('assets/images'), $filename);
            $data['foto'] = $filename;
        }
        $profil->update($data);
        return redirect()->route('admin.profil_kepala_sekolah.edit')->with('success', 'Profil kepala sekolah berhasil diupdate!');
    }
}
