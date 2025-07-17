<?php
namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\JamKerja;

class JamKerjaController extends Controller
{
    public function index() {
        $jamKerja = JamKerja::all();
        return view('admin.jam_kerja.index', compact('jamKerja'));
    }
    public function create() {
        return view('admin.jam_kerja.create');
    }
    public function store(Request $request) {
        $request->validate([
            'hari' => 'required',
            'jam_mulai' => 'required',
            'jam_selesai' => 'required',
        ]);
        JamKerja::create($request->all());
        return redirect()->route('admin.jam_kerja.index')->with('success', 'Jam kerja berhasil ditambah!');
    }
    public function edit($id) {
        $jamKerja = JamKerja::findOrFail($id);
        return view('admin.jam_kerja.edit', compact('jamKerja'));
    }
    public function update(Request $request, $id) {
        $request->validate([
            'hari' => 'required',
            'jam_mulai' => 'required',
            'jam_selesai' => 'required',
        ]);
        JamKerja::findOrFail($id)->update($request->all());
        return redirect()->route('admin.jam_kerja.index')->with('success', 'Jam kerja berhasil diupdate!');
    }
    public function destroy($id) {
        JamKerja::findOrFail($id)->delete();
        return redirect()->route('admin.jam_kerja.index')->with('success', 'Jam kerja berhasil dihapus!');
    }
}
