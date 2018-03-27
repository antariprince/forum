<?php

use Illuminate\Database\Seeder;
use App\Channel;
class ChannelsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $channel1 = ['title' => 'Laravel', 'slug' => str_slug('Laravel')];
        $channel2 = ['title' => 'Vuejs', 'slug' => str_slug('Vuejs')];
        $channel3 = ['title' => 'Php', 'slug' => str_slug('Php')];
        $channel4 = ['title' => 'Html', 'slug' => str_slug('Html')];
        $channel5 = ['title' => 'Javascript', 'slug' => str_slug('Javascript')];
        $channel6 = ['title' => 'Spark', 'slug' => str_slug('Spark')];
        $channel7 = ['title' => 'Luman', 'slug' => str_slug('Luman')];
        $channel8 = ['title' => 'Forge', 'slug' => str_slug('Forge')];

        Channel::create($channel1);
        Channel::create($channel2);
        Channel::create($channel3);
        Channel::create($channel4);
        Channel::create($channel5);
        Channel::create($channel6);
        Channel::create($channel7);
        Channel::create($channel8);
    }
}
