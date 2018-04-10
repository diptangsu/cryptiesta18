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
Route::get('/submissions', 'SubmissionsController@statistics');

Route::get('/questions/{question}', 'QuestionsController@show');
Route::post('/questions/{question}', 'SubmissionsController@store');

Route::post('/timeout', 'TeamsController@timeup');

Route::get('/18d4486d34a4f11b1fefe443eL', function () {
    return "flag{1_l0v3_play1ng_w1th_r0b0t5}";
});