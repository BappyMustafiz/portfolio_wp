<?php if(have_posts()) : while(have_posts()) : the_post();?>
  <?php $banner_image_url = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'slider-items');?>
  <section class="inner-intro bg-1 bg-overlay-black-70" style="background: url(<?= $banner_image_url[0];?>);">
    <div class="container">
       <div class="row text-center intro-title">
             <div class="col-md-6 text-md-left d-inline-block">
               <h1 class="text-white"><?= the_title();?></h1>
             </div>
             <div class="col-md-6 text-md-right float-right">
               <ul class="page-breadcrumb">
                  <li><a href="<?php echo esc_url(home_url('/')); ?>"><i class="fa fa-home"></i> Home</a> <i class="fa fa-angle-double-right"></i></li>
                  <li><a href="<?php the_permalink();?>"><?= the_title();?></a></li>
               </ul>
             </div>
       </div>
    </div>
  </section>
<?php endwhile;?> 
<?php endif;?>  