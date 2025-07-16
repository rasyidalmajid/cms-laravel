<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KritikSaran extends Model
{
    use HasFactory;
    protected $table = 'kritik_saran';
    protected $fillable = [
        'tanggal_input', 'nama_anggota', 'no_anggota', 'alamat', 'no_telp_hp', 'konten'
    ];
    public $timestamps = false;
}
