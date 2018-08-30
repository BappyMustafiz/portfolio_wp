<?php get_header();?>

<!--=================================
 inner-intro  -->
 
 <section class="inner-intro bg-1 bg-overlay-black-70">
  <div class="container">
     <div class="row text-center intro-title">
           <div class="col-md-6 text-md-left d-inline-block">
             <h1 class="text-white">Author </h1>
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

<!--=================================
 inner-intro  -->


<!--=================================
 blog  -->

<section class="blog blog-right-sidebar page-section-ptb">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
         <div class="section-title">
           <span>Read what we say in our blog</span>
           <h2>Author</h2>
           <div class="separator"></div>
         </div>
      </div>
    </div>
    
    <!-- author details -->
    <div class="row">
      <div class="col-md-4">  
        <div class="team-2 text-left">
          <div class="team-image text-center"> 
            <?php echo get_avatar( get_the_author_meta('ID'), $size, $default, $alt, $args ); ?> 
          </div>
          <div class="team-info">
           <div class="team-name">
            <h5 class="text-center"><?php the_author();?></h5>
            <p><?php the_author_meta('description');?></p>
           </div>
           <p class="text-danger">Total post: <?php echo get_the_author_posts();?></p>
           <p class="text-danger">Total comment: <?php wp_count_comments(); ?></p>
           <p class="text-danger">Author Email: <?php the_author_meta('email'); ?></p>
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
          
      <div class="col-md-8 product-listing">
      <?php $i = 0;?>  
      <?php if(have_posts()) : while(have_posts()) : the_post();?>
        <?php if($i==0 || $i==1 || $i==2){?>
        <div class="car-grid">
           <div class="row">
            <div class="col-lg-4 col-md-12">
              <div class="car-item gray-bg text-center">
               <div class="car-image">
                 <?php the_post_thumbnail('', array('class' => 'my-post-thumb'));?>
                 <div class="car-overlay-banner">
                  <ul> 
                    <li><a href="#"><i class="fa fa-link"></i></a></li>
                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                   </ul>
                 </div>
               </div>
              </div>
             </div>
              <div class="col-lg-8 col-md-12">
                <div class="car-details">
                <div class="car-title">
                 <a href="<?php the_permalink();?>"><?php the_title();?></a>
                 <p><?php the_excerpt();?></p>
                  </div>
                  <div class="price">
                       <!-- <span class="old-price">$35,568</span>
                       <span class="new-price">$32,698 </span> -->
                       <a class="button red" href="<?php the_permalink();?>">Read More</a>
                     </div>
                   <div class="car-list">
                     <ul class="list-inline">
                       <li><i class="fa fa-user"></i> <?php the_author();?></li>
                       <li><i class="fa fa-calendar"></i> <?php the_time('M d, Y');?> </li>
                       <li><i class="fa fa-tasks"></i> <?php the_category( ', ' ); ?></li>
                       <li><i class="fa fa-comments-o"></i> <?php comments_popup_link( 'No comments yet', '1 comment', '% comments', 'comments-link', 'Comments are off for this post'); ?></li>
                     </ul>
                   </div>
                  </div>
                </div>
               </div>
             </div>
            
      <?php } $i++;?>
      <?php endwhile; else :?>
        <p><?php esc_html_e('Sorry, No posts found...');?></p>  
      <?php endif;?>
      </div>
    </div>

    <!-- author details -->
    <hr class="gray">
    <div class="row">
      <div class="col-md-8">
      <?php $i = 0;?>  
      <?php if(have_posts()) : while(have_posts()) : the_post();?>
        <?php if($i !=0 && $i!=1 && $i!=2){?>
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
        <?php } $i++;?>
      <?php endwhile; else :?>
        <p><?php esc_html_e('Sorry, No posts found...');?></p>  
      <?php endif;?> 
     </div>
    <?php get_sidebar();?>

     </div>
   </div>
</section>
<?php get_footer();?>