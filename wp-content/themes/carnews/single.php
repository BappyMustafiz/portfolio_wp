<?php get_header();?>
<!--=================================
   banner -->
<section class="inner-intro bg-1 bg-overlay-black-70">
   <div class="container">
      <div class="row text-center intro-title">
         <div class="col-md-6 text-md-left d-inline-block">
            <h1 class="text-white">blog </h1>
         </div>
         <div class="col-md-6 text-md-right float-right">
            <ul class="page-breadcrumb">
               <li><a href="#"><i class="fa fa-home"></i> Home</a> <i class="fa fa-angle-double-right"></i></li>
               <li><a href="#">pages</a> <i class="fa fa-angle-double-right"></i></li>
               <li><span>blog single 01</span> </li>
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
               <div class="tags">
                  <?php the_tags(); ?>
               </div>
               <div class="entry-share clearfix">
                  <div class="share float-right">
                     <a href="#"> <i class="fa fa-share-alt"></i> </a>
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
            <hr class="gray">
            <!-- related post    -->
            <div class="row">
              <div class="col-md-12">
                <h3>Related post</h3>
              </div>
            </div>
            <hr class="gray">
            <div class="row">

               <?php
                  $tags = wp_get_post_tags($post->ID);
                  
                  if ($tags) {
                    $first_tag = $tags[0]->term_id;
                    
                    $my_query = new WP_Query(array(
                      'tag__in' => array($first_tag),
                      'post__not_in' => array($post->ID),
                      'posts_per_page'=>3,
                      'caller_get_posts'=>1
                    ));
                    
                    
                    if( $my_query->have_posts() ) {
                    while ($my_query->have_posts()) : $my_query->the_post(); ?>
                     <div class="col-md-4">
                        <div class="blog-entry">
                           <div class="blog-entry-image  clearfix">
                              <div class="portfolio-item">
                                 <?php the_post_thumbnail();?>
                              </div>
                           </div>
                           <div class="entry-title">
                              <a href="<?php the_permalink();?>"><?php the_title();?></a>
                           </div>
                           <div class="entry-content">
                              <p><?php the_excerpt();?></p>
                           </div>
                           <div class="entry-share clearfix">
                              <a class="button red float-left" href="<?php the_permalink();?>"> Read More </a>
                           </div>
                        </div>
                     </div>
               <?php
                  endwhile;
                  }
                  wp_reset_query();
                  }
                  ?>
            </div>
            <div class="blog-form">
               <?php comments_template('', true); ?>
            </div>
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