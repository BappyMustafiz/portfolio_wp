<?php global $versatile;?>
<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<title><?php bloginfo( 'name' ); ?></title>

<!-- Stylesheets -->
<link href="<?php echo get_template_directory_uri(); ?>/template-2/css/bootstrap.css" rel="stylesheet">
<link href="<?php echo get_template_directory_uri(); ?>/template-2/plugins/revolution/css/settings.css" rel="stylesheet" type="text/css"><!-- REVOLUTION SETTINGS STYLES -->
<link href="<?php echo get_template_directory_uri(); ?>/template-2/plugins/revolution/css/layers.css" rel="stylesheet" type="text/css"><!-- REVOLUTION LAYERS STYLES -->
<link href="<?php echo get_template_directory_uri(); ?>/template-2/plugins/revolution/css/navigation.css" rel="stylesheet" type="text/css"><!-- REVOLUTION NAVIGATION STYLES -->
<link href="<?php echo get_template_directory_uri(); ?>/template-2/css/style.css" rel="stylesheet">
<link href="<?php echo get_template_directory_uri(); ?>/template-2/css/responsive.css" rel="stylesheet">
<!--Color Switcher Mockup-->
<link href="<?php echo get_template_directory_uri(); ?>/template-2/css/color-switcher-design.css" rel="stylesheet">

<!--Color Themes-->
<link id="theme-color-file" href="<?php echo get_template_directory_uri(); ?>/template-2/css/color-themes/default-theme.css" rel="stylesheet">

<!--Favicon-->
<link rel="shortcut icon" href="<?= $versatile['opt-favicon']['url'];?>" />
<!-- <link rel="shortcut icon" href="<?php //echo get_template_directory_uri(); ?>/template-2/images/favicon.png" type="image/x-icon">
<link rel="icon" href="<?php //echo get_template_directory_uri(); ?>/template-2/images/favicon.png" type="image/x-icon"> -->

<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
</head>

