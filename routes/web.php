<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/teams/create', 'TeamsController@create');
Route::post('/teams/create', 'TeamsController@store');

Route::get('/login', 'TeamsController@index');
Route::post('/login', 'TeamsController@login');

Route::get('/logout', 'TeamsController@logout');

Route::get('/leaderboard', 'SubmissionsController@index');

Route::get('/questions/{question}', 'QuestionsController@show');
Route::post('/questions/{question}', 'SubmissionsController@store');

Route::post('/timeout', 'TeamsController@timeup');
