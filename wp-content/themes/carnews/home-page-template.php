<?php
/**
 * Template Name: Home Page
 */

 get_header();

?>

<?php get_template_part('slider');?>

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