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
            'email' => 'required|email',
            'alamat' => 'required',
            'no_telp' => 'required',
            'nama_sekolah' => 'required',
            'logo' => 'nullable|image|mimes:jpg,jpeg,png,gif|max:2048',
        ]);
        $data = $request->only(['judul_website', 'title', 'email', 'alamat', 'no_telp', 'nama_sekolah']);
        $data['meta_desc'] = $request->meta_desc;
        $data['meta_key'] = $request->meta_key;
        $data['meta_text'] = $request->meta_text;
        // Simpan medsos dinamis
        $medsos = [];
        if ($request->has('medsos_platform') && $request->has('medsos_link')) {
            foreach ($request->medsos_platform as $i => $platform) {
                $link = $request->medsos_link[$i] ?? '';
                if ($platform && $link) {
                    $medsos[$platform] = $link;
                }
            }
        }
        $data['medsos'] = json_encode($medsos);
        if ($request->hasFile('logo')) {
            $file = $request->file('logo');
            $filename = 'logo_' . time() . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('assets/images'), $filename);
            $data['logo'] = $filename;
        }
        $setting->update($data);
        return redirect()->route('admin.web_setting.index')->with('success', 'Data kontak berhasil diupdate!');
    }
}