<body>
<div class="page-wrapper">
    
    <!-- Preloader -->
    <!-- <div class="preloader"></div> -->
    
    <!-- Main Header-->
    <header class="main-header header-style-two">

        <!--Header-Upper-->
        <div class="header-upper">
            <div class="auto-container">
                <div class="outer-container clearfix">
                    <!--Header Top-->
                    <div class="header-top">
                        <div class="clearfix">
                            <div class="top-left">
                                <ul class="social-icon-one clearfix">
                                    <li><a target="_blank" href="<?= $versatile['opt-topbar-facebook'];?>"><span class="fab fa-facebook-f"></span></a></li>
                                    <li><a target="_blank" href="<?= $versatile['opt-topbar-twitter'];?>"><span class="fab fa-twitter"></span></a></li>
                                    <li><a target="_blank" href="<?= $versatile['opt-topbar-google'];?>"><span class="fab fa-google-plus-g"></span></a></li>
                                    <li><a target="_blank" href="<?= $versatile['opt-topbar-pintrest'];?>"><span class="fab fa-pinterest"></span></a></li>
                                    <li><a target="_blank" href="<?= $versatile['opt-topbar-dribble'];?>"><span class="fab fa-dribbble"></span></a></li>
                                </ul>
                            </div>
                            <div class="top-right clearfix">
                                <p><i class="fa fa-map-marker-alt"></i> <?= $versatile['opt-topbar-address'];?></p>
                                <!--Search Box-->
                                <div class="search-box-outer">
                                    <!--Search Box-->
                                    <div class="dropdown dropdown-outer">
                                        <button class="search-box-btn dropdown-toggle" type="button" id="dropdownMenu3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="fa fa-search"></span></button>
                                        <ul class="dropdown-menu pull-right search-panel" aria-labelledby="dropdownMenu3">
                                            <li class="panel-outer">
                                                <div class="form-container">
                                                    <form method="post" action="http://expert-themes.com/html/motor-expert/blog.html">
                                                        <div class="form-group">
                                                            <input type="search" name="field-name" value="" placeholder="Search Here" required="">
                                                            <button type="submit" class="search-btn"><span class="fa fa-search"></span></button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div><!--End earch Box-->
                            </div>
                        </div>
                    </div>

                    <div class="logo-outer">
                        <div class="logo"><a href="<?php echo esc_url(home_url('/')); ?>"><img src="<?= $versatile['opt-logo']['url'];?>" alt="" title=""></a>
                        </div>
                    </div>

                    <!-- End Header Top -->     
                    <div class="nav-outer clearfix">
                        <!-- Main Menu -->
                            <?php
                                wp_nav_menu(
                                   array(
                                      'theme_location' => 'header_top_menu',
                                      'container'     => 'nav', 
                                      'container_class'     => 'main-menu', 
                                      'menu_class'     => 'navigation', 
                                      'menu_id'     => 'bappy', 
                                      'fallback_cb'     => 'default_menu', 
                                   )
                                );
                             ?>
                        <!-- Main Menu End-->
                    </div>

                </div>
            </div>
        </div>
        <!--End Header Upper-->

        <!--Sticky Header-->
        <div class="sticky-header">
            <div class="auto-container clearfix">
                <!--Logo-->
                <div class="logo pull-left">
                    <a href="index.html" class="img-responsive"><img src="<?php echo get_template_directory_uri(); ?>/template-2/images/logo-small.png" alt="" title=""></a>
                </div>
                    
                <!--Right Col-->
                <div class="right-col pull-right">
                    <!-- Main Menu -->
                    <nav class="main-menu">
                        <div class="navbar-header">
                            <!-- Toggle Button -->      
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                        
                        <div class="navbar-collapse collapse clearfix">
                            <ul class="navigation clearfix">
                                <li class="current dropdown"><a href="#">Home</a>
                                    <ul>
                                        <li><a href="index.html">Homepage One</a></li>
                                        <li><a href="index-2.html">Homepage Two</a></li>
                                        <li><a href="index-3.html">Homepage Three</a></li>
                                        <li class="dropdown"><a href="#">Header Styles</a>
                                            <ul>
                                                <li><a href="index.html">Header Style One</a></li>
                                                <li><a href="index-2.html">Header Style Two</a></li>
                                                <li><a href="index-3.html">Header Style Three</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="#">About</a>
                                    <ul>
                                        <li><a href="about.html">About</a></li>
                                        <li><a href="appointment.html">Appointment</a></li>
                                        <li><a href="team.html">Team</a></li>
                                        <li><a href="price.html">Price</a></li>
                                        <li><a href="coming-soon.html">Coming Soon</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="#">Projects</a>
                                    <ul>
                                        <li><a href="project.html">Project</a></li>
                                        <li><a href="project-detail.html">Project Detail</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="#">Services</a>
                                    <ul>
                                        <li><a href="services.html">Services 01</a></li>
                                        <li><a href="services-2.html">Services 02</a></li>
                                        <li><a href="service-detail.html">Services Single</a></li>
                                    </ul>
                                </li>

                                <li class="dropdown"><a href="#">News</a>
                                    <ul>
                                        <li><a href="blog.html">News</a></li>
                                        <li><a href="blog-detail.html">News Detail</a></li>
                                        <li><a href="error-page.html">Error Page</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="#">Shop</a>
                                    <ul>
                                        <li><a href="shop.html">Products</a></li>
                                        <li><a href="shop-single.html">Products Detail</a></li>
                                        <li><a href="checkout.html">Checkout</a></li>
                                        <li><a href="cart.html">Shopping Cart</a></li>
                                        <li><a href="login.html">Registration</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact.html">Contact</a></li>
                            </ul>
                        </div>
                    </nav><!-- Main Menu End-->
                </div>
                
            </div>
        </div>
        <!--End Sticky Header-->
    </header>
    <!--End Main Header -->