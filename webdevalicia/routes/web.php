<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

//route resource for products
Route::resource('/products', \App\Http\Controllers\ProductController::class);

// routes/web.php

//route resource for catalogue
Route::resource('/catalogues', \App\Http\Controllers\CatalogueController::class);
