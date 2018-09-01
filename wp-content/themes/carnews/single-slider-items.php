<?php get_header();?>
<!--=================================
   banner -->
 <section class="inner-intro bg-1 bg-overlay-black-70">
  <div class="container">
     <div class="row text-center intro-title">
           <div class="col-md-6 text-md-left d-inline-block">
             <h1 class="text-white">Slider single </h1>
           </div>
           <div class="col-md-6 text-md-right float-right">
             <ul class="page-breadcrumb">
                <li><a href="<?php echo esc_url(home_url('/')); ?>"><i class="fa fa-home"></i> Home</a></li>
             </ul>
           </div>
     </div>
  </div>
</section>
<!--=================================
   banner -->
<!--=================================
   blog  -->
<section class="blog blog-single page-section-ptb">
   <div class="container">
      <div class="row">
         <div class="col-md-8">
            <?php if(have_posts()) : while(have_posts()) : the_post();?> 
            <div class="blog-entry">
               <div class="blog-entry-image  clearfix">
                  <div class="portfolio-item">
                     <?php the_post_thumbnail('', array('class' => 'my-post-thumb'));?>
                  </div>
               </div>
               <div class="entry-title">
                  <a><?php the_title();?></a>
               </div>
               <div class="entry-content">
                  <p><?php the_content();?></p>
               </div>
            </div>
            <?php endwhile;?>  
            <?php endif;?>
         </div>
         <!-- ============================================ -->
         <!-- ============================================ -->
         <?php get_sidebar();?>
      </div>
   </div>
</section>
<!--=================================
   blog -->
<?php get_footer();?>