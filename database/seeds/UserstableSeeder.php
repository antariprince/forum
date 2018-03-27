<?php

use Illuminate\Database\Seeder;

class UserstableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        App\User::create([
        	'name' => 'admin',
        	'password' => bcrypt('admin'),
        	'email' => 'admin@udemy-forum.dev',
        	'admin' => 1,
        	'avatar' => asset('uploads/avatars/screenshot.jpg')
        ]);

        App\User::create([
            'name' => 'sheldon cooper',
            'password' => bcrypt('password'),
            'email' => 'tj.module.test@gmail.com',
            'avatar' => asset('uploads/avatars/screenshot.jpg')
        ]);
    }
}
