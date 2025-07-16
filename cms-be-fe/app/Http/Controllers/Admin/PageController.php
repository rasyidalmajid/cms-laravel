<?php
namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Page;
use App\Models\Menu;
use App\Models\SubMenu;

class PageController extends Controller
{
    public function index()
    {
        $pages = Page::all();
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
            'key_page' => 'required|unique:page,key_page',
            'content' => 'required',
            'menu_id' => 'required|exists:menu,id',
        ]);
        $page = Page::create($request->only('title', 'key_page', 'content'));
        // Simpan ke sub_menu
        SubMenu::create([
            'menu_id' => $request->menu_id,
            'nama' => $request->title,
            'link_type' => 'page',
            'page_id' => $page->id,
            'link' => null,
        ]);
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
            'key_page' => 'required|unique:page,key_page,' . $id,
            'content' => 'required',
            'menu_id' => 'required|exists:menu,id',
        ]);
        $page = Page::findOrFail($id);
        $page->update($request->only('title', 'key_page', 'content'));
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
