<!DOCTYPE html>
<html <?php language_attributes(); ?>>
   <head>
      <meta charset="<?php bloginfo( 'charset' ); ?>" />
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <meta name="author" content="">
      <title><?php bloginfo( 'name' ); ?></title>
      <!-- Bootstrap core CSS -->
      <link href="<?php echo get_template_directory_uri();?>/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <!-- poppins font -->
      <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
      <!-- Fontawesome css-->
      <link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/vendor/font-awesome-4.7.0/css/font-awesome.min.css">
      <!-- Custom css-->
      <link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/css/custom.css">
      <!-- Responsive css-->
      <link rel="stylesheet" href="<?php echo get_template_directory_uri();?>/css/responsive.css">
      <link rel="stylesheet" href="<?php echo get_stylesheet_uri();?>">
      <?php wp_head();?>
   </head>
   <body>
      <!-- div for scroll top to bottom -->
      <div class='thetop'></div>
      <!-- div for scroll top to bottom -->
      <!-- Navbar css start -->
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
         <div class="container">
            <a class="navbar-brand" href="index.html">
               <img src="<?php echo get_template_directory_uri();?>/img/your_logo.png" alt="logo" class="img-fluid">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
               <span style="background-color: #39598e;" class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse " id="navbarResponsive">
               <?php
                  wp_nav_menu(
                     array(
                        'theme_location' => 'header_top_menu',
                        'container_class'=> 'navbar ml-auto',
                        'items_wrap'     => '<ul class="navbar-nav">%3$s</ul>' 
                     )
                  );
               ?>
            </div>
         </div>
         <!-- .container -->
      </nav>
      <!-- Navbar css end -->