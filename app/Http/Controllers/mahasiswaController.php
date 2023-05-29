<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\mahasiswaModel;
use App\Models\fakultasModel;
use App\Models\program_studi_model;

class mahasiswaController extends Controller
{
    public function cari(Request $request)
	{
		$cari = $request->cari;
        
		$mhs = mahasiswaModel::where('nama','like',"%".$cari."%")->paginate(10);
		return view('mhs.index',['mahasiswa' => $mhs]);
 
	}
    
    public function index()
    {
        $mhs = mahasiswaModel::paginate(10);
        return view('mhs.index', [
            'mahasiswa' => $mhs
        ]);
    }

    public function indexTambah()
    {
        $fakultas = fakultasModel::all();
        return view('mhs.tambah',[
            'fakultas' => $fakultas,
        ]);
    }

    public function getProdi()
    {
        $data = fakultasModel::find(request()->id);
        $prodi = $data->program_studi_model;
        return response()->json($prodi);
    }

    public function store(Request $request)
    {
        mahasiswaModel::create([
            'nama' => $request->nama,
            'nim' => $request->nim,
            'alamat' => $request->alamat,
            'jenis_kelamin'=> $request->jenis_kelamin,
            'fakultas_id'=> $request->fakultas_id,
            'program_studi_id'=> $request->program_studi_id
        ]);

        return redirect('/index-mhs');
    }

    public function edit($id)
    {
        $mhsedit = mahasiswaModel::where('id', $id)->first();
        return view('mhs.edit', [
            'mhs' => $mhsedit
        ]);
    }

    public function update(Request $request)
    {
        mahasiswaModel::where('id', $request->id)->update([
            'nama' => $request->nama,
            'nim' => $request->nim,
            'alamat' => $request->alamat
        ]);

        return redirect('/index-mhs');
    }

    public function delete($id)
    {
        $data = mahasiswaModel::where('id', $id)->first();
        $data->delete();
        return redirect('/index-mhs');
    }
}
