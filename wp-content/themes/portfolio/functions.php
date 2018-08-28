<?php
/*
* Registering menu support
*/
 function portfolio_register_menu(){
 	if(function_exists('register_nav_menu')){
 		register_nav_menu('header_top_menu', __('Main Menu', 'portfolio'));
 		// register_nav_menu('header_top_sub_menu', __('Sub Menu', 'portfolio'));
 		// register_nav_menu('footer_menu', __('Footer Menu', 'portfolio'));
 	}
 }
 add_action('init', 'portfolio_register_menu');