<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Slider;

class SliderController extends Controller
{
    public function index()
    {
        $sliders = Slider::orderBy('no_urut')->get();
        return view('admin.slider.index', compact('sliders'));
    }

    public function create()
    {
        return view('admin.slider.create');
    }

    public function store(Request $request)
    {
        Slider::creating(function ($model) { $model->timestamps = false; });
        $request->validate([
            'picture' => 'required|image|mimes:jpg,jpeg,png,gif|max:2048',
            'no_urut' => 'required|integer|unique:slider,no_urut',
            'link' => 'nullable|url',
        ]);
        $data = $request->only(['title', 'desc', 'no_urut', 'link']);
        if ($request->hasFile('picture')) {
            $file = $request->file('picture');
            $filename = 'slider_' . time() . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('assets/slider'), $filename);
            $data['picture'] = $filename;
        }
        $slider = new Slider($data);
        $slider->timestamps = false;
        $slider->save();
        return redirect()->route('admin.slider.index')->with('success', 'Slider berhasil ditambahkan!');
    }

    public function edit($id)
    {
        $slider = Slider::findOrFail($id);
        return view('admin.slider.edit', compact('slider'));
    }

    public function update(Request $request, $id)
    {
        $slider = Slider::findOrFail($id);
        $slider->timestamps = false;
        $request->validate([
            'picture' => 'nullable|image|mimes:jpg,jpeg,png,gif|max:2048',
            'title' => 'nullable',
            'desc' => 'nullable',
            'no_urut' => 'required|integer',
            'link' => 'nullable|url',
        ]);
        $data = $request->only(['title', 'desc', 'no_urut', 'link']);
        if ($request->hasFile('picture')) {
            $file = $request->file('picture');
            $filename = 'slider_' . time() . '.' . $file->getClientOriginalExtension();
            $file->move(public_path('assets/slider'), $filename);
            $data['picture'] = $filename;
        }
        $slider->fill($data);
        $slider->save();
        return redirect()->route('admin.slider.index')->with('success', 'Slider berhasil diupdate!');
    }

    public function destroy($id)
    {
        $slider = Slider::findOrFail($id);
        if ($slider->picture && file_exists(public_path('assets/slider/' . $slider->picture))) {
            @unlink(public_path('assets/slider/' . $slider->picture));
        }
        $slider->delete();
        return redirect()->route('admin.slider.index')->with('success', 'Slider berhasil dihapus!');
    }

    public function reorder(Request $request)
    {
        $order = $request->input('order', []);
        foreach ($order as $i => $id) {
            \App\Models\Slider::where('id', $id)->update(['no_urut' => $i]);
        }
        return response()->json(['success' => true]);
    }
}
