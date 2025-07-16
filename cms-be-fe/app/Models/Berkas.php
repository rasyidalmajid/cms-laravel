<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Berkas extends Model
{
    use HasFactory;
    protected $table = 'berkas';
    protected $fillable = [
        'nama_berkas', 'berkas'
    ];
    public $timestamps = false;

    public function pages()
    {
        return $this->belongsToMany(Page::class, 'berkas_halaman', 'berkas_id', 'page_id');
    }
}
