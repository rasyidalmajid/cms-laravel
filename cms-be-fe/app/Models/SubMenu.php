<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class SubMenu extends Model
{
    protected $table = 'sub_menu';
    public $timestamps = false;
    protected $guarded = [];
    public function menu() {
        return $this->belongsTo(Menu::class, 'menu_id');
    }
    public function page() {
        return $this->belongsTo(Page::class, 'page_id');
    }
}
