<?php

namespace Tests\Unit;

use App\Models\User;
use Tests\TestCase;
// use PHPUnit\Framework\TestCase;
// use Illuminate\Foundation\Testing\RefreshDatabase;

class AuthTest extends TestCase
{
    public function test_pages_index_mhs_rendered(): void
    {
        // Kita memiliki 1 user terdaftar
        // $user = User::factory()->create([
        //     'name'    => 'tegar',
        //     'email'    => 'tegar@gmail.com',
        //     'password' => bcrypt('tegar'),
        //     'role' => 'admin',
        // ]);
    
        // Kunjungi halaman '/' - Jika belum login otomatis ke view('login')
        $this->visit('/');
    
        // Submit form login dengan akun yang sudah ada
        $this->submitForm('Login', [
            'email'    => 'wahyu@gmail.com',
            'password' => 'wahyu',
        ]);

        // Lihat halaman ter-redirect ke url '/index-mhs' (login sukses).
        $this->seePageIs('/index-mhs');
    
        // Pada halaman utama apakah terdapat text 'Data Mahasiswa'
        $this->see('Data Mahasiswa');
    }
}
