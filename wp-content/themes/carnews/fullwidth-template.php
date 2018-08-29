<?php
/**
 * Template Name: Full Width Page
 */

 get_header();

?>

<!--=================================
 banner -->
 <section class="inner-intro bg-1 bg-overlay-black-70">
  <div class="container">
     <div class="row text-center intro-title">
           <div class="col-md-6 text-md-left d-inline-block">
             <h1 class="text-white"><?php the_title();?></h1>
           </div>
           <div class="col-md-6 text-md-right float-right">
             <ul class="page-breadcrumb">
                <li><a href="<?php the_permalink();?>"><i class="fa fa-home"></i> <?php the_title();?></a> <!-- <i class="fa fa-angle-double-right"></i> --></li>
                <!-- <li><a href="#">pages</a> <i class="fa fa-angle-double-right"></i></li>
                <li><span>page</span> </li> -->
             </ul>
           </div>
     </div>
  </div>
</section>

<!--=================================
 banner -->

<section class="blog blog-single page-section-ptb">
  <div class="container">
    <div class="row">
     <div class="col-md-12">
      <?php if(have_posts()) : while(have_posts()) : the_post();?> 

        <div class="blog-entry">
          <div class="entry-content">
            <p><?php the_content();?></p>
         </div>
          </div>
          <?php endwhile;?>  
      <?php endif;?> 
     </div>
     </div>
   </div>
</section>
 
 
<?php get_footer();?>