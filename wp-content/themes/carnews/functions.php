<?php
/*
* Registering menu support
*/
 function carnews_register_menu(){
 	if(function_exists('register_nav_menu')){
 		register_nav_menu('header_top_menu', __('Main Menu', 'carnews'));
 		// register_nav_menu('header_top_sub_menu', __('Sub Menu', 'portfolio'));
 		register_nav_menu('footer_menu', __('Footer Menu', 'carnews'));
 	}
 }
 add_action('init', 'carnews_register_menu');

 /*
* Registering DEFAULT MENU
*/
function default_menu(){
	echo '<ul class="menu-links">';
	if (is_user_logged_in()) {
		echo '<li><a href="'.home_url().'/wp-admin/nav-menus.php">Create Menu</a></li>';
		} else {
			echo '<li><a href="'.home_url().'">Home</a></li>';
		}
	echo "</ul>";
}



require_once('class-wp-bootstrap-navwalker.php');