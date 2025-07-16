<?php
namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\WebSetting;

class WebSettingController extends Controller
{
    public function index()
    {
        $setting = WebSetting::first();
        return view('admin.web_setting.index', compact('setting'));
    }

    public function edit()
    {
        $setting = WebSetting::first();
        return view('admin.web_setting.edit', compact('setting'));
    }

    public function update(Request $request)
    {
        $setting = WebSetting::first();
        $request->validate([
            'judul_website' => 'required',
            'title' => 'required',
            'facebook' => 'nullable',
            'twitter' => 'nullable',
            'google_plus' => 'nullable',
            'email' => 'required|email',
            'alamat' => 'required',
            'no_telp' => 'required',
            'run_text' => 'nullable',
        ]);
        $setting->update($request->only(['judul_website', 'title', 'facebook', 'twitter', 'google_plus', 'email', 'alamat', 'no_telp', 'run_text']));
        return redirect()->route('admin.web_setting.index')->with('success', 'Data kontak berhasil diupdate!');
    }
}
