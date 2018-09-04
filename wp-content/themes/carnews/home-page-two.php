<?php
/**
 * Template Name: Home Page Two
 */
 include('inc/template-two/header-two.php');?>
<!--Main Slider-->
    <section class="main-slider">
        <div class="rev_slider_wrapper fullwidthbanner-container"  id="rev_slider_one_wrapper" data-source="gallery">
            <div class="rev_slider fullwidthabanner" id="rev_slider_one" data-version="5.4.1">
                <ul>

                <?php foreach($versatile['opt-slides'] as $slide):?>    
                    <!-- Slide 2 -->
                    <li data-description="Slide Description" data-easein="default" data-easeout="default" data-fsmasterspeed="1500" data-fsslotamount="7" data-fstransition="fade" data-hideafterloop="0" data-hideslideonmobile="off" data-index="rs-1688" data-masterspeed="default" data-param1="" data-param10="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-rotate="0" data-saveperformance="off" data-slotamount="default" data-thumb="<?php echo get_template_directory_uri(); ?>/template-2/images/main-slider/image-1.jpg" data-title="Slide Title" data-transition="parallaxvertical">

                        <img alt="" class="rev-slidebg" data-bgfit="cover" data-bgparallax="10" data-bgposition="center center" data-bgrepeat="no-repeat" data-no-retina="" src="<?= $slide['image']?>">

                        <div class="tp-caption" 
                        data-paddingbottom="[0,0,0,0]"
                        data-paddingleft="[0,0,0,0]"
                        data-paddingright="[0,0,0,0]"
                        data-paddingtop="[0,0,0,0]"
                        data-responsive_offset="on"
                        data-type="text"
                        data-height="none"
                        data-width="['700','700','700','700']"
                        data-textalign="center"
                        data-whitespace="normal"
                        data-hoffset="['0','0','0','0']"
                        data-voffset="['-65','-65','-65','-65']"
                        data-x="['center','center','center','center']"
                        data-y="['middle','middle','middle','middle']"
                        data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'>
                            <h2>
                                <?php 
                                if (isset($slide['title'])&& ! empty($slide['title'])){
                                    echo $slide['title'];
                                }
                                ?>
                                    
                                </h2>
                        </div>
                        
                        <div class="tp-caption" 
                        data-paddingbottom="[0,0,0,0]"
                        data-paddingleft="[0,0,0,0]"
                        data-paddingright="[0,0,0,0]"
                        data-paddingtop="[0,0,0,0]"
                        data-responsive_offset="on"
                        data-type="text"
                        data-height="none"
                        data-textalign="center"
                        data-whitespace="normal"
                        data-width="['700','700','550','450']"
                        data-hoffset="['0','0','0','0']"
                        data-voffset="['5','5','5','15']"
                        data-x="['center','center','center','center']"
                        data-y="['middle','middle','middle','middle']"
                        data-frames='[{"from":"y:[-100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'>
                            <div class="text">
                                <?php 
                                    if (isset($slide['description']) && ! empty($slide['description'])){
                                        echo $slide['description'];
                                    }
                                ?>
                                    
                                </div>
                        </div>
                        
                        <div class="tp-caption tp-resizeme" 
                        data-paddingbottom="[0,0,0,0]"
                        data-paddingleft="[0,0,0,0]"
                        data-paddingright="[0,0,0,0]"
                        data-paddingtop="[0,0,0,0]"
                        data-responsive_offset="on"
                        data-type="text"
                        data-height="none"
                        data-width="auto"
                        data-whitespace="nowrap"
                        data-textalign="center"
                        data-hoffset="['0','0','0','0']"
                        data-voffset="['105','105','105','105']"
                        data-x="['center','center','center','center']"
                        data-y="['middle','middle','middle','middle']"
                        data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1000,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"auto:auto;","mask":"x:0;y:0;s:inherit;e:inherit;","ease":"Power3.easeInOut"}]'>
                            <a href="<?php the_permalink();?>" class="theme-btn btn-style-one">Discover More</a>
                        </div>
                    </li>        
                <?php endforeach;?>
                </ul>
            </div>
        </div>
    </section>
    <!--End Main Slider-->
    
   <!-- Sidebar Page Container -->
    <div class="sidebar-page-container">
        <div class="auto-container">
            <div class="row clearfix">
                <!--Content Side-->
                <div class="content-side col-lg-9 col-md-8 col-sm-12 col-xs-12">
                    <div class="blog-list">
                        <!-- News Block -->
                        <div class="news-block-two">
                            <div class="inner-box">
                                <div class="image-box">
                                    <figure><img src="<?php echo get_template_directory_uri(); ?>/template-2/images/resource/blog-list-1.jpg" alt=""></figure>
                                    <a href="images/resource/blog-list-1.jpg" class="lightbox-image"><i class="plus-icon"></i></a>
                                </div>
                                <div class="lower-content">
                                    <div class="info-box">
                                        <ul>
                                            <li><i class="fa fa-user"></i><a href="blog-detail.html">Admin</a></li>
                                            <li><i class="fa fa-comments"></i><a href="blog-detail.html">Comment  02</a></li>
                                        </ul>
                                    </div>
                                    <div class="content">
                                        <div class="date-and-like">   
                                            <div class="date"><h4>17</h4><span>oct</span></div>
                                            <div class="like"><span class="fa fa-heart"></span> 02</div>
                                        </div>
                                        <h3><a href="blog-detail.html">Tips for car maintanence</a></h3>
                                        <p>shopping around town for the lowest gas prices, we have found a great video that gives some extra money saving A lot of auto repair customerss questions the importance of wheel alignment. Is it really necessary? Yes, it is.</p>
                                        <a href="blog-detail.html" class="read-more">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- News Block -->
                        <div class="news-block-two">
                            <div class="inner-box">
                                <div class="image-box">
                                    <figure><img src="<?php echo get_template_directory_uri(); ?>/template-2/images/resource/blog-list-2.jpg" alt=""></figure>
                                    <a href="images/resource/blog-list-2.jpg" class="lightbox-image"><i class="plus-icon"></i></a>
                                </div>
                                <div class="lower-content">
                                    <div class="info-box">
                                        <ul>
                                            <li><i class="fa fa-user"></i><a href="blog-detail.html">Admin</a></li>
                                            <li><i class="fa fa-comments"></i><a href="blog-detail.html">Comment  02</a></li>
                                        </ul>
                                    </div>
                                    <div class="content">
                                        <div class="date-and-like">   
                                            <div class="date"><h4>18</h4><span>aug</span></div>
                                            <div class="like"><span class="fa fa-heart"></span> 02</div>
                                        </div>
                                        <h3><a href="blog-detail.html">Tips for car maintanence</a></h3>
                                        <p>shopping around town for the lowest gas prices, we have found a great video that gives some extra money saving A lot of auto repair customerss questions the importance of wheel alignment. Is it really necessary? Yes, it is.</p>
                                        <a href="blog-detail.html" class="read-more">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- News Block -->
                        <div class="news-block-two">
                            <div class="inner-box">
                                <div class="image-box">
                                    <figure><img src="<?php echo get_template_directory_uri(); ?>/template-2/images/resource/blog-list-3.jpg" alt=""></figure>
                                    <a href="images/resource/blog-list-3.jpg" class="lightbox-image"><i class="plus-icon"></i></a>
                                </div>
                                <div class="lower-content">
                                    <div class="info-box">
                                        <ul>
                                            <li><i class="fa fa-user"></i><a href="blog-detail.html">Admin</a></li>
                                            <li><i class="fa fa-comments"></i><a href="blog-detail.html">Comment  02</a></li>
                                        </ul>
                                    </div>
                                    <div class="content">
                                        <div class="date-and-like">   
                                            <div class="date"><h4>28</h4><span>aug</span></div>
                                            <div class="like"><span class="fa fa-heart"></span> 02</div>
                                        </div>
                                        <h3><a href="blog-detail.html">Tips for car maintanence</a></h3>
                                        <p>shopping around town for the lowest gas prices, we have found a great video that gives some extra money saving A lot of auto repair customerss questions the importance of wheel alignment. Is it really necessary? Yes, it is.</p>
                                        <a href="blog-detail.html" class="read-more">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- News Block -->
                        <div class="news-block-two">
                            <div class="inner-box">
                                <div class="image-box">
                                    <figure><img src="<?php echo get_template_directory_uri(); ?>/template-2/images/resource/blog-list-4.jpg" alt=""></figure>
                                    <a href="images/resource/blog-list-4.jpg" class="lightbox-image"><i class="plus-icon"></i></a>
                                </div>
                                <div class="lower-content">
                                    <div class="info-box">
                                        <ul>
                                            <li><i class="fa fa-user"></i><a href="blog-detail.html">Admin</a></li>
                                            <li><i class="fa fa-comments"></i><a href="blog-detail.html">Comment  02</a></li>
                                        </ul>
                                    </div>
                                    <div class="content">
                                        <div class="date-and-like">   
                                            <div class="date"><h4>28</h4><span>aug</span></div>
                                            <div class="like"><span class="fa fa-heart"></span> 02</div>
                                        </div>
                                        <h3><a href="blog-detail.html">Tips for car maintanence</a></h3>
                                        <p>shopping around town for the lowest gas prices, we have found a great video that gives some extra money saving A lot of auto repair customerss questions the importance of wheel alignment. Is it really necessary? Yes, it is.</p>
                                        <a href="blog-detail.html" class="read-more">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <!-- Styled Pagination -->
                        <div class="styled-pagination text-center clearfix">
                            <ul class="clearfix">
                                <li><a href="#" class="active">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a class="next" href="#"><span class="fa fa-angle-right"></span></a></li>
                            </ul>
                        </div>

                    </div><!-- Blog List -->
                </div>
                <!--Sidebar Side-->
                <div class="sidebar-side col-lg-3 col-md-4 col-sm-12 col-xs-12">
                    <aside class="sidebar default-sidebar">
                        
                        <!--search box-->
                        <div class="sidebar-widget search-box">
                            <form method="post" action="http://expert-themes.com/html/motor-expert/blog.html">
                                <div class="form-group">
                                    <input type="search" name="search-field" value="" placeholder="Search Product" required="">
                                    <button type="submit"><span class="icon fa fa-search"></span></button>
                                </div>
                            </form>
                        </div>

                        <!-- Categories -->
                        <div class="sidebar-widget categories">
                            <div class="sidebar-title"><h2>Categories</h2></div>
                            <ul class="category-list">
                                <li><a href="#">Cooling Kit  <span>12</span></a></li>
                                <li><a href="#">Engine Kit   <span>15</span></a></li>
                                <li><a href="#">Car Engine   <span>10</span></a></li>
                                <li><a href="#">Single Parts <span>08</span></a></li>
                                <li><a href="#">Break Kit    <span>05</span></a></li>
                            </ul>
                        </div>

                        <!-- Latest News -->
                        <div class="sidebar-widget latest-news">
                            <div class="sidebar-title"><h2>Latest News</h2></div>
                            <div class="widget-content">
                                <article class="post">
                                    <div class="post-thumb"><a href="blog-single.html"><img src="<?php echo get_template_directory_uri(); ?>/template-2/images/resource/post-thumb-1.jpg" alt=""></a></div>
                                    <h3><a href="blog-single.html">Time to check the wheel aligment</a></h3>
                                    <div class="post-info"><span class="fa fa-comments"></span> 3 Comments</div>
                                </article>

                                <article class="post">
                                    <div class="post-thumb"><a href="blog-single.html"><img src="<?php echo get_template_directory_uri(); ?>/template-2/images/resource/post-thumb-2.jpg" alt=""></a></div>
                                    <h3><a href="blog-single.html">Clunking sound under the hood</a></h3>
                                    <div class="post-info"><span class="fa fa-comments"></span> 0 Comments</div>
                                </article>

                                <article class="post">
                                    <div class="post-thumb"><a href="blog-single.html"><img src="<?php echo get_template_directory_uri(); ?>/template-2/images/resource/post-thumb-3.jpg" alt=""></a></div>
                                    <h3><a href="blog-single.html">Top certified services in 2017</a></h3>
                                    <div class="post-info"><span class="fa fa-comments"></span> 10 Comments</div>
                                </article>
                            </div>
                        </div>

                        <!-- Tags -->
                        <div class="sidebar-widget tags">
                            <div class="sidebar-title"><h2>Tags</h2></div>
                            <ul class="tag-list clearfix">
                                <li><a href="#">Brakes</a></li>
                                <li><a href="#">Diagnostics</a></li>
                                <li><a href="#">Cars</a></li>
                                <li><a href="#">Oil Filters</a></li>
                                <li><a href="#">Transmission</a></li>
                                <li><a href="#">Engines</a></li>
                                <li><a href="#">Suspension</a></li>
                            </ul>
                        </div>
                                            
                    </aside>
                </div>
            </div>
        </div>
    </div>
    <!-- End Sidebar Container -->
<?php include('inc/template-two/footer-two.php');?>   
