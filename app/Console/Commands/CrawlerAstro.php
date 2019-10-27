<?php

namespace App\Console\Commands;

use App\Events\AstroCrawler;
use Illuminate\Console\Command;

class CrawlerAstro extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'crawler-astro';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'get astro data';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        for ($index = 0; $index < 12; $index++) {
            event(new AstroCrawler("http://astro.click108.com.tw/daily_10.php?iAstro={$index}"));
        }

    }
}
