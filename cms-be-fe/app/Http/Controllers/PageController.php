<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Page;
use App\Models\Menu;

class PageController extends Controller
{
    public function show($slug)
    {
        $page = Page::where('key_page', $slug)->firstOrFail();
        $menus = Menu::with('subMenus')->get();
        return view('page.show', compact('page', 'menus'));
    }
}
