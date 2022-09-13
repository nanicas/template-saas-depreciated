<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::insert([
            'name' => 'José',
            'email' => 'jose@gmail.com',
            'password' => Hash::make('jose123123'),
            'own_id' => 1,
            'type' => 'admin'
        ]);
    }
}
