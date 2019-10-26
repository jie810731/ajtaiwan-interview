<?php

namespace App\Service;

use Symfony\Component\DomCrawler\Crawler;

class Astro
{
    public function getConstellation($html_body)
    {
        $crawler = new Crawler($html_body);
        $crawler_text = $crawler->filter('.TODAY_CONTENT > h3')
            ->first()
            ->text();

        $pattern = '/^今日(.*)解析/m';

        preg_match($pattern, $crawler_text, $matches);

        return $matches[1];
    }

    public function getFortuneStar($html_body)
    {
        $crawler = new Crawler($html_body);
        $crawler_text = $crawler->filter('.STAR_LIGHT > img')
            ->first()
            ->image()
            ->getUri();

        $star = $this->getImageStar($crawler_text);

        return $star;
    }

    public function getLoveStar($html_body)
    {
        $crawler = new Crawler($html_body);
        $crawler_text = $crawler->filter('.STAR_LIGHT > img')
            ->eq(1)
            ->image()
            ->getUri();

        $star = $this->getImageStar($crawler_text);

        return $star;
    }

    public function getCareerStar($html_body)
    {
        $crawler = new Crawler($html_body);
        $crawler_text = $crawler->filter('.STAR_LIGHT > img')
            ->eq(2)
            ->image()
            ->getUri();

        $star = $this->getImageStar($crawler_text);

        return $star;
    }

    public function getMoneyStar($html_body)
    {
        $crawler = new Crawler($html_body);
        $crawler_text = $crawler->filter('.STAR_LIGHT > img')
            ->eq(3)
            ->image()
            ->getUri();

        $star = $this->getImageStar($crawler_text);

        return $star;
    }

    private function getImageStar($image_url)
    {
        $pattern = '/http:\/\/yimgs.click108.com.tw\/astro\/images\/2015\/SUB\/[a-z]*\/icon0(\d).png/m';
        preg_match($pattern, $image_url, $matches);

        return $matches[1];
    }

    public function getAllFortune($html_body)
    {
        $crawler = new Crawler($html_body);
        $crawler_text = $crawler->filter('.TODAY_CONTENT > p')
            ->eq(1)
            ->text();

        return $crawler_text;
    }

    public function getLoveFortune($html_body)
    {
        $crawler = new Crawler($html_body);
        $crawler_text = $crawler->filter('.TODAY_CONTENT > p')
            ->eq(3)
            ->text();

        return $crawler_text;
    }

    public function getCareerFortune($html_body)
    {
        $crawler = new Crawler($html_body);
        $crawler_text = $crawler->filter('.TODAY_CONTENT > p')
            ->eq(5)
            ->text();

        return $crawler_text;
    }

    public function getMoneyFortune($html_body)
    {
        $crawler = new Crawler($html_body);
        $crawler_text = $crawler->filter('.TODAY_CONTENT > p')
            ->eq(7)
            ->text();

        return $crawler_text;
    }

    public function getFortuneDate($html_body)
    {
        $crawler = new Crawler($html_body);
        $crawler_text = $crawler->filter('#iAcDay > option')->reduce(function (Crawler $node, $i) {

            return ($node->attr('selected')) == 'selected';
        })
            ->text();

        return $crawler_text;
    }

}
