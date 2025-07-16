<?php
namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Page;
use App\Models\Menu;
use App\Models\SubMenu;
use App\Models\Berkas;
use App\Models\BerkasHalaman;

class PageController extends Controller
{
    public function index()
    {
        $pages = Page::with(['subMenu.menu'])->get();
        return view('admin.pages.index', compact('pages'));
    }

    public function create()
    {
        $menus = Menu::whereRaw('LOWER(nama) NOT IN ("home", "kontak", "contact", "galeri", "gallery")')->get();
        return view('admin.pages.create', compact('menus'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'content' => 'required',
            'menu_id' => 'required|exists:menu,id',
        ]);
        $slug = strtolower(preg_replace('/[^a-z0-9]+/i', '-', trim($request->title)));
        $slug = trim($slug, '-');
        // Pastikan slug unik
        $originalSlug = $slug;
        $i = 2;
        while (\App\Models\Page::where('key_page', $slug)->exists()) {
            $slug = $originalSlug . '-' . $i;
            $i++;
        }
        $page = Page::create([
            'title' => $request->title,
            'key_page' => $slug,
            'content' => $request->content,
        ]);
        // Simpan ke sub_menu
        SubMenu::create([
            'menu_id' => $request->menu_id,
            'nama' => $request->title,
            'link_type' => 'page',
            'page_id' => $page->id,
            'link' => null,
        ]);
        // Handle upload berkas baru (hanya satu)
        $berkasId = null;
        if ($request->hasFile('berkas_upload')) {
            $file = $request->file('berkas_upload')[0] ?? null;
            if ($file && $file->isValid()) {
                $filename = time().'_'.uniqid().'_'.$file->getClientOriginalName();
                $file->move(public_path('assets/berkas'), $filename);
                $berkas = Berkas::create([
                    'nama_berkas' => $filename,
                    'berkas' => $filename,
                ]);
                $berkasId = $berkas->id;
                // Update kolom berkas_id di page
                $page->berkas_id = $berkasId;
                $page->save();
                // Simpan relasi ke berkas_halaman (hapus dulu jika ada)
                BerkasHalaman::where('page_id', $page->id)->delete();
                BerkasHalaman::create([
                    'page_id' => $page->id,
                    'berkas_id' => $berkasId,
                ]);
            }
        } elseif ($request->filled('berkas_pilih')) {
            // Pilih berkas yang sudah ada (hanya satu)
            $berkasId = $request->berkas_pilih[0];
            $page->berkas_id = $berkasId;
            $page->save();
            BerkasHalaman::where('page_id', $page->id)->delete();
            BerkasHalaman::create([
                'page_id' => $page->id,
                'berkas_id' => $berkasId,
            ]);
        }
        return redirect()->route('admin.pages.index')->with('success', 'Page berhasil ditambahkan!');
    }

    public function edit($id)
    {
        $page = Page::findOrFail($id);
        $menus = Menu::whereRaw('LOWER(nama) NOT IN ("home", "kontak", "contact", "galeri", "gallery")')->get();
        $subMenu = SubMenu::where('page_id', $id)->first();
        $selectedMenuId = $subMenu ? $subMenu->menu_id : null;
        return view('admin.pages.edit', compact('page', 'menus', 'selectedMenuId'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'title' => 'required',
            'content' => 'required',
            'menu_id' => 'required|exists:menu,id',
        ]);
        $slug = strtolower(preg_replace('/[^a-z0-9]+/i', '-', trim($request->title)));
        $slug = trim($slug, '-');
        // Pastikan slug unik kecuali untuk page ini sendiri
        $originalSlug = $slug;
        $i = 2;
        while (\App\Models\Page::where('key_page', $slug)->where('id', '!=', $id)->exists()) {
            $slug = $originalSlug . '-' . $i;
            $i++;
        }
        $page = Page::findOrFail($id);
        $page->update([
            'title' => $request->title,
            'key_page' => $slug,
            'content' => $request->content,
        ]);
        // Update/insert sub_menu
        $subMenu = SubMenu::where('page_id', $id)->first();
        if ($subMenu) {
            $subMenu->update([
                'menu_id' => $request->menu_id,
                'nama' => $request->title,
                'link_type' => 'page',
                'link' => null,
            ]);
        } else {
            SubMenu::create([
                'menu_id' => $request->menu_id,
                'nama' => $request->title,
                'link_type' => 'page',
                'page_id' => $page->id,
                'link' => null,
            ]);
        }
        // Handle upload berkas baru (hanya satu)
        $berkasId = null;
        if ($request->hasFile('berkas_upload')) {
            $file = $request->file('berkas_upload')[0] ?? null;
            if ($file && $file->isValid()) {
                $filename = time().'_'.uniqid().'_'.$file->getClientOriginalName();
                $file->move(public_path('assets/berkas'), $filename);
                $berkas = Berkas::create([
                    'nama_berkas' => $filename,
                    'berkas' => $filename,
                ]);
                $berkasId = $berkas->id;
                $page->berkas_id = $berkasId;
                $page->save();
                BerkasHalaman::where('page_id', $page->id)->delete();
                BerkasHalaman::create([
                    'page_id' => $page->id,
                    'berkas_id' => $berkasId,
                ]);
            }
        } elseif ($request->filled('berkas_pilih')) {
            $berkasId = $request->berkas_pilih[0];
            $page->berkas_id = $berkasId;
            $page->save();
            BerkasHalaman::where('page_id', $page->id)->delete();
            BerkasHalaman::create([
                'page_id' => $page->id,
                'berkas_id' => $berkasId,
            ]);
        }
        return redirect()->route('admin.pages.index')->with('success', 'Page berhasil diupdate!');
    }

    public function destroy($id)
    {
        $page = Page::findOrFail($id);
        SubMenu::where('page_id', $id)->delete();
        $page->delete();
        return redirect()->route('admin.pages.index')->with('success', 'Page berhasil dihapus!');
    }
}
