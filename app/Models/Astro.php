<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Astro extends Model
{
    protected $fillable = [
        'constellation_name',
        'constellation_date',
        'constellation_detail'
    ];
}
