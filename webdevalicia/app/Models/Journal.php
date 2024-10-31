<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Journal extends Model
{
    use HasFactory;

    /**
     * fillable
     *
     * @var array
     */
    protected $fillable = [
        'title',
        'author',
        'publisher',
        'description',
        'price',
        'stock',
        'datePublished',
        'volume',
        'series',
        'number',
        'onlineLink'
    ];
}
