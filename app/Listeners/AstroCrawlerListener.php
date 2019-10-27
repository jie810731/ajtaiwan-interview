<?php

namespace App\Listeners;

use App\Events\AstroCrawler;
use App\Models\Astro as AstroModel;
use App\Service\Astro;
use GuzzleHttp\Client;

class AstroCrawlerListener
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  AstroCrawler  $event
     * @return void
     */
    public function handle(AstroCrawler $event)
    {
        $url = $event->url;
        $client = new Client();
        $astro_service = new Astro;

        $response = $client->request('GET', $url);
        $body = $response->getBody();
        $remainingBytes = $body->getContents();

        $date = $astro_service->getFortuneDate($remainingBytes);
        $constellation = $astro_service->getConstellation($remainingBytes);
        $constellation_detail = [
            'all_fortune' => $astro_service->getAllFortune($remainingBytes),
            'all_fortune_star' => $astro_service->getFortuneStar($remainingBytes),
            'love_fortune' => $astro_service->getLoveFortune($remainingBytes),
            'love_fortune_star' => $astro_service->getLoveStar($remainingBytes),
            'career_fortune' => $astro_service->getCareerFortune($remainingBytes),
            'career_star' => $astro_service->getCareerStar($remainingBytes),
            'money_fortune' => $astro_service->getMoneyFortune($remainingBytes),
            'money_star' => $astro_service->getMoneyStar($remainingBytes),
        ];

        $data = [
            'constellation_name' => $constellation,
            'constellation_date' => $date,
            'constellation_detail' => json_encode($constellation_detail),
        ];

        $astro = new AstroModel;
        $astro->fill($data);
        $astro->save();

    }
}
