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
add_theme_support( 'post-thumbnails', array('post','page','slider-items') );
set_post_thumbnail_size(200, 200, true);

// if want to use custom size
add_image_size('custom-image', 300, 300, true);
add_image_size('slider-items', 1920, 1080, true);

/*
* Widget support
*/

function widgets_sidebar() {
    register_sidebar( array(
        'name'          => esc_html__( 'Main Sidebar', 'carnews' ),
        'id'            => 'widget-home-one',
        'description'   => esc_html__( 'Widgets for sidebar', 'carnews' ),
        'before_widget' => '<div class="sidebar-widget"><div class="widget-link">',
		'after_widget'  => '</div></div>',
		'before_title'  => '<h6>',
		'after_title'   => '</h6>',
	    ) );

    // footer widget
    register_sidebar( array(
        'name'          => esc_html__( 'Footer Widget', 'carnews' ),
        'id'            => 'footer-widget',
        'description'   => esc_html__( 'Widgets for footer one', 'carnews' ),
        'before_widget' => '<div class="col-lg-3 col-md-6"><div class="usefull-link">',
		'after_widget'  => '</div></div>',
		'before_title'  => '<h6 class="text-white">',
		'after_title'   => '</h6>',
	    ) );
}
add_action( 'widgets_init', 'widgets_sidebar' ); 

/*
* rearrange comment field as user demand
*/

function rearrange_comment_field( $fields ) {
$comment_field = $fields['comment'];
unset( $fields['comment'] );
$fields['comment'] = $comment_field;
return $fields;
}
 
add_filter( 'comment_form_fields', 'rearrange_comment_field' );

/*
* remove any field as user demand
*/

// function remove_comment_field( $fields ) {
// unset( $fields['comment'] );
// unset( $fields['author'] );
// unset( $fields['email'] );
// return $fields;
// }
 
// add_filter( 'comment_form_fields', 'remove_comment_field' );

 
/*
* custom social link onto user profile
*/

