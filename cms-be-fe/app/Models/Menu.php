<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    protected $table = 'menu';
    public $timestamps = false;
    protected $guarded = [];
    public function subMenus() {
        return $this->hasMany(SubMenu::class, 'menu_id');
    }
}
