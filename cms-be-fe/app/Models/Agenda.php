<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Agenda extends Model
{
    use HasFactory;
    protected $table = 'agenda';
    protected $fillable = [
        'title', 'tgl', 'meta_key', 'meta_desc', 'meta_text', 'picture', 'content', 'datepost'
    ];
    protected $dates = ['tgl', 'datepost'];
}
