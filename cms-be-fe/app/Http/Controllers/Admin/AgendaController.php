<?php
namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Agenda;
use Illuminate\Support\Facades\DB;

class AgendaController extends Controller
{
    public function index()
    {
        $agendas = Agenda::orderBy('tgl', 'desc')->paginate(10);
        return view('admin.agenda.index', compact('agendas'));
    }

    public function create()
    {
        return view('admin.agenda.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'tgl' => 'required|date',
            'content' => 'required',
        ]);
        $data = $request->only('title', 'tgl', 'content');
        $data['meta_desc'] = $request->meta_desc;
        $data['meta_key'] = $request->meta_key;
        $data['meta_text'] = $request->meta_text;
        $data['datepost'] = now()->toDateString();
        Agenda::insert($data);
        return redirect()->route('admin.agenda.index')->with('success', 'Agenda berhasil ditambahkan!');
    }

    public function edit($id)
    {
        $agenda = Agenda::findOrFail($id);
        return view('admin.agenda.edit', compact('agenda'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'title' => 'required',
            'tgl' => 'required|date',
            'content' => 'required',
        ]);
        $data = $request->only('title', 'tgl', 'content');
        $data['meta_desc'] = $request->meta_desc;
        $data['meta_key'] = $request->meta_key;
        $data['meta_text'] = $request->meta_text;
        DB::table('agenda')->where('id', $id)->update($data);
        return redirect()->route('admin.agenda.index')->with('success', 'Agenda berhasil diupdate!');
    }

    public function destroy($id)
    {
        $agenda = Agenda::findOrFail($id);
        if ($agenda->picture && file_exists(public_path('assets/agenda/' . $agenda->picture))) {
            @unlink(public_path('assets/agenda/' . $agenda->picture));
        }
        $agenda->delete();
        return redirect()->route('admin.agenda.index')->with('success', 'Agenda berhasil dihapus!');
    }
}
