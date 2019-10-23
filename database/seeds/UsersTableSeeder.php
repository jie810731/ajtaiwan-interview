<?php

use Illuminate\Database\Seeder;
use App\Models\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = new User ([
            'name' => 'Joseph',
            'email' => 'jie810731@gmail.com',
            'password' => bcrypt('password'),
        ]);

        $user->save();
    }
}
