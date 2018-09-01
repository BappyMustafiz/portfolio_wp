<?php get_header();?>
<?php get_template_part('slider');?>
<section class="blog blog-right-sidebar page-section-ptb">
  <div class="container">
    <!-- <div class="row">
      <div class="col-md-12">
         <div class="section-title">
           <span>Read what we say in our blog</span>
           <h2>Our blog</h2>
           <div class="separator"></div>
         </div>
      </div>
    </div> -->
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
             <a href="<?php the_permalink();?>"><?php the_title();?></a>
          </div>
          <div class="entry-meta">
            <ul>
              <li><a href="#"><i class="fa fa-user"></i> By <?php the_author();?> </a> /</li>
              <li><a href="#"><i class="fa fa-comments-o"></i> <?php comments_popup_link( 'No comments yet', '1 comment', '% comments', 'comments-link', 'Comments are off for this post'); ?></a> /</li>
              <li><a href="#"><i class="fa fa-folder-open"></i><?php the_time('M d, Y');?></a> /</li>
            </ul>
          </div>
          <div class="entry-content">
            <p><?php the_excerpt();?></p>
          </div>
           <div class="entry-share clearfix">
             <a class="button red float-left" href="<?php the_permalink();?>"> Read More </a>
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
        <hr class="gray">
      <?php endwhile; else :?>
        <p><?php esc_html_e('Sorry, No posts found...');?></p>  
      <?php endif;?>  
    <!-- ============================================ -->
    
       <div class="pagination-nav  d-flex justify-content-center">
          <?php echo paginate_links(); ?>

     </div>
     </div>
    <?php get_sidebar();?>

     </div>
   </div>
</section>

<?php get_footer();?>