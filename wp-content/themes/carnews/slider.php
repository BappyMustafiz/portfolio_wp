<section class="slider">
    <div id="rev_slider_2_1_wrapper" class="rev_slider_wrapper fullwidthbanner-container" data-alias="car-dealer-03" style="margin:0px auto;background-color:transparent;padding:0px;margin-top:0px;margin-bottom:0px;">
    <!-- START REVOLUTION SLIDER 5.2.6 fullwidth mode -->
      <div id="rev_slider_2_1" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.2.6">
    <ul>  <!-- SLIDE  -->
      <!-- custom post with meta box display -->
      <?php
        global $post;
        $i=0;
        $args = array('posts_per_page' => -1, 'post_type'=> 'slider-items','page'=> $paged, 'order' => 'DESC');
        $myposts = get_posts( $args );
        foreach( $myposts as $post ) : setup_postdata($post);
        $large_image_url = wp_get_attachment_image_src( get_post_thumbnail_id($post->ID), 'slider-items');  
        $i++;
        $this_id = get_the_ID(); 
        global $wpdb;
        $m_name_subtitle = '';
        $tbl_postmeta = $wpdb->prefix."postmeta";     
        $meta_name_subtitle = 'meta-subtitle-slider';     
        $query_result = "select * from $tbl_postmeta where post_id='$this_id' AND meta_key='$meta_name_subtitle'";
        $result = $wpdb->get_results($query_result);
        foreach($result as $row)
        {
          $m_name_subtitle = $row->meta_value;
        }
      ?>

        <li data-index="rs-5" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off"  data-easein="default" data-easeout="default" data-masterspeed="default"  data-thumb="revolution/assets/100x50_3176d-road-bg.jpg"  data-rotate="0"  data-saveperformance="off"  data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
        <!-- MAIN IMAGE -->
            <img src="<?php echo $large_image_url[0];  ?>"  alt=""  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
        <!-- LAYERS -->

        <!-- LAYER NR. 1 -->
        <div class="tp-caption   tp-resizeme" 
           id="slide-5-layer-6" 
           data-x="center" data-hoffset="" 
           data-y="270" 
                data-width="['auto']"
          data-height="['auto']"
          data-transform_idle="o:1;"
     
           data-transform_in="y:[-100%];z:0;rZ:35deg;sX:1;sY:1;skX:0;skY:0;s:800;e:Power4.easeInOut;" 
           data-transform_out="opacity:0;s:300;" 
           data-mask_in="x:0px;y:0px;" 
          data-start="1400" 
          data-splitin="chars" 
          data-splitout="none" 
          data-responsive_offset="on" 

          data-elementdelay="0.05" 
          
          style="z-index: 5; white-space: nowrap; font-size: 30px; line-height: 30px; font-weight: 400; color: rgba(255, 255, 255, 1.00);font-family:Roboto;text-align:center;text-transform:uppercase;"><?php the_title();?></div>

        <!-- LAYER NR. 2 -->
        <div class="tp-caption   tp-resizeme" 
           id="slide-5-layer-7" 
           data-x="center" data-hoffset="" 
           data-y="center" data-voffset="-140" 
                data-width="['auto']"
          data-height="['auto']"
          data-transform_idle="o:1;"
     
           data-transform_in="y:[-100%];z:0;rZ:35deg;sX:1;sY:1;skX:0;skY:0;s:800;e:Power4.easeInOut;" 
           data-transform_out="opacity:0;s:300;" 
           data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
          data-start="1700" 
          data-splitin="chars" 
          data-splitout="none" 
          data-responsive_offset="on" 

          data-elementdelay="0.05" 
          
          style="z-index: 6; white-space: nowrap; font-size: 70px; line-height: 70px; font-weight: 700; color: rgba(255, 255, 255, 1.00);font-family:Roboto;text-align:center;text-transform:uppercase;"><?php echo $m_name_subtitle;?></div>

        <!-- LAYER NR. 3 -->
        <div class="tp-caption button red tp-resizeme" 
           id="slide-5-layer-10" 
           data-x="center" data-hoffset="" 
           data-y="bottom" data-voffset="130" 
                data-width="['auto']"
          data-height="['auto']"
          data-transform_idle="o:1;"
            data-transform_hover="o:1;rX:0;rY:0;rZ:0;z:0;s:300;e:Power0.easeIn;"
            data-style_hover="c:rgba(0, 0, 0, 1.00);bg:rgba(255, 255, 255, 1.00);"
     
           data-transform_in="y:bottom;s:600;e:Power2.easeInOut;" 
           data-transform_out="opacity:0;s:300;" 
          data-start="3300" 
          data-splitin="none" 
          data-splitout="none" 
          data-responsive_offset="on" 

          
          style="z-index: 7; white-space: nowrap; font-size: 14px; line-height: 18px; font-weight: 400; color: rgba(255, 255, 255, 1.00);font-family:Open Sans;text-align:center;text-transform:uppercase;background-color:rgba(219, 45, 46, 1.00);padding:12px 20px 12px 20px;border-color:rgba(0, 0, 0, 1.00);outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;">learn more </div>

        <!-- LAYER NR. 4 -->
        <div class="tp-caption   tp-resizeme" 
           id="slide-5-layer-12" 
           data-x="right" data-hoffset="70" 
           data-y="center" data-voffset="135" 
                data-width="['none','none','none','none']"
          data-height="['none','none','none','none']"
          data-transform_idle="o:1;"
     
           data-transform_in="x:-50px;opacity:0;s:800;e:Power2.easeInOut;" 
           data-transform_out="opacity:0;s:300;" 
          data-start="620" 
          data-responsive_offset="on" 

          
          style="z-index: 8;"><img src="<?php echo $large_image_url[0];  ?>" alt="" data-ww="auto" data-hh="auto" data-no-retina> </div>

        <!-- LAYER NR. 5 -->
        <div class="tp-caption   tp-resizeme" 
           id="slide-5-layer-11" 
           data-x="120" 
           data-y="center" data-voffset="130" 
                data-width="['none','none','none','none']"
          data-height="['none','none','none','none']"
          data-transform_idle="o:1;"
     
           data-transform_in="x:50px;opacity:0;s:800;e:Power2.easeInOut;" 
           data-transform_out="opacity:0;s:300;" 
          data-start="200" 
          data-responsive_offset="on" 

          
          style="z-index: 9;"><img src="<?php echo $large_image_url[0];  ?>" alt="" data-ww="auto" data-hh="auto" data-no-retina> </div>
      </li>
    <?php endforeach;?>
    </ul>
    <div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div> </div>
    </div>
</section>
