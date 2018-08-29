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



// require_once('class-wp-bootstrap-navwalker.php');
require_once('class-walker-nav-menu.php');

/*
* Featured image support
*/
add_theme_support( 'post-thumbnails', array('post','page') );
set_post_thumbnail_size(200, 200, true);

// if want to use custom size
add_image_size('custom-image', 500, 1170, true);

/*
* Widget support
*/

function widgets_sidebar() {
    register_sidebar( array(
        'name'          => __( 'Main Sidebar', 'carnews' ),
        'id'            => 'widget-home-one',
        'description'   => __( 'Widgets in this area will be shown on all posts and pages.', 'carnews' ),
        'before_widget' => '<div class="sidebar-widget"><div class="widget-link">',
		'after_widget'  => '</div></div>',
		'before_title'  => '<h6>',
		'after_title'   => '</h6>',
	    ) );

    // footer widget
    register_sidebar( array(
        'name'          => __( 'Footer Widget', 'carnews' ),
        'id'            => 'footer-widget-one',
        'description'   => __( 'Widgets for footer', 'carnews' ),
        'before_widget' => '<div class="usefull-link">',
		'after_widget'  => '</div>',
		'before_title'  => '<h6 class="text-white">',
		'after_title'   => '</h6>',
	    ) );
}
add_action( 'widgets_init', 'widgets_sidebar' ); 