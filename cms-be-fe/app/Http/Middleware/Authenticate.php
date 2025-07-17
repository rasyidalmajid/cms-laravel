<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;

class Authenticate extends Middleware
{
    protected function redirectTo($request)
    {
        // Jika route admin, redirect ke /admin/login
        if ($request->is('admin') || $request->is('admin/*')) {
            return route('admin.login');
        }
        // Default Laravel (untuk user biasa)
        return route('login');
    }
}
