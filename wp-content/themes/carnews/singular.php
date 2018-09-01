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
          <div class="entry-share clearfix">
             <div class="share float-right"><a href="#"> <i class="fa fa-share-alt"></i> </a>
                  <div class="blog-social"> 
                   <ul class="list-style-none">
                    <li> <a href="#"><i class="fa fa-facebook"></i></a> </li>
                    <li> <a href="#"><i class="fa fa-twitter"></i></a> </li>
                    <li> <a href="#"><i class="fa fa-instagram"></i></a> </li>
                    <li> <a href="#"><i class="fa fa-pinterest-p"></i></a> </li>
                   </ul>
                   </div>
                 </div>
             </div>
          </div>
          <?php endwhile;?>  
      <?php endif;?> 
        <div class="blog-navigation">
          <div class="row">
            <div class="col-md-6">
              <div class="navigation-next">
                <a href="#"> 
                  <img class="img-fluid" src="<?php echo get_template_directory_uri();?>/images/bg/01.jpg" alt="">
                  <div class="port-arrow">
                    <i class="fa fa-angle-left"></i>
                   </div>
                  <span>BLOGPOST WITH IMAGE</span>
                 </a> 
              </div>
            </div>
            <div class="col-md-6">
              <div class="navigation-previous float-right text-right">
                <a href="#"> 
                  <img class="img-fluid" src="<?php echo get_template_directory_uri();?>/images/bg/06.jpg" alt="">
                  <div class="port-arrow">
                    <i class="fa fa-angle-right"></i>
                   </div>
                  <span>BLOGPOST WITH IMAGE</span>
                 </a> 
              </div>
            </div>
          </div>
        </div>

        <div class="blog-form">
          <?php comments_template('', true); ?>
       </div>
     </div>
<!-- ============================================ -->
      <?php get_sidebar();?>
     </div>
   </div>
</section>

<!--=================================
blog -->
 
 
<?php get_footer();?>