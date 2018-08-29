<!--=================================
 footer -->

<footer class="footer bg-2 bg-overlay-black-90">
  <div class="container">
    <div class="row">
     <div class="col-md-12">
      <div class="social">
        <ul>
          <li><a class="facebook" href="#">facebook <i class="fa fa-facebook"></i> </a></li>
          <li><a class="twitter" href="#">twitter <i class="fa fa-twitter"></i> </a></li>
          <li><a class="pinterest" href="#">pinterest <i class="fa fa-pinterest-p"></i> </a></li>
          <li><a class="dribbble" href="#">dribbble <i class="fa fa-dribbble"></i> </a></li>
          <li><a class="google-plus" href="#">google plus <i class="fa fa-google-plus"></i> </a></li>
          <li><a class="behance" href="#">behance <i class="fa fa-behance"></i> </a></li>
        </ul>
       </div>
      </div>
    </div>
    <div class="row">
      <!-- <div class="col-lg-3 col-md-6">
        <div class="about-content">
          <img class="img-fluid" id="logo-footer" src="<?php //echo get_template_directory_uri();?>/images/logo-light.png" alt="">
          <p>We provide everything you need to build an amazing dealership website developed especially for car sellers dealers or auto motor retailers.</p>
        </div>
        <div class="address">
          <ul>
            <li> <i class="fa fa-map-marker"></i><span>220E Front St. Burlington NC 27215</span> </li>
            <li> <i class="fa fa-phone"></i><span>(007) 123 456 7890</span> </li>
            <li> <i class="fa fa-envelope-o"></i><span>support@website.com</span> </li>
          </ul>
        </div>
      </div> -->
      
        <?php dynamic_sidebar('footer-widget')?>
        <!-- <div class="usefull-link">
        <h6 class="text-white">Useful Links</h6>
          <ul>
            <li><a href="#"><i class="fa fa-angle-double-right"></i> Change Oil and Filter</a></li>
            <li><a href="#"><i class="fa fa-angle-double-right"></i> Brake Pads Replacement</a></li>
            <li><a href="#"><i class="fa fa-angle-double-right"></i> Timing Belt Replacement</a></li>
            <li><a href="#"><i class="fa fa-angle-double-right"></i> Pre-purchase Car Inspection</a></li>
            <li><a href="#"><i class="fa fa-angle-double-right"></i> Starter Replacement</a></li>
          </ul>
        </div> --> 
      <div class="col-lg-3 col-md-6">
       <div class="recent-post-block">
        <h6 class="text-white">recent posts </h6>
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
      </div>
      <!-- <div class="col-lg-3 col-md-6">
        <div class="news-letter">
        <h6 class="text-white">subscribe Our Newsletter </h6>
         <p>Keep up on our always evolving products features and technology. Enter your e-mail and subscribe to our newsletter.</p>
         <form class="news-letter">
           <input type="email" placeholder="Enter your Email" class="form-control placeholder">
           <a class="button red" href="#">Subscribe</a>
         </form>
        </div> 
      </div> -->
    </div>
    <hr />
    <div class="copyright">
     <div class="row">
      <div class="col-lg-6 col-md-12">
       <div class="text-lg-left text-center">
        <p>©Copyright 2018 Car Dealer Developed by <a href="#!" target="_blank">Potenzaglobalsolutions</a></p>
       </div>
      </div>
      <div class="col-lg-6 col-md-12">
        <?php
            wp_nav_menu(
               array(
                  'theme_location' => 'footer_menu',
                  'container_class'=> false,
                  'items_wrap'     => '<ul class="list-inline text-lg-right text-center">%3$s</ul>' 
               )
            );
         ?>
      </div>
     </div>
    </div>
  </div>
</footer>
 
<!--=================================
 footer --> 


<!--=================================
 color customizer --> 
 
