<?php
namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Menu;

class MenuController extends Controller
{
    public function index()
    {
        $menus = Menu::with('subMenus')->orderBy('urutan')->get();
        return view('admin.menu.index', compact('menus'));
    }

    public function create()
    {
        return view('admin.menu.create');
    }

    public function store(Request $request)
{
    $request->validate([
        'nama' => 'required',
        'urutan' => 'nullable|integer',
    ]);

    // -1 = paling atas
    $target = $request->input('urutan', -1);
    $insertAt = $target + 1;

    // Geser menu yang punya urutan >= insertAt
    Menu::where('urutan', '>=', $insertAt)->increment('urutan');

    $menu = new Menu();
    $menu->nama = $request->input('nama');
    $menu->urutan = $insertAt;
    $menu->save();

    $this->reindexMenuOrder();
    return redirect()->route('admin.menu.index')->with('success', 'Menu berhasil ditambahkan!');
}



    public function edit($id)
    {
        $menu = Menu::findOrFail($id);
        return view('admin.menu.edit', compact('menu'));
    }

    public function update(Request $request, $id)
{
    $request->validate([
        'nama' => 'required',
        'urutan' => 'nullable|integer',
    ]);

    $menu = Menu::findOrFail($id);
    $oldUrutan = $menu->urutan;
    $target = $request->input('urutan', -1);
    $newUrutan = $target + 1;

    if ($newUrutan != $oldUrutan) {
        if ($newUrutan < $oldUrutan) {
            // Geser ke bawah dari target sampai sebelum old
            Menu::where('urutan', '>=', $newUrutan)
                ->where('urutan', '<', $oldUrutan)
                ->increment('urutan');
        } elseif ($newUrutan > $oldUrutan) {
            // Geser ke atas dari setelah old sampai target
            Menu::where('urutan', '<=', $newUrutan)
                ->where('urutan', '>', $oldUrutan)
                ->decrement('urutan');
        }

        $menu->urutan = $newUrutan;
    }

    $menu->nama = $request->input('nama');
    $menu->save();

    $this->reindexMenuOrder();
    return redirect()->route('admin.menu.index')->with('success', 'Menu berhasil diupdate!');
}



    public function destroy($id)
    {
        $menu = Menu::findOrFail($id);
        $menu->delete();
        // Reindex setelah delete agar urutan unik dan berurutan
        $this->reindexMenuOrder();
        return redirect()->route('admin.menu.index')->with('success', 'Menu berhasil dihapus!');
    }

    public function reorder(Request $request)
    {
        $order = $request->input('order', []);
        foreach ($order as $i => $id) {
            Menu::where('id', $id)->update(['urutan' => $i]);
        }
        $this->reindexMenuOrder();
        return response()->json(['success' => true]);
    }

    private function reindexMenuOrder()
{
    $all = Menu::orderBy('urutan')->orderBy('id')->get();
    foreach ($all as $i => $menu) {
        if ($menu->urutan != $i) {
            $menu->urutan = $i;
            $menu->save();
        }
    }
}


}
