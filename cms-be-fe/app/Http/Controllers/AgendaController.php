<?php

namespace App\Http\Controllers;

use App\Models\Agenda;
use Illuminate\Http\Request;

class AgendaController extends Controller
{
    public function index()
    {
        $agendas = Agenda::orderBy('tgl', 'desc')->paginate(10);
        return view('agenda.index', compact('agendas'));
    }
}