function my_show_extra_profile_fields($user) { ?>

	<h3>Extra profile information</h3>

	<table class="form-table">

		<tr>
			<th><label for="facebook">Facebook</label></th>

			<td>
				<input type="text" name="facebook" id="facebook" value="<?php echo esc_attr( get_the_author_meta( 'facebook', $user->ID ) ); ?>" class="regular-text" /><br />
				<span class="description">Please enter your facebook username. [e.g http://www.facebook.com/BappyMustafiz]</span>
			</td>
		</tr>
		<tr>
			<th><label for="skype">Skype</label></th>

			<td>
				<input type="text" name="skype" id="skype" value="<?php echo esc_attr( get_the_author_meta( 'skype', $user->ID ) ); ?>" class="regular-text" /><br />
				<span class="description">Please enter your skype username. [e.g http://www.skype.com/BappyMustafiz]</span>
			</td>
		</tr>
		
		<tr>
			<th><label for="instagram">Instagram</label></th>

			<td>
				<input type="text" name="instagram" id="instagram" value="<?php echo esc_attr( get_the_author_meta( 'instagram', $user->ID ) ); ?>" class="regular-text" /><br />
				<span class="description">Please enter your instagram username. [e.g http://www.instagram.com/BappyMustafiz]</span>
			</td>
		</tr>

		<tr>
			<th><label for="linkedin">Linkedin</label></th>

			<td>
				<input type="text" name="linkedin" id="linkedin" value="<?php echo esc_attr( get_the_author_meta( 'linkedin', $user->ID ) ); ?>" class="regular-text" /><br />
				<span class="description">Please enter your linkedin username. [e.g http://www.linkedin.com/BappyMustafiz]</span>
			</td>
		</tr>
		<tr>
			<th><label for="twitter">Twitter</label></th>

			<td>
				<input type="text" name="twitter" id="twitter" value="<?php echo esc_attr( get_the_author_meta( 'twitter', $user->ID ) ); ?>" class="regular-text" /><br />
				<span class="description">Please enter your twitter username. [e.g http://www.twitter.com/BappyMustafiz]</span>
			</td>
		</tr>
		
	</table>
<?php }

add_action( 'show_user_profile', 'my_show_extra_profile_fields' );
add_action( 'edit_user_profile', 'my_show_extra_profile_fields' );


// save social link
function my_save_extra_profile_fields($user_id) {

	if ( !current_user_can( 'edit_user', $user_id ) )
		return false;

		/* Copy and paste this line for additional fields. Make sure to change 'facebook' to the field ID. */
		update_user_meta( $user_id, 'facebook', $_POST['facebook'] );
		update_user_meta( $user_id, 'skype', $_POST['skype'] );
		update_user_meta( $user_id, 'instagram', $_POST['instagram'] );
		update_user_meta( $user_id, 'linkedin', $_POST['linkedin'] );
		update_user_meta( $user_id, 'twitter', $_POST['twitter'] );
	}
add_action( 'personal_options_update', 'my_save_extra_profile_fields' );
add_action( 'edit_user_profile_update', 'my_save_extra_profile_fields' );	

/*
* custom post
*/
function slider_gallery(){
	register_post_type('slider-items',
		array(
			'labels'=>array(
				'name'               =>__('Slider'), 
				'singular_name'      =>__('Slider'), 
				'menu_name'          =>__('Slider Gallery'), 
				'name_admin_bar'     =>__('Add Slider'), 
				'add_new'            => __( 'Add Slider'),
				'add_new_item'       => __( 'Add New Slider'),
				'new_item'           => __( 'New Slider' ),
				'edit_item'          => __( 'Edit Slider' ),
				'view_item'          => __( 'View Slider' ),
				'all_items'          => __( 'All Slider' ),
				'search_items'       => __( 'Search Slider' ),
				'parent_item_colon'  => __( 'Parent Slider' ),
				'not_found'          => __( 'No Slider Found' ),
				'not_found_in_trash' => __( 'No slider found in Trash.') 
			),
			'public'             => true,
			'has_archive'        => true,
			'rewrite'            => array( 'slug' => 'slider-item' ),
			'menu_position'      => 8,
			'menu_icon'          => 'dashicons-format-gallery',
			'supports'           => array( 'title', 'editor','thumbnail')
		)
	);
}
add_action('init', 'slider_gallery');


/*
* Enable custom post taxnomy (slider gallery)
*/
function slider_gallery_taxonomy(){
	register_taxonomy(
		'slider_cat', //the name of the category, the name should be in slug form(must not contains capital letters or spaces)
		'slider-items', //post type name
		array(
			'hierarchical'      => true,
			'label'            => 'Slider Category',
			'query_var'         => true,
			'rewrite'           => array(
			   'slug' => 'slider-category',//this controls the base slug which displays before each term 
			   'with_front' => true // don't display the category base before

			)	
		)
	);
}

add_action('init', 'slider_gallery_taxonomy');

/*
* Custom meta box
*/
function slider_custom_meta() {
	add_meta_box( 'slider_meta', __( 'Others Section', 'carnews' ), 'slider_meta_callback', 'slider-items' );
}
add_action( 'add_meta_boxes', 'slider_custom_meta' );

// field creation
function slider_meta_callback( $post ) {
	wp_nonce_field( basename( __FILE__ ), 'slider_nonce' );
	$slider_stored_meta = get_post_meta( $post->ID );
	?>
	<input type="text" name="meta-subtitle-slider" id="meta-text" value="<?php if ( isset ( $slider_stored_meta['meta-subtitle-slider'] ) ) echo $slider_stored_meta['meta-subtitle-slider'][0]; ?>" style="width:100%;font-size:16px; margin-bottom: 20px;" placeholder="Enter Slider Subtitle">

	<input type="text" name="meta-url-slider" id="meta-text" value="<?php if ( isset ( $slider_stored_meta['meta-url-slider'] ) ) echo $slider_stored_meta['meta-url-slider'][0]; ?>" style="width:100%;font-size:16px;" placeholder="Enter Button URL">
	
	<?php
}
//save field value
function slider_meta_save( $post_id ) {
 
	// Checks save status
	$is_autosave = wp_is_post_autosave( $post_id );
	$is_revision = wp_is_post_revision( $post_id );
	$is_valid_nonce = ( isset( $_POST[ 'slider_nonce' ] ) && wp_verify_nonce( $_POST[ 'slider_nonce' ], basename( __FILE__ ) ) ) ? 'true' : 'false';
 
	// Exits script depending on save status
	if ( $is_autosave || $is_revision || !$is_valid_nonce ) {
		return;
	}
 
	// Checks for input and sanitizes/saves if needed
	if( isset( $_POST[ 'meta-subtitle-slider' ] ) ) {
		update_post_meta( $post_id, 'meta-subtitle-slider', sanitize_text_field( $_POST[ 'meta-subtitle-slider' ] ) );
	}

	if( isset( $_POST[ 'meta-url-slider' ] ) ) {
		update_post_meta( $post_id, 'meta-url-slider', sanitize_text_field( $_POST[ 'meta-url-slider' ] ) );
	}
	

}
add_action( 'save_post', 'slider_meta_save' );




//all scripts and style load in header 
// wp enqueue script and style
function add_theme_scripts() {
	wp_enqueue_style('bootstrap', get_template_directory_uri().'/css/bootstrap.min.css','','','');
	wp_enqueue_style('flaticon', get_template_directory_uri().'/css/flaticon.css','','','');
	wp_enqueue_style('mega_menu', get_template_directory_uri().'/css/mega-menu/mega_menu.css','','','');
	wp_enqueue_style('awesome', get_template_directory_uri().'/css/font-awesome.min.css','','','');
	wp_enqueue_style('carousel', get_template_directory_uri().'/css/owl-carousel/owl.carousel.css','','','');
	wp_enqueue_style('magnific', get_template_directory_uri().'/css/magnific-popup/magnific-popup.css','','','');
	wp_enqueue_style('settings', get_template_directory_uri().'/revolution/css/settings.css','','','');
	wp_enqueue_style('responsive', get_template_directory_uri().'/css/responsive.css','','','');
	wp_enqueue_style('Master CSS', get_template_directory_uri().'/css/style.css','','','');
	wp_enqueue_style('customizer', get_template_directory_uri().'/css/style-customizer.css','','','');
	wp_enqueue_style('custom', get_stylesheet_uri());


	// this is the right way but for slider it is of
	// wp_enqueue_script( 'jquery', get_template_directory_uri() . '/js/jquery-3.3.1.min.js', array ('jquery'), NULL, true );
	// wp_enqueue_script( 'popper', get_template_directory_uri() . '/js/popper.js', array ('jquery'), NULL, true );
	// wp_enqueue_script( 'bootstrap-js', get_template_directory_uri() . '/js/bootstrap.min.js', array ('jquery'), NULL, true );
	// wp_enqueue_script( 'mega_menu_js', get_template_directory_uri() . '/js/mega-menu/mega_menu.js', array ('jquery'), NULL, true );
	// wp_enqueue_script( 'appear', get_template_directory_uri() . '/js/jquery.appear.js', array ('jquery'), NULL, true );
	// wp_enqueue_script( 'countTo', get_template_directory_uri() . '/js/counter/jquery.countTo.js', array ('jquery'), NULL, true );
	// wp_enqueue_script( 'carousel_js', get_template_directory_uri() . '/js/owl-carousel/owl.carousel.min.js', array ('jquery'), NULL, true );
	// wp_enqueue_script( 'select', get_template_directory_uri() . '/js/select/jquery-select.js', array ('jquery'), NULL, true );
	// wp_enqueue_script( 'magnific-popup', get_template_directory_uri() . '/js/magnific-popup/jquery.magnific-popup.min.js', array ('jquery'), NULL, true );
	// wp_enqueue_script( 'revolution', get_template_directory_uri() . '/revolution/js/jquery.themepunch.revolution.min.js', array ('jquery'), NULL, true );
	// wp_enqueue_script( 'actions', get_template_directory_uri() . '/revolution/js/extensions/revolution.extension.actions.min.js', array ('jquery'), NULL, true );
	// wp_enqueue_script( 'extension', get_template_directory_uri() . '/revolution/js/extensions/revolution.extension.carousel.min.js', array ('jquery'), NULL, true );
	// wp_enqueue_script( 'kenburn', get_template_directory_uri() . '/revolution/js/extensions/revolution.extension.kenburn.min.js', array ('jquery'), NULL, true );
	// wp_enqueue_script( 'layeranimation', get_template_directory_uri() . '/revolution/js/extensions/revolution.extension.layeranimation.min.js', array ('jquery'), NULL, true );
	// wp_enqueue_script( 'migration', get_template_directory_uri() . '/revolution/js/extensions/revolution.extension.migration.min.js', array ('jquery'), NULL, true );
	// wp_enqueue_script( 'navigation', get_template_directory_uri() . '/revolution/js/extensions/revolution.extension.navigation.min.js', array ('jquery'), NULL, true );
	// wp_enqueue_script( 'parallax', get_template_directory_uri() . '/revolution/js/extensions/revolution.extension.parallax.min.js', array ('jquery'), NULL, true );
	// wp_enqueue_script( 'slideanims', get_template_directory_uri() . '/revolution/js/extensions/revolution.extension.slideanims.min.js', array ('jquery'), NULL, true );
	// wp_enqueue_script( 'video', get_template_directory_uri() . '/revolution/js/extensions/revolution.extension.video.min.js', array ('jquery'), NULL, true );
	// wp_enqueue_script( 'style-customizer', get_template_directory_uri() . '/js/style-customizer.js', array ('jquery'), NULL, true );
	// wp_enqueue_script( 'custom-js', get_template_directory_uri() . '/js/custom.js', array ('jquery'), NULL, true );

	// wp_enqueue_script( 'jquery' );
	// wp_enqueue_script( 'popper' );
	// wp_enqueue_script( 'bootstrap-js' );
	// wp_enqueue_script( 'mega_menu_js' );
	// wp_enqueue_script( 'appear' );
	// wp_enqueue_script( 'countTo' );
	// wp_enqueue_script( 'carousel_js' );
	// wp_enqueue_script( 'select' );
	// wp_enqueue_script( 'magnific-popup' );
	// wp_enqueue_script( 'revolution' );
	// wp_enqueue_script( 'actions' );
	// wp_enqueue_script( 'extension' );
	// wp_enqueue_script( 'kenburn' );
	// wp_enqueue_script( 'layeranimation' );
	// wp_enqueue_script( 'migration' );
	// wp_enqueue_script( 'navigation' );
	// wp_enqueue_script( 'parallax' );
	// wp_enqueue_script( 'slideanims' );
	// wp_enqueue_script( 'video' );
	// wp_enqueue_script( 'style-customizer' );
	// wp_enqueue_script( 'custom-js' );
	// 
	if (is_singular() && comments_open() && get_option('thread_comments')) {
	    wp_enqueue_script('comment-reply');
	  }
}
add_action( 'wp_enqueue_scripts', 'add_theme_scripts' );


// Basic shortcode
function basic_shortcode($atts, $content = null) {
   
	return ('<span style="background:red; padding:20px;">'.$content.'</span>');
}
add_shortcode("basic", "basic_shortcode");

//advance shorcode register
function youtube_shortcode($atts, $content = null) {
	extract(shortcode_atts(array("video_id"=> '',"width" => '',"height" =>'' ), $atts));
	?>

		<iframe width="<?= $width;?>" height="<?= $height;?>" src="https://www.youtube.com/embed/<?= $video_id;?>" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
	<?php
	}
add_shortcode("youtube", "youtube_shortcode");

//example boxes shortcode
function boxes_shortcode($atts, $content = null) {
	extract(shortcode_atts(array("text"=> '',"class" => ''), $atts));
	?>
   		<div class="<?= $class;?>">
   			<?= $text;?>
   		</div>
   	<?php
	}
add_shortcode("boxes", "boxes_shortcode");

// wordpress default customizer customization

/*Remove customize from apperance*/
function carnews_remove_customize_page(){
	global $submenu;
	unset($submenu['themes.php'][6]); //remove customize link
}
add_action('admin_menu','carnews_remove_customize_page');

/*adding customizer into menu*/
function carnews_register_customizer_for_menu_items(){
	add_menu_page('Customizer title', 'Theme Options', 'manage_options', 'customize.php', '', '', 100);
}
add_action('admin_menu','carnews_register_customizer_for_menu_items');

/*Customizer main*/
function carnews_customizer($wp_customize){
	$wp_customize->remove_section('nav');
	$wp_customize->remove_section('static_front_page');
	$wp_customize->remove_section('title_tagline');
	$wp_customize->remove_panel('widgets');

	/* =========================================== */
	/* ------------ Panel :: Header */
	/* =========================================== */
	$wp_customize->add_panel('header_panel', array(
		'priority' => 9,
		'capability' => 'edit_theme_options',
		'theme_support' => '',
		'title' => __('Header','carnews'),
		'description' => false,
	));

	// logo
	/* ============ Section =============== */
	$wp_customize->add_section('logo_section', array(
		'title' => 'Logo',
		'priority' => 5,
		'panel' => 'header_panel'
	));

	/* ============ Settings and control =============== */
	
	$wp_customize->add_setting('logo', array(
		'default' => '',
		'transport' => 'refresh'
	));

	$wp_customize->add_control(
		new WP_Customize_Image_Control($wp_customize, 'logo', array(
			'section' => 'logo_section',
			'label' => 'Upload Your Logo'
		))
	);
	// favicon
	/* ============ Section =============== */
	$wp_customize->add_section('favicon_section', array(
		'title' => 'Favicon',
		'priority' => 6,
		'panel' => 'header_panel'
	));

	/* ============ Settings and control =============== */
	// logo
	$wp_customize->add_setting('favicon', array(
		'default' => '',
		'transport' => 'refresh'
	));

	$wp_customize->add_control(
		new WP_Customize_Image_Control($wp_customize, 'favicon', array(
			'section' => 'favicon_section',
			'label' => 'Upload Your Favicon'
		))
	);

	// header text section
	/* ============ Section =============== */
	$wp_customize->add_section('header_text_section', array(
		'title' => 'Header Text',
		'priority' => 7,
		'panel' => 'header_panel'
	));

	/* ============ Settings and control =============== */
	// header phone
	$wp_customize->add_setting('header_phone', array(
		'default' => '',
		'transport' => 'postMessage'
	));

	$wp_customize->add_control('header_phone', array(
			'section' => 'header_text_section',
			'label' => 'Header Phone Number',
			'type' => 'text'
		));
	/* ============ Settings and control =============== */
	// header email
	$wp_customize->add_setting('header_email', array(
		'default' => '',
		'transport' => 'postMessage'
	));

	$wp_customize->add_control('header_email', array(
			'section' => 'header_text_section',
			'label' => 'Header Email Address',
			'type' => 'text'
		));

	// header social
	/* ============ Section =============== */
	$wp_customize->add_section('header_social_section', array(
		'title' => 'Header Social',
		'priority' => 8,
		'panel' => 'header_panel'
	));
	// header facebook
	$wp_customize->add_setting( 'header_facebook', array(
	  'capability' => 'edit_theme_options',
	  'sanitize_callback' => 'themeslug_sanitize_url',
	) );

	$wp_customize->add_control( 'header_facebook', array(
	  'type' => 'url',
	  'section' => 'header_social_section', // Add a default or your own section
	  'label' => __( 'Facebook URL' ),
	  'description' => __( 'This is a facebook url input.' ),
	  'input_attrs' => array(
	    'placeholder' => __( 'http://www.facebook.com' ),
	  ),
	) );

	// header twitter
	$wp_customize->add_setting( 'header_twitter', array(
	  'capability' => 'edit_theme_options',
	  'sanitize_callback' => 'themeslug_sanitize_url',
	) );

	$wp_customize->add_control( 'header_twitter', array(
	  'type' => 'url',
	  'section' => 'header_social_section', // Add a default or your own section
	  'label' => __( 'Twitter URL' ),
	  'description' => __( 'This is a twitter url input.' ),
	  'input_attrs' => array(
	    'placeholder' => __( 'http://www.twitter.com' ),
	  ),
	) );

	// header instagram
	$wp_customize->add_setting( 'header_instagram', array(
	  'capability' => 'edit_theme_options',
	  'sanitize_callback' => 'themeslug_sanitize_url',
	) );

	$wp_customize->add_control( 'header_instagram', array(
	  'type' => 'url',
	  'section' => 'header_social_section', // Add a default or your own section
	  'label' => __( 'Instagram URL' ),
	  'description' => __( 'This is a instagram url input.' ),
	  'input_attrs' => array(
	    'placeholder' => __( 'http://www.instagram.com' ),
	  ),
	) );

	// header youtube
	$wp_customize->add_setting( 'header_youtube', array(
	  'capability' => 'edit_theme_options',
	  'sanitize_callback' => 'themeslug_sanitize_url',
	) );

	$wp_customize->add_control( 'header_youtube', array(
	  'type' => 'url',
	  'section' => 'header_social_section', // Add a default or your own section
	  'label' => __( 'Youtube URL' ),
	  'description' => __( 'This is a youtube url input.' ),
	  'input_attrs' => array(
	    'placeholder' => __( 'http://www.youtube.com' ),
	  ),
	) );

	function themeslug_sanitize_url( $url ) {
	  return esc_url_raw( $url );
	}

	/* =========================================== */
	/* ------------Color Panel :: Header */
	/* =========================================== */
	$wp_customize->add_panel('color_panel', array(
		'priority' => 9,
		'capability' => 'edit_theme_options',
		'theme_support' => '',
		'title' => __('Color','carnews'),
		'description' => false,
	));
	// Header color
	/* ============ Section =============== */
	$wp_customize->add_section('color_section', array(
		'title' => 'Header Color',
		'priority' => 8,
		'panel' => 'color_panel'
	));

	/* ============ Settings and control =============== */
	// logo
	$wp_customize->add_setting('header_bg_color', array(
		'default' => '#ffffff',
		'transport' => 'postMessage'
	));

	$wp_customize->add_control(
		new WP_Customize_Color_Control($wp_customize, 'header_bg_color', array(
			'section' => 'color_section',
			'label' => 'Header Background Color'
		))
	);
}

add_action('customize_register','carnews_customizer');


/*Removing live refresh style for customizer */
function carnews_customizer_scripts(){
	wp_enqueue_script('customizer-scripts', get_template_directory_uri().'/inc/customizer/theme-customize.js', array('jquery', 'customize-preview'), '', true);
}
add_action('customize_preview_init', 'carnews_customizer_scripts');


// word count function
function word_count($string, $limit){
	$word = explode(' ', $string);
	$word = array_slice($word, 0, $limit);
	$word = implode(' ', $word);
	return ($word);
}

// Redux framework
require_once(get_template_directory().'/redux-framework/ReduxCore/framework.php');
require_once(get_template_directory().'/redux-framework/sample/config.php');