<?php

namespace Tests\Unit;

use App\Models\User;
use App\Models\mahasiswaModel;
use Tests\TestCase;
// use PHPUnit\Framework\TestCase;
// use Illuminate\Foundation\Testing\RefreshDatabase;
use Faker\Factory as Faker;

class CRUDTest extends TestCase
{
    // use RefreshDatabase;

    protected function setUp(): void
    {
        parent::setUp();
        $user = User::first();

        $this->actingAs($user);
    }

    public function test_create_mahasiswa(): void
    {
        $faker = Faker::create('id_ID');

        $this->visit('/tambah-mhs');

        $nama = $faker->name;
        $nim = random_int(1000000000,9999999999);
        $gender = $faker->randomElement(['L', 'P']);
        $alamat = $faker->randomElement(['Surabaya', 'Sidoarjo', 'Gresik', 'Bandung']);

        // Buat data test
        $this->submitForm('Tambah', [
            'nama' => $nama,
            'nim' => (string) $nim,
            'alamat' => $alamat,
            'jenis_kelamin' => $gender,
            'fakultas_id' => 1,
            'program_studi_id' => 5
        ]);

        $this->seeInDatabase('mahasiswa', [
            'nama' => $nama,
            'nim' => $nim,
            'alamat' => $alamat,
            'jenis_kelamin' => $gender,
            'fakultas_id' => 1,
            'program_studi_id' => 5
        ]);

        $this->seePageIs('/index-mhs');
        
        // Lihat data yang sudah di-input
        $this->see($nama);
        $this->see('Data Mahasiswa');
        
        // Hapus data test
        mahasiswaModel::where(['nim' => $nim])->delete();
    }

    public function test_delete_mahasiswa(): void
    {
        $faker = Faker::create('id_ID');

        $this->visit('/tambah-mhs');

        $nama = $faker->name;
        $nim = random_int(1000000000,9999999999);
        $gender = $faker->randomElement(['L', 'P']);
        $alamat = $faker->randomElement(['Surabaya', 'Sidoarjo', 'Gresik', 'Bandung']);

        // Buat data test
        $id = $this->submitForm('Tambah', [
            'nama' => $nama,
            'nim' => (string) $nim,
            'alamat' => $alamat,
            'jenis_kelamin' => $gender,
            'fakultas_id' => 1,
            'program_studi_id' => 5
        ]);

        $this->seeInDatabase('mahasiswa', [
            'nama' => $nama,
            'nim' => $nim,
            'alamat' => $alamat,
            'jenis_kelamin' => $gender,
            'fakultas_id' => 1,
            'program_studi_id' => 5
        ]);

        // Redirect
        $this->seePageIs('/index-mhs');
        
        // Lihat data yang sudah di-input
        $this->see($nama);
        $this->see('Data Mahasiswa');

        // Get data test
        $mhsTest = mahasiswaModel::where(['nim' => $nim])->first();
        $this->visit('delete-mhs/'.$mhsTest->id);
    }

    public function test_update_mahasiswa(): void
    {
        $faker = Faker::create('id_ID');

        $this->visit('/edit-mhs/1');

        $nama = $faker->name;
        $nim = random_int(1000000000,9999999999);
        $gender = $faker->randomElement(['L', 'P']);
        $alamat = $faker->randomElement(['Surabaya', 'Sidoarjo', 'Gresik', 'Bandung']);
        $prodi = $faker->numberBetween(1, 6);

        $this->submitForm('Edit', [
            'nama' => $nama,
            'nim' => (string) $nim,
            'alamat' => $alamat,
            'jenis_kelamin' => $gender,
            'fakultas_id' => 1,
            'program_studi_id' => $prodi
        ]);

        $this->seeInDatabase('mahasiswa', [
            'nama' => $nama,
            'nim' => $nim,
            'alamat' => $alamat,
            'jenis_kelamin' => $gender,
            'fakultas_id' => 1,
            'program_studi_id' => $prodi
        ]);

        $this->seePageIs('/index-mhs');
        
        // Lihat data yang sudah di-input
        $this->see($nama);
        $this->see('Data Mahasiswa');
    }
}
