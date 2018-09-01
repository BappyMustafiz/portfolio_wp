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
            <hr class="gray">
            <div class="row team-2">
              <div class="col-lg-12 col-md-12">
                <div class="row team-info">
                  <div class="col-md-2">
                    <div class="team-image"> 
                    <?php echo get_avatar( get_the_author_meta('ID'), $size, $default, $alt, $args ); ?>  
                    </div>
                  </div>
                  <div class="col-md-10">
                    <div class="team-2 text-left">
                      <div class="team-info">
                       <div class="team-name">
                        <span>Author</span>
                        <h5><?php the_author_posts_link();?></h5>
                        <p class="text-danger">All post: <?php echo get_the_author_posts();?></p>
                        <p><?php the_author_meta('description');?></p>
                       </div>
                       <div class="entry-share clearfix">
                          <a class="button red float-left" href="#!"> Author all post </a>
                       </div>
                       <div class="team-social"> 
                           <ul>
                            <li><a class="icon-1" href="<?php the_author_meta('facebook');?>"><i class="fa fa-facebook"></i></a></li>
                            <li><a class="icon-2" href="<?php the_author_meta('skype');?>"><i class="fa fa-skype"></i></a></li>
                            <li><a class="icon-3" href="<?php the_author_meta('instagram');?>"><i class="fa fa-instagram"></i></a></li>
                            <li><a class="icon-4" href="<?php the_author_meta('linkedin');?>"><i class="fa fa-linkedin"></i></a></li>
                            <li><a class="icon-4" href="<?php the_author_meta('twitter');?>"><i class="fa fa-twitter"></i></a></li>
                          </ul>
                       </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <hr class="gray">
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