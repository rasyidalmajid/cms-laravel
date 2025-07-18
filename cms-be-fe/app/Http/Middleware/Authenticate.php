<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Illuminate\Support\Facades\Route;

class Authenticate extends Middleware
{
    protected function redirectTo($request)
    {
        // Redirect ke route admin.login jika ada, jika tidak fallback ke /admin/login
        if (Route::has('admin.login')) {
            return route('admin.login');
        }
        return '/admin/login';
    }
}
