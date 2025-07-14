<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FotoGallery extends Model
{
    use HasFactory;
    protected $table = 'foto_gallery';
    protected $fillable = [
        'title', 'keterangan', 'gambar', 'album_id'
    ];

    public function album()
    {
        return $this->belongsTo(Album::class, 'album_id');
    }
}
