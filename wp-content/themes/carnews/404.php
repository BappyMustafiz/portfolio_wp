<?php get_header();?>

 <section class="inner-intro bg-1 bg-overlay-black-70">
  <div class="container">
     <div class="row text-center intro-title">
           <div class="col-md-6 text-md-left d-inline-block">
             <h1 class="text-white">404 error </h1>
           </div>
           <div class="col-md-6 text-md-right float-right">
             <ul class="page-breadcrumb">
                <li><a href="#"><i class="fa fa-home"></i> Home</a> <i class="fa fa-angle-double-right"></i></li>
                <li><a href="#">pages</a> <i class="fa fa-angle-double-right"></i></li>
                <li><span>blog right sidebar </span> </li>
             </ul>
           </div>
     </div>
  </div>
</section>

<section class="error-page page-section-ptb">
  <div class="container">
    <div class="row">
     <div class="col-md-12">
        <div class="error-content text-center">
          <h2>404</h2>
          <img class="img-fluid center-block" src="<?php echo get_template_directory_uri(); ?>/images/car/23.png" alt="">
          <h3 class="text-red">Ooopps:( </h3>
          <strong class="text-black"> The Page you were looking for, couldn't be found</strong>
          <p>Can't find what you looking for? Take a moment and do a search below or start from our <a href="<?= esc_url(home_url('/'));?>"> Home Page </a></p>
        </div> 
      </div>
     </div>
   </div>
</section>

<?php get_footer();?>