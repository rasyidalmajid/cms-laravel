<?php
namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function showLoginForm()
    {
        return view('admin.login');
    }

    public function login(Request $request)
    {
        $credentials = [
            'username' => $request->username,
            'password' => $request->password,
        ];
        $user = \App\Models\AdminUser::where('username', $credentials['username'])->first();
        if ($user && $user->password === md5($credentials['password'])) {
            Auth::guard('admin')->login($user);
            return redirect()->route('admin.dashboard');
        }
        return back()->withErrors(['username' => 'Login gagal!']);
    }

    public function logout()
    {
        Auth::guard('admin')->logout();
        return redirect()->route('admin.login');
    }
}
