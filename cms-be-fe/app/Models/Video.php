<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Video extends Model
{
    use HasFactory;
    protected $table = 'video';
    protected $fillable = [
        'thumbnail', 'title', 'video_url', 'album_id'
    ];

    public function album()
    {
        return $this->belongsTo(Album::class, 'album_id');
    }
}
