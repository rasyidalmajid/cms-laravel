<?php
namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;

class AdminUser extends Authenticatable
{
    protected $table = 'user';
    public $timestamps = false;
    protected $fillable = ['username', 'password', 'nama', 'nik'];
    protected $guarded = [];
    protected $rememberTokenName = false;
    protected $primaryKey = 'id';
    public $incrementing = true;
    protected $keyType = 'int';

    public function getAuthPassword()
    {
        return $this->password;
    }
}
