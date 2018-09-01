<!--=================================
 rev-slider -->
 
<div id="rev_slider_3_1_wrapper" class="rev_slider_wrapper fullwidthbanner-container" data-alias="car-dealer-05" data-source="gallery" style="margin:0px auto;background-color:transparent;padding:0px;margin-top:0px;margin-bottom:0px;">
<!-- START REVOLUTION SLIDER 5.3.0.2 fullwidth mode -->
  <div id="rev_slider_3_1" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.3.0.2">
<ul> 
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
 <!-- SLIDE  -->
    <li data-index="rs-3" data-transition="random-static,random-premium,random" data-slotamount="default,default,default,default" data-hideafterloop="0" data-hideslideonmobile="off"  data-randomtransition="on" data-easein="default,default,default,default" data-easeout="default,default,default,default" data-masterspeed="default,default,default,default"   data-rotate="0,0,0,0"  data-saveperformance="off"  data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
    <!-- MAIN IMAGE -->
        <img src="<?php echo $large_image_url[0];  ?>"  alt=""  data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
    <!-- LAYERS -->

    <!-- LAYER NR. 1 -->
    <div class="tp-caption   tp-resizeme" 
       id="slide-3-layer-1" 
       data-x="62" 
       data-y="179" 
            data-width="['auto']"
      data-height="['auto']"
 
            data-type="text" 
      data-responsive_offset="on" 

            data-frames='[{"delay":500,"speed":1500,"frame":"0","from":"x:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"nothing"}]'
            data-textAlign="['left','left','left','left']"
            data-paddingtop="[0,0,0,0]"
            data-paddingright="[0,0,0,0]"
            data-paddingbottom="[0,0,0,0]"
            data-paddingleft="[0,0,0,0]"

            style="z-index: 5; white-space: nowrap; font-size: 70px; line-height: 80px; font-weight: 900; color: rgba(255, 255, 255, 1.00);font-family:Roboto;text-transform:uppercase;"><?php the_title();?></div>

    <!-- LAYER NR. 2 -->
    <div class="tp-caption   tp-resizeme" 
       id="slide-3-layer-2" 
       data-x="62" 
       data-y="348" 
            data-width="['657']"
      data-height="['auto']"
 
            data-type="text" 
      data-responsive_offset="on" 

            data-frames='[{"delay":1720,"speed":1070,"frame":"0","from":"x:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"nothing"}]'
            data-textAlign="['left','left','left','left']"
            data-paddingtop="[0,0,0,0]"
            data-paddingright="[0,0,0,0]"
            data-paddingbottom="[0,0,0,0]"
            data-paddingleft="[0,0,0,0]"

            style="z-index: 6; min-width: 657px; max-width: 657px; white-space: normal; font-size: 14px; line-height: 24px; font-weight: 400; color: rgba(255, 255, 255, 1.00);font-family:Open Sans;"><?php echo $m_name_subtitle;?></div>

    <!-- LAYER NR. 3 -->
    <a href="<?php the_permalink();?>"><div class="tp-caption button red " 
       id="slide-3-layer-4" 
       data-x="62" 
       data-y="452" 
            data-width="['auto']"
      data-height="['auto']"
 
            data-type="button" 
      data-responsive_offset="on" 
      
            data-frames='[{"delay":1720,"speed":2000,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","mask":"x:0px;y:[100%];s:inherit;e:inherit;","to":"o:1;","ease":"Power2.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"nothing"},{"frame":"hover","speed":"300","ease":"Linear.easeNone","force":true,"to":"o:1;rX:0;rY:0;rZ:0;z:0;","style":"c:rgba(0, 0, 0, 1.00);bg:rgba(255, 255, 255, 1.00);bs:solid;bw:0 0 0 0;"}]'
            data-textAlign="['left','left','left','left']"
            data-paddingtop="[10,10,10,10]"
            data-paddingright="[30,30,30,30]"
            data-paddingbottom="[10,10,10,10]"
            data-paddingleft="[30,30,30,30]"

            style="z-index: 7; white-space: nowrap; font-size: 14px; line-height: 16px; font-weight: 400; font-family:Open Sans;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;">Discover More </div></a>
  </li>
  <?php endforeach;?>
</ul>
</div> 