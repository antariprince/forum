<?php

use Illuminate\Database\Seeder;
use App\Discussion;

class DiscussionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $t1 = 'Implementing OUQATH2 with laravel passport';
        $t2 = 'Pagination in vuejs not working correctly';
        $t3 = 'Vuejs event listeners for child components';
        $t4 = 'Laravel homestead error - undetected database';
        $lorem = 'lorem ipsum dolor sit amet';

        $d1 = [
        	'title' => $t1,
        	'content' => $lorem,
        	'channel_id' => 1,
        	'user_id' => 2,
        	'slug' => str_slug($t1)
        ];

        $d2 = [
        	'title' => $t2,
        	'content' => $lorem,
        	'channel_id' => 1,
        	'user_id' => 2,
        	'slug' => str_slug($t2)
        ];

        $d3 = [
        	'title' => $t3,
        	'content' => $lorem,
        	'channel_id' => 1,
        	'user_id' => 1,
        	'slug' => str_slug($t3)
        ];

        $d4 = [
        	'title' => $t4,
        	'content' => $lorem,
        	'channel_id' => 1,
        	'user_id' => 1,
        	'slug' => str_slug($t4)
        ];

        Discussion::create($d1);
        Discussion::create($d2);
        Discussion::create($d3);
        Discussion::create($d4);
    }
}
