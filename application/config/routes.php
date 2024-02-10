<?php
defined('BASEPATH') OR exit('No direct script access allowed');

//posts
$route['articles/posts'] = 'posts/index';

$route['posts/index'] = 'posts/index';
$route['posts/create'] = 'posts/create';
$route['posts/update'] = 'posts/update';
$route['posts/(:any)'] = 'posts/view/$1';
//$route['articles/posts'] = 'posts/index';

//default
$route['default_controller'] = 'Pages/view';

//categories
$route['categories'] = 'categories/index';
$route['categories/create'] = 'categories/create';
$route['categories/posts/(:any)'] = 'categories/posts/$1';

$route['(:any)'] = 'Pages/view/$1';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
