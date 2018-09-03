<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="keywords" content="HTML5 Template" />
<meta name="description" content="Car Dealer - The Best Car Dealer Automotive Responsive HTML5 Template" />
<meta name="author" content="potenzaglobalsolutions.com" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<title><?php bloginfo( 'name' ); ?></title>

<!-- Favicon -->
<link rel="shortcut icon" href="<?= get_theme_mod('favicon')?>" />
<style>
  .topbar{
    background: <?= get_theme_mod('header_bg_color');?>!important;
  }
</style>
<?php wp_head();?>
</head>

<body>

<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-557RCPW"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

<!--=================================
  loading -->
  
<!--  <div id="loading">
  <div id="loading-center">
      <img src="<?php //echo get_template_directory_uri();?>/images/loader.gif" alt="">
 </div>
</div> -->

<!--=================================
  loading -->


<!--=================================
 header -->

<header id="header" class="defualt">
<div class="topbar">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-12">
				<div class="topbar-left text-center">
				   <ul class="list-inline">
             <li> <i class="fa fa-envelope-o"> </i> <?= get_theme_mod('header_email')?></li> 
             <!-- <li> <i class="fa fa-clock-o"></i> Mon - Sat 8.00 - 18.00. Sunday CLOSED</li> -->
           </ul>
				</div>
			</div>
			<div class="col-lg-3 col-md-12">
        <div class="topbar-right text-center">
           <ul class="list-inline">
             <li> <i class="fa fa-phone"></i> <?= get_theme_mod('header_phone')?></li>   
           </ul>
        </div>
      </div>
      <div class="col-lg-3 col-md-12">
        <div class="topbar-right text-center">
           <ul class="list-inline">
             <li><a href="<?= get_theme_mod('header_facebook')?>"><i class="fa fa-facebook"></i></a></li>   
             <li><a href="<?= get_theme_mod('header_twitter')?>"><i class="fa fa-twitter"></i></a></li>   
             <li><a href="<?= get_theme_mod('header_instagram')?>"><i class="fa fa-instagram"></i></a></li>   
             <li><a href="<?= get_theme_mod('header_youtube')?>"><i class="fa fa-youtube-play"></i></a></li>   
           </ul>
        </div>
      </div>
      <div class="col-lg-3 col-md-12">
				<?php get_search_form();?>
			</div>
		</div>
	</div>
</div>
 
<!--=================================
 mega menu -->

<div class="menu">  
  <!-- menu start -->
   <nav id="menu" class="mega-menu">
    <!-- menu list items container -->
    <section class="menu-list-items">
     <div class="container"> 
      <div class="row"> 
       <div class="col-md-12"> 
        <!-- menu logo -->
        <ul class="menu-logo">
            <li>
                <a href="<?php echo esc_url(home_url('/')); ?>"><img id="logo_img" src="<?= get_theme_mod('logo')?>" alt="logo"> </a>
            </li>
        </ul>
        <?php
            wp_nav_menu(
               array(
                  'theme_location' => 'header_top_menu',
                  'menu_class'     => 'menu-links', 
                  'menu_id'     => 'bappy', 
                  'container'     => '', 
                  'fallback_cb'     => 'default_menu', 
                  'walker'     => new custom_walker() 
               )
            );
         ?>
           </div>
          </div>
         </div>
        </section>
       </nav>
      <!-- menu end -->
     </div>
    </header>

<!--=================================
 header -->
