<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class MahasiswaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Faker::create('id_ID');
 
    	for($i = 1; $i <= 5000; $i++){
 
    	      // insert data ke table pegawai menggunakan Faker
    		DB::table('mahasiswa')->insert([
    			'nama' => $faker->name,
    			'nim' => $faker->numberBetween(1000000000,5000000000),
    			'alamat' => $faker->address
    		]);
 
    	}
    }
}
