<?php 

function setActiveClass($category, $outrut = 'active') {
	return request()->category == $category ? $outrut : '';
}

function productImage($path) {
	return $path && file_exists('storage/'.$path) ? asset('storage/'.$path) : asset('img/not-found.jpg');
}