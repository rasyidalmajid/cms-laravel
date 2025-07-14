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
}
