<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Page extends Model
{
    use HasFactory;
    protected $table = 'page';
    protected $fillable = [
        'meta_text', 'meta_key', 'meta_desc', 'title', 'key_page', 'name', 'picture', 'content', 'berkas_id'
    ];
    public $timestamps = false;

    public function subMenu()
    {
        return $this->hasOne(\App\Models\SubMenu::class, 'page_id');
    }

    public function berkas()
    {
        return $this->belongsToMany(Berkas::class, 'berkas_halaman', 'page_id', 'berkas_id');
    }
}
