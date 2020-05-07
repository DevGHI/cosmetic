<?php


namespace App\Http\Controllers\CustomClass;


use Illuminate\Support\Facades\Http;

class Helper
{
    // public static $domain='http://zayy.ddmmyanmar.com/';
    public static $domain='http://localhost:8888/cosmetic/public/';

    public static function getCategory(){
         $response=Http::get(self::$domain.'api/maincategories');
         $category=$response->json();
         return $category;
    }
}