<!-- <div class="style-customizer closed">
  <div class="buy-button"> <a class="opener" href="#"><i class="fa fa-cog fa-spin"></i></a>  </div>
  <div class="clearfix content-chooser">
     <a target="_blank" class="button" href="https://themeforest.net/item/car-dealer-the-best-car-dealer-automotive-responsive-html5-template/19226545?ref=Potenzaglobalsolutions">purchase now</a> 
      <h3>Color Schemes</h3>
      <p>Which theme color you want to use? Here are some predefined colors.</p>
      <ul class="styleChange clearfix">
        <li class="skin-default selected" title="Default" data-style="skin-default" ></li>
        <li class="skin-blue" title="Blue" data-style="skin-blue" ></li>
        <li class="skin-orange" title="Orange" data-style="skin-orange"></li>
        <li class="skin-purple" title="purple" data-style="skin-purple"></li>
        <li class="skin-gold" title="gold" data-style="skin-gold"></li>
        <li class="skin-green" title="green" data-style="skin-green"></li>
        <li class="skin-palatinate-blue" title="palatinate-blue" data-style="skin-palatinate-blue" ></li>
        <li class="skin-yellow" title="Yellow" data-style="skin-yellow"></li>
      </ul>
      <ul class="resetAll">
      <li><a class="button button-reset" href="#">Reset All</a></li>
    </ul>
  </div>
</div> -->
 
 <!--=================================
 color customizer --> 


 <!--=================================
 back to top -->

<div class="car-top">
  <span><img src="<?php echo get_template_directory_uri();?>/images/car.png" alt=""></span>
</div>

 <!--=================================
 back to top -->

<!--=================================
 jquery -->

<!-- jquery  -->
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/js/jquery-3.3.1.min.js"></script>
 
<!-- bootstrap -->
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/js/popper.js"></script>
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/js/bootstrap.min.js"></script>

<!-- mega-menu -->
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/js/mega-menu/mega_menu.js"></script>

<!-- appear -->
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/js/jquery.appear.js"></script>

<!-- counter -->
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/js/counter/jquery.countTo.js"></script>

<!-- owl-carousel -->
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/js/owl-carousel/owl.carousel.min.js"></script>

<!-- select -->
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/js/select/jquery-select.js"></script>

<!-- magnific popup -->
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/js/magnific-popup/jquery.magnific-popup.min.js"></script>

<!-- revolution -->
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/revolution/js/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/revolution/js/jquery.themepunch.revolution.min.js"></script>
<!-- SLIDER REVOLUTION 5.0 EXTENSIONS  (Load Extensions only on Local File Systems !  The following part can be removed on Server for On Demand Loading) -->
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/revolution/js/extensions/revolution.extension.actions.min.js"></script>
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/revolution/js/extensions/revolution.extension.migration.min.js"></script>
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/revolution/js/extensions/revolution.extension.video.min.js"></script>

<!-- style customizer  -->
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/js/style-customizer.js"></script>

<!-- custom -->
<script type="text/javascript" src="<?php echo get_template_directory_uri();?>/js/custom.js"></script>

<script type="text/javascript">
   (function($){
  "use strict";

    var tpj=jQuery;
      var revapi2;
      tpj(document).ready(function() {
        if(tpj("#rev_slider_2_1").revolution == undefined){
          revslider_showDoubleJqueryError("#rev_slider_2_1");
        }else{
          revapi2 = tpj("#rev_slider_2_1").show().revolution({
            sliderType:"standard",
            sliderLayout:"fullwidth",
            dottedOverlay:"none",
            delay:9000,
            navigation: {
              keyboardNavigation:"off",
              keyboard_direction: "horizontal",
              mouseScrollNavigation:"off",
                             mouseScrollReverse:"default",
              onHoverStop:"off",
              bullets: {
                enable:true,
                hide_onmobile:false,
                style:"hermes",
                hide_onleave:false,
                direction:"horizontal",
                h_align:"center",
                v_align:"bottom",
                h_offset:0,
                v_offset:50,
                                space:10,
                tmp:''
              }
            },
            visibilityLevels:[1240,1024,778,480],
            gridwidth:1570,
            gridheight:1000,
            lazyType:"none",
            shadow:0,
            spinner:"spinner3",
            stopLoop:"off",
            stopAfterLoops:-1,
            stopAtSlide:-1,
            shuffle:"off",
            autoHeight:"off",
            disableProgressBar:"on",
            hideThumbsOnMobile:"off",
            hideSliderAtLimit:0,
            hideCaptionAtLimit:0,
            hideAllCaptionAtLilmit:0,
            debugMode:false,
            fallbacks: {
              simplifyAll:"off",
              nextSlideOnWindowFocus:"off",
              disableFocusListener:false,
            }
          });
        }
      }); 
  })(jQuery);

</script>
<?php wp_footer();?>   
</body>
</html>
