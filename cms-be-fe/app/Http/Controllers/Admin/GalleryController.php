<?php
namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Album;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;

class GalleryController extends Controller
{
    public function index()
    {
        $albums = Album::paginate(10);
        return view('admin.gallery.index', compact('albums'));
    }

    public function create()
    {
        return view('admin.gallery.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama_album' => 'required',
            'type' => 'required',
            'thumbnail' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);
        $data = $request->only('nama_album', 'type');
        if ($request->hasFile('thumbnail')) {
            $file = $request->file('thumbnail');
            $filename = uniqid() . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('assets/album'), $filename);
            $data['thumbnail'] = $filename;
        }
        Album::insert($data);
        return redirect()->route('admin.gallery.index')->with('success', 'Album berhasil ditambahkan!');
    }

    public function edit($id)
    {
        $album = Album::findOrFail($id);
        return view('admin.gallery.edit', compact('album'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'nama_album' => 'required',
            'type' => 'required',
            'thumbnail' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);
        $album = Album::findOrFail($id);
        $data = $request->only('nama_album', 'type');
        if ($request->hasFile('thumbnail')) {
            if ($album->thumbnail && file_exists(public_path('assets/album/' . $album->thumbnail))) {
                @unlink(public_path('assets/album/' . $album->thumbnail));
            }
            $file = $request->file('thumbnail');
            $filename = uniqid() . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('assets/album'), $filename);
            $data['thumbnail'] = $filename;
        }
        DB::table('album')->where('id', $id)->update($data);
        return redirect()->route('admin.gallery.index')->with('success', 'Album berhasil diupdate!');
    }

    public function destroy($id)
    {
        $album = Album::findOrFail($id);
        if ($album->thumbnail && file_exists(public_path('assets/album/' . $album->thumbnail))) {
            @unlink(public_path('assets/album/' . $album->thumbnail));
        }
        $album->delete();
        return redirect()->route('admin.gallery.index')->with('success', 'Album berhasil dihapus!');
    }
}
