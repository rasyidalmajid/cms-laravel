<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BerkasHalaman extends Model
{
    protected $table = 'berkas_halaman';
    protected $fillable = ['page_id', 'berkas_id'];
    public $timestamps = false;
}
