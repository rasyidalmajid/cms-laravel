<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Album extends Model
{
    use HasFactory;
    protected $table = 'album';
    protected $fillable = [
        'thumbnail', 'nama_album', 'type'
    ];

    public function fotoGallery()
    {
        return $this->hasMany(FotoGallery::class, 'album_id');
    }
}
