<?php
namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\AdminUser;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index()
    {
        $users = AdminUser::all();
        return view('admin.user.index', compact('users'));
    }

    public function create()
    {
        return view('admin.user.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'username' => 'required|unique:user,username',
            'nama' => 'required',
            'password' => 'required|min:6',
            'nik' => 'nullable',
        ]);
        $data = $request->only(['username', 'nama', 'nik']);
        $data['password'] = Hash::make($request->password);
        AdminUser::create($data);
        return redirect()->route('admin.user.index')->with('success', 'Admin berhasil ditambahkan!');
    }

    public function edit($id)
    {
        $user = AdminUser::findOrFail($id);
        return view('admin.user.edit', compact('user'));
    }

    public function update(Request $request, $id)
    {
        $user = AdminUser::findOrFail($id);
        $request->validate([
            'username' => 'required|unique:user,username,' . $user->id,
            'nama' => 'required',
            'password' => 'nullable|min:6',
            'nik' => 'nullable',
        ]);
        $data = $request->only(['username', 'nama', 'nik']);
        if ($request->filled('password')) {
            $data['password'] = Hash::make($request->password);
        }
        $user->update($data);
        return redirect()->route('admin.user.index')->with('success', 'Admin berhasil diupdate!');
    }

    public function destroy($id)
    {
        $user = AdminUser::findOrFail($id);
        $user->delete();
        return redirect()->route('admin.user.index')->with('success', 'Admin berhasil dihapus!');
    }
}
