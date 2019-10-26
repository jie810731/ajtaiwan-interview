<?php

namespace Tests\Unit;

use App\Service\Astro;
use Illuminate\Support\Facades\Storage;
use Tests\TestCase;

class AstroTest extends TestCase
{
    public function test_get_constellation()
    {
        $astro_service = new Astro;
        $html_body = Storage::get('result.html');
        $expect = '水瓶座';

        $result = $astro_service->getConstellation($html_body);

        $this->assertEquals($expect, $result);

    }

    public function test_get_fortune_star()
    {
        $astro_service = new Astro;
        $html_body = Storage::get('result.html');
        $expect = 1;

        $result = $astro_service->getFortuneStar($html_body);

        $this->assertEquals($expect, $result);

    }

    public function test_get_love_star()
    {
        $astro_service = new Astro;
        $html_body = Storage::get('result.html');
        $expect = 1;

        $result = $astro_service->getLoveStar($html_body);

        $this->assertEquals($expect, $result);
    }

    public function test_get_career_star()
    {
        $astro_service = new Astro;
        $html_body = Storage::get('result.html');
        $expect = 1;

        $result = $astro_service->getCareerStar($html_body);

        $this->assertEquals($expect, $result);
    }

    public function test_get_money_star()
    {
        $astro_service = new Astro;
        $html_body = Storage::get('result.html');
        $expect = 2;

        $result = $astro_service->getMoneyStar($html_body);

        $this->assertEquals($expect, $result);
    }

    public function test_get_all_fortune()
    {
        $astro_service = new Astro;
        $html_body = Storage::get('result.html');
        $expect = "常拿伴侶的不足與別人的有點做比較，不僅會讓他厭煩，更會使他喪失進取心；工作上承受壓力大，遇事需沉得住氣，煩悶時可放點音樂讓心情舒緩些；小忍成事，大忍成仁，「忍」是你今天的必修課。";

        $result = $astro_service->getAllFortune($html_body);

        $this->assertEquals($expect, $result);

    }

    public function test_get_love_fortune()
    {
        $astro_service = new Astro;
        $html_body = Storage::get('result.html');
        $expect = "克制自己不穩定的脾氣，意氣之爭只會愈搞愈僵。";

        $result = $astro_service->getLoveFortune($html_body);

        $this->assertEquals($expect, $result);

    }

    public function test_get_career_fortune()
    {
        $astro_service = new Astro;
        $html_body = Storage::get('result.html');
        $expect = "事業運不佳，既定的行程容易受到他人的改變，而且今日對於變化性高的事務不太容易接受，因而容易心生反感。";

        $result = $astro_service->getCareerFortune($html_body);

        $this->assertEquals($expect, $result);

    }

    public function test_get_money_fortune()
    {
        $astro_service = new Astro;
        $html_body = Storage::get('result.html');
        $expect = "不要太貪心，要知足常樂，否則徒增煩惱與糾紛。";

        $result = $astro_service->getMoneyFortune($html_body);

        $this->assertEquals($expect, $result);
    }

    public function test_get_fortune_date()
    {
        $astro_service = new Astro;
        $html_body = Storage::get('result.html');
        $expect = "2019-10-24";

        $result = $astro_service->getFortuneDate($html_body);

        $this->assertEquals($expect, $result);
    }
}
