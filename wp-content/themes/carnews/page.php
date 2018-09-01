<?php get_header();?>

<!--=================================
 banner -->
<?php get_template_part('banner-breadcumb');?>

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
          <div class="entry-meta">
            <ul>
              <li><a href="#"><i class="fa fa-user"></i> By <?php the_author();?> </a> /</li>
              <li><a href="#"><i class="fa fa-comments-o"></i> <?php comments_popup_link( 'No comments yet', '1 comment', '% comments', 'comments-link', 'Comments are off for this post'); ?></a> /</li>
              <li><a href="#"><i class="fa fa-folder-open"></i> <?php the_time('M d, Y');?></a></li>
            </ul>
          </div>
          <div class="entry-content">
            <p><?php the_content();?></p>
         </div>
          </div>
          <?php endwhile;?>  
      <?php endif;?> 
     </div>
      <?php get_sidebar();?>
     </div>
   </div>
</section>
 
 
<?php get_footer();?>