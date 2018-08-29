
      <div class="col-md-4">
        <div class="blog-sidebar">
          <div class="sidebar-widget">
            <h6>Search here</h6>
            <div class="widget-search">
              <form action="<?php echo home_url('/');?>" method="GET">
              <button type="submit"><i class="fa fa-search"></i></button>
              <input type="search" class="form-control placeholder" placeholder="Search...." name="s" value="">
            </form>
            </div>
          </div>
          <div class="sidebar-widget">
            <h6>categories</h6>
            <div class="widget-link">
               <ul>
                <?php
                  $args = array(
                     'order_by'=>'slug', 
                     'parent'  => 0 
                  );

                  $categories = get_categories($args);
                  foreach ($categories as $category) {
                    echo '<li><a href="'.get_category_link($category->term_id).'" rel="bookmark"> <i class="fa fa-angle-right">'.' '.$category->name.'</i>' .' '.$category->description. '</a></li>';
                  }
                ?>
               </ul>
              </div>
          </div>
          <div class="sidebar-widget">
            <h6>Recent Posts</h6>
            <?php
              global $post;
              $args = array( 'posts_per_page' => 3, 'order'=> 'DESC', 'orderby' => 'post_date' );
              $postslist = get_posts( $args );
              foreach ( $postslist as $post ) :
                setup_postdata( $post ); ?> 
                <div class="recent-post">
                  <div class="recent-post-image">
                    <?php the_post_thumbnail('', array('class' => 'my-post-thumb'));?>
                  </div>
                  <div class="recent-post-info">
                     <a href="<?php the_permalink();?>"><?php the_title(); ?></a>
                    <span><i class="fa fa-calendar"></i> <?php the_time('M d, Y');?></span>
                   </div>
                </div>
              <?php
              endforeach; 
              wp_reset_postdata();
              ?>
         </div>
         <div class="sidebar-widget">
           <h6>Tags</h6>
            <div class="tags">
              <?php the_tags( '<ul><li>', '</li><li>', '</li></ul>' ); ?>
           </div>
         </div>
         <div class="sidebar-widget">
            <h6>archives</h6>
            <div class="widget-link">
               <ul>
                 <?php wp_get_archives(array('type'=>'monthly', 'limit'=>10, 'order'=>'ASC'));?> 
                 <!-- <li><a href="#"> <i class="fa fa-angle-right"></i> June <span class="float-right">12</span></a></li>
                 <li><a href="#"> <i class="fa fa-angle-right"></i> January  <span class="float-right">28</span></a></li>
                 <li><a href="#"> <i class="fa fa-angle-right"></i> March <span class="float-right">08</span></a></li>
                 <li><a href="#"> <i class="fa fa-angle-right"></i> November  <span class="float-right">04</span></a></li>
                 <li><a href="#"> <i class="fa fa-angle-right"></i> December <span class="float-right">13</span></a></li> -->
               </ul>
              </div>
          </div>
          <!-- <div class="sidebar-widget">
           <h6>Sample Widget</h6>
            <div class="widget-link">
             <ul>
              <li><a href="#">Bootstrap</a></li>
              <li><a href="#">HTML5</a></li>
              <li><a href="#">Wordpress</a></li>
              <li><a href="#">CSS3</a></li>
              <li><a href="#">Creative</a></li>
              <li><a href="#">Multipurpose</a></li>
              <li><a href="#">Bootstrap</a></li>
              <li><a href="#">HTML5</a></li>
              <li><a href="#">Wordpress</a></li>
            </ul>
           </div>
         </div> -->
         <?php dynamic_sidebar('widget-home-one')?>
        </div>                       
      </div>