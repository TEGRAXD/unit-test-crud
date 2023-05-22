@extends('header.navbar')
@section('content')
<div class="col-lg-12 grid-margin stretch-card " style="margin-top: 10%;">
    <div class="card">
        <div class="card-body">
            <div>
                <form action="/index-mhs/cari" method="GET">
                    <div class="container">
                        <h4 class="card-title">Data Mahasiswa</h4>
                        <div class="row mt-4">
                            <div class="col-sm-6 col-md-4">
                                <input class="form-control form-control-sm mt-2 " type="text" name="cari" placeholder="Cari mahasiswa .." aria-label=".form-control-sm example">
                            </div>
                            <div class="col-6 col-md-4">
                                <button type="submit" class="btn btn-primary btn-sm mt-2"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search-heart" viewBox="0 0 16 16">
                                        <path d="M6.5 4.482c1.664-1.673 5.825 1.254 0 5.018-5.825-3.764-1.664-6.69 0-5.018Z" />
                                        <path d="M13 6.5a6.471 6.471 0 0 1-1.258 3.844c.04.03.078.062.115.098l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1.007 1.007 0 0 1-.1-.115h.002A6.5 6.5 0 1 1 13 6.5ZM6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11Z" />
                                    </svg></button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="d-flex justify-content-end">
                <a href="/tambah-mhs" class="btn btn-outline-success"><i class="mdi mdi-account-plus"></i> Tambah Data</a>
            </div>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th> No </th>
                            <th> Nama </th>
                            <th> Nim </th>
                            <th> Alamat </th>
                            <th> Aksi </th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($mahasiswa as $mhs)
                        <tr>
                            <td>
                                @php $no = 1; @endphp
                                {{ $loop->index+1 }}
                            </td>
                            <td>
                                {{$mhs->nama}}
                            </td>
                            <td>
                                {{$mhs->nim}}
                            </td>
                            <td>
                                {{$mhs->alamat}}
                            </td>
                            <td>
                                <a href="edit-mhs/{{ $mhs->id }}">Edit</a>

                                <a href="/delete-mhs/{{ $mhs->id }}">Hapus</a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                Halaman : {{ $mahasiswa->currentPage() }} <br />
                Jumlah Data : {{ $mahasiswa->total() }} <br />
                Data Per Halaman : {{ $mahasiswa->perPage() }} <br />

                {{-- Pagination --}}
                <div class="d-flex justify-content-start mt-4">
                    {!! $mahasiswa->links() !!}
                </div>
            </div>
        </div>
    </div>
</div>

@endsection