<?php





Route::get('/', array(
    'as'=>'index',
    'uses'=>'HomeController@index'
));

Route::post('/short',array(
	'as'=>'short',
	'uses'=> 'ShortController@short'
	)); 
Route::get('/{code}', array(
	'as'=>'get', 
	'uses'=> 'ShortController@get'
	)); 

