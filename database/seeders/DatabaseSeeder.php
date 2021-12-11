<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Database\Seeders\ImportTableSeeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

        $this->call([
            ImportTableSeeder::class
        ]);
    }
}
