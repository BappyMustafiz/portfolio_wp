<?php get_header();?>
      <!-- Banner section start -->
      <div class="banner" id="banner">
         <div class="container">
            <div class="row">
               <!-- banner left start-->
               <div class="col-sm-12 col-md-6">
                  <div class="banner-image">
                     <img src="<?php echo get_template_directory_uri();?>/img/your_image.png" alt="banner-image" class="img-fluid">
                  </div>
               </div>
               <!-- .col -->
               <!-- banner left end-->
               <!-- banner right start-->
               <div class="col-sm-12 col-md-6">
                  <div class="banner-right-section">
                     <div class="banner-title">
                        <p>Paul Adam</p>
                     </div>
                     <div class="banner-designation">
                        <p>web designer & developer</p>
                     </div>
                     <div class="banner-button">
                        <a href="#portfolio">Portfolio</a>
                     </div>
                     <div class="banner-contact-social">
                        <ul class="list-unstyled">
                           <li><a href="#!"><i class="fa fa-behance"></i></a></li>
                           <li><a href="#!"><i class="fa fa-dribbble"></i></a></li>
                           <li><a href="#!"><i class="fa fa-linkedin"></i></a></li>
                           <li><a href="#!"><i class="fa fa-facebook"></i></a></li>
                        </ul>
                     </div>
                  </div>
               </div>
               <!-- .col -->
               <!-- banner right end-->
            </div>
            <!-- .row -->
         </div>
         <!-- .container -->
      </div>
      <!-- .banner -->
      <!-- Banner section end -->
      <!-- About section start -->
      <div class="about" id="about">
         <div class="container">
            <div class="row">
               <div class="about-title">
                  <p class="about-short-title">who am i</p>
                  <p>About Me</p>
                  <hr class="about-title-hr">
               </div>
            </div>
            <!--.row-->
            <div class="row">
               <div class="col-sm-12">
                  <input class="tab-input" id="tab1" type="radio" name="tabs" checked>
                  <label class="tab-label" for="tab1">Short Info</label>
                  <input class="tab-input" id="tab2" type="radio" name="tabs">
                  <label class="tab-label" for="tab2">Education</label>
                  <input class="tab-input" id="tab3" type="radio" name="tabs">
                  <label class="tab-label" for="tab3">Skills</label>
                  <section class="about-tab-section" id="content1">
                     <div class="row">
                        <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                           <div class="about-short-info-content">
                              <div class="row">
                                 <div class="about-short-info-desc">
                                    <p>
                                       Web Designer & Developer from Canadian belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.
                                    </p>
                                 </div>
                              </div>
                              <!--.row-->
                              <div class="row">
                                 <div class="about-short-info-details">
                                    <ul>
                                       <li>Name<span>:</span>Paul Adam</li>
                                       <li>Birth Date<span class="colon2">:</span>20/06/1988</li>
                                       <li>Phone<span class="colon3">:</span>+00 2457 87452</li>
                                       <li>E-mail<span>:</span>pauladam@gmail.com</li>
                                       <li>Skype<span class="colon5">:</span>paul_adam</li>
                                       <li>Blood<span class="colon6">:</span>AB-</li>
                                       <li>Address<span class="colon7">:</span>24/5 Link Road, Atlanta, USA</li>
                                    </ul>
                                 </div>
                              </div>
                              <!--.row-->
                              <div class="row">
                                 <!-- <div class="about-download-button">
                                    <a href="#contact">Download CV &nbsp;&nbsp;<span><i class="fa fa-file-pdf-o"></i></span></a>
                                 </div> -->
                                  <div class="about-download-button">
                                      <a title="view/download" data-toggle="modal" data-target=".bd-example-modal-lg"><span>Download CV &nbsp;&nbsp;<span><i class="fa fa-download"></i></span></a>
                                  </div>
                                 <div class="about-hire-button">
                                    <a href="#contact">Hire Me &nbsp;&nbsp;<span><i class="fa fa-paper-plane"></i></span></a>
                                 </div>
                              </div>
                               <!-- view cv modal start -->
                               <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" >
                                   <div class="modal-dialog modal-lg">
                                       <div class="modal-content">
                                           <div id="print">
                                               <!-- cv header start-->
                                               <div class="cv-heading">
                                                   <div class="row">
                                                       <div class="col-md-9">
                                                           <div class="cv-heading-title">
                                                               <div class="row">
                                                                   <div class="col-md-12">
                                                                       <div class="cv-owner-name">
                                                                         <p>Paul Adam</p>
                                                                       </div>
                                                                   </div>
                                                                   <div class="col-md-12">
                                                                       <div class="cv-owner-designation">
                                                                         <p>Web Designer & Developer</p>
                                                                       </div>
                                                                   <hr class="cv-header-hr">
                                                                   </div>
                                                                   <div class="col-md-12">
                                                                       <div class="cv-header-description">
                                                                         <p>
                                                                               Web Designer & Developer from <span>Canadian</span> belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure.
                                                                           </p>
                                                                       </div>
                                                                   </div>
                                                               </div>
                                                           </div>
                                                       </div>
                                                       <div class="col-md-3">
                                                           <div class="cv-header-image">
                                                               <img src="<?php echo get_template_directory_uri();?>/img/paul_adamcv.png" alt="paul_adam" class="img-fluid">
                                                           </div>
                                                       </div>
                                                   </div>
                                               </div>
                                               <!-- cv header end-->
                                               <!-- cv education start-->
                                               <div class="cv-education">
                                                   <div class="cv-education-title">
                                                       <p>Education</p>
                                                       <hr class="cv-education-title-hr">
                                                   </div>
                                                   <div class="row">
                                                       <div class="col-md-6">
                                                           <div class="cv-education-block">
                                                               <div class="row">
                                                                   <div class="col-md-8">
                                                                       <div class="cv-education-degree">
                                                                           <p>Bachelor Of Science Degree</p>
                                                                       </div>
                                                                       <div class="cv-education-university">
                                                                           <p>University Of California, USA</p>
                                                                       </div>
                                                                   </div>
                                                                   <div class="col-md-4">
                                                                       <div class="cv-education-passyear">
                                                                           <p>Passed 2018</p>
                                                                       </div>
                                                                   </div>
                                                               </div>
                                                               <div class="cv-education-description">
                                                                   <p>classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professoden-Sydney College in Virginia, looked.</p>
                                                               </div>
                                                           </div>
                                                       </div>
                                                       <div class="col-md-6">
                                                           <div class="cv-education-block">
                                                               <div class="row">
                                                                   <div class="col-md-8">
                                                                       <div class="cv-education-degree">
                                                                           <p>Bachelor Of Science Degree</p>
                                                                       </div>
                                                                       <div class="cv-education-university">
                                                                           <p>University Of California, USA</p>
                                                                       </div>
                                                                   </div>
                                                                   <div class="col-md-4">
                                                                       <div class="cv-education-passyear">
                                                                           <p>Passed 2018</p>
                                                                       </div>
                                                                   </div>
                                                               </div>
                                                               <div class="cv-education-description">
                                                                   <p>classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professoden-Sydney College in Virginia, looked.</p>
                                                               </div>
                                                           </div>
                                                       </div>
                                                   </div>
                                                   <hr class="cv-education-hr">
                                                   <div class="row">
                                                       <div class="col-md-6">
                                                           <div class="cv-education-block">
                                                               <div class="row">
                                                                   <div class="col-md-8">
                                                                       <div class="cv-education-degree">
                                                                           <p>Bachelor Of Science Degree</p>
                                                                       </div>
                                                                       <div class="cv-education-university">
                                                                           <p>University Of California, USA</p>
                                                                       </div>
                                                                   </div>
                                                                   <div class="col-md-4">
                                                                       <div class="cv-education-passyear">
                                                                           <p>Passed 2018</p>
                                                                       </div>
                                                                   </div>
                                                               </div>
                                                               <div class="cv-education-description">
                                                                   <p>classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professoden-Sydney College in Virginia, looked.</p>
                                                               </div>
                                                           </div>
                                                       </div>
                                                       <div class="col-md-6">
                                                           <div class="cv-education-block">
                                                               <div class="row">
                                                                   <div class="col-md-8">
                                                                       <div class="cv-education-degree">
                                                                           <p>Bachelor Of Science Degree</p>
                                                                       </div>
                                                                       <div class="cv-education-university">
                                                                           <p>University Of California, USA</p>
                                                                       </div>
                                                                   </div>
                                                                   <div class="col-md-4">
                                                                       <div class="cv-education-passyear">
                                                                           <p>Passed 2018</p>
                                                                       </div>
                                                                   </div>
                                                               </div>
                                                               <div class="cv-education-description">
                                                                   <p>classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professoden-Sydney College in Virginia, looked.</p>
                                                               </div>
                                                           </div>
                                                       </div>
                                                   </div> 
                                               </div>
                                               <!-- cv education end-->
                                               <!-- cv experience start-->
                                               <div class="cv-experience">
                                                   <div class="cv-experience-title">
                                                       <p>Experience</p>
                                                       <hr class="cv-experience-title-hr">
                                                   </div>
                                                   <div class="row">
                                                       <div class="col-md-6">
                                                           <div class="cv-experience-block">
                                                               <div class="row">
                                                                   <div class="col-md-12">
                                                                       <div class="cv-experience-degree">
                                                                           <p>Senior Graphic Designer</p>
                                                                       </div>
                                                                       <div class="cv-experience-university">
                                                                           <p>Atlanta, USA</p>
                                                                       </div>
                                                                   </div>
                                                               </div>
                                                               <div class="cv-experience-description">
                                                                   <p>classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin.</p>
                                                               </div>
                                                               <div class="cv-experience-duration">
                                                                   <p>Date : 10/4/2007 - 12/4/2010</p>
                                                               </div>
                                                           </div>
                                                       </div>
                                                       <div class="col-md-6">
                                                           <div class="cv-experience-block">
                                                               <div class="row">
                                                                   <div class="col-md-12">
                                                                       <div class="cv-experience-degree">
                                                                           <p>Senior Graphic Designer</p>
                                                                       </div>
                                                                       <div class="cv-experience-university">
                                                                           <p>Atlanta, USA</p>
                                                                       </div>
                                                                   </div>
                                                               </div>
                                                               <div class="cv-experience-description">
                                                                   <p>classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin.</p>
                                                               </div>
                                                               <div class="cv-experience-duration">
                                                                   <p>Date : 10/4/2007 - 12/4/2010</p>
                                                               </div>
                                                           </div>
                                                       </div>
                                                   </div> 
                                               </div>
                                               <!-- cv experience end-->
                                               <!-- cv expert start-->
                                               <div class="cv-expert">
                                                   <div class="cv-expert-title">
                                                       <p>Expert In</p>
                                                       <hr class="cv-expert-title-hr">
                                                   </div>
                                                   <div class="row">
                                                       <div class="col-md-6">
                                                           <div class="container-skills">
                                                               <div class="html">
                                                               <p class="bar-title">
                                                                   HTML5
                                                                   <span class="percent align-right">95%</span>
                                                               </p>
                                                               <div class="bar">
                                                                   <div class="bar-fill bar-fill-html start"></div>
                                                               </div>
                                                               </div>
                                                               <div class="css">
                                                                   <p class="bar-title">
                                                                       CSS3
                                                                       <span class="percent align-right">90%</span>
                                                                   </p>
                                                                   <div class="bar">
                                                                       <div class="bar-fill bar-fill-css start"></div>
                                                                   </div>
                                                               </div>
                                                               <div class="photoshop">
                                                                   <p class="bar-title">
                                                                       Photoshop
                                                                       <span class="percent align-right">80%</span>
                                                                   </p>
                                                                   <div class="bar">
                                                                       <div class="bar-fill bar-fill-photoshop start"></div>
                                                                   </div>
                                                               </div>
                                                               <div class="javascript">
                                                                   <p class="bar-title">
                                                                       JavaScript
                                                                       <span class="percent align-right">65%</span>
                                                                   </p>
                                                                   <div class="bar">
                                                                       <div class="bar-fill bar-fill-javascript start"></div>
                                                                   </div>
                                                               </div>
                                                           </div>
                                                       </div>
                                                       <div class="col-md-6">
                                                           <div class="container-skills">
                                                               <div class="jquery">
                                                               <p class="bar-title">
                                                                   jQuery
                                                                   <span class="percent align-right">80%</span>
                                                               </p>
                                                               <div class="bar">
                                                                   <div class="bar-fill bar-fill-jquery start"></div>
                                                               </div>
                                                               </div>
                                                               <div class="php">
                                                                   <p class="bar-title">
                                                                       PHP
                                                                       <span class="percent align-right">75%</span>
                                                                   </p>
                                                                   <div class="bar">
                                                                       <div class="bar-fill bar-fill-php start"></div>
                                                                   </div>
                                                               </div>
                                                               <div class="mysql">
                                                                   <p class="bar-title">
                                                                       MySQL
                                                                       <span class="percent align-right">90%</span>
                                                                   </p>
                                                                   <div class="bar">
                                                                       <div class="bar-fill bar-fill-mysql start"></div>
                                                                   </div>
                                                               </div>
                                                               <div class="wordpress">
                                                                   <p class="bar-title">
                                                                       Wordpress
                                                                       <span class="percent align-right">90%</span>
                                                                   </p>
                                                                   <div class="bar">
                                                                       <div class="bar-fill bar-fill-wordpress start"></div>
                                                                   </div>
                                                               </div>
                                                           </div>
                                                       </div>
                                                   </div> 
                                               </div>
                                               <!-- cv expert end-->
                                               <!-- cv expert start-->
                                               <div class="cv-address">
                                                   <div class="cv-address-title">
                                                       <p>Address</p>
                                                       <hr class="cv-address-title-hr">
                                                   </div>
                                                   <div class="row">
                                                       <div class="col-md-4 col-sm-12 col-lg-4 col-xl-4">
                                                           <div class="cv-contact-me-phone">
                                                               <div class="row">
                                                                   <div class="col-md-2">
                                                                       <div class="cv-contact-me-icon">
                                                                           <i class="fa fa-phone"></i>
                                                                       </div>
                                                                   </div><!--.col-->
                                                                   <div class="col-md-10">
                                                                       <div class="cv-contact-me-phone-title">
                                                                           <p>Phone</p>
                                                                       </div>
                                                                       <div class="cv-contact-me-phone-number">
                                                                           <p>+88 245 489 5478</p>
                                                                       </div>
                                                                   </div><!--.col-->
                                                               </div><!--.row-->
                                                           </div>
                                                       </div><!--.col-->
                                                       <div class="col-md-4 col-sm-12 col-lg-4 col-xl-4">
                                                           <div class="cv-contact-me-location">
                                                               <div class="row">
                                                                   <div class="col-md-2">
                                                                       <div class="cv-contact-me-location-icon">
                                                                           <i class="fa fa-map-marker"></i>
                                                                       </div>
                                                                   </div><!--.col-->
                                                                   <div class="col-md-10">
                                                                       <div class="cv-contact-me-location-title">
                                                                           <p>Address</p>
                                                                       </div>
                                                                       <div class="cv-contact-me-location-address">
                                                                           <p>5486/5 Road, Atlanta</p>
                                                                       </div>
                                                                   </div><!--.col-->
                                                               </div><!--.row-->
                                                           </div>
                                                       </div><!--.col-->
                                                       <div class="col-md-4 col-sm-12 col-lg-4 col-xl-4">
                                                           <div class="cv-contact-me-email">
                                                               <div class="row">
                                                                   <div class="col-md-2">
                                                                       <div class="cv-contact-me-email-icon">
                                                                           <i class="fa fa-envelope"></i>
                                                                       </div>
                                                                   </div><!--.col-->
                                                                   <div class="col-md-10">
                                                                       <div class="cv-contact-me-email-title">
                                                                           <p>E-mail</p>
                                                                       </div>
                                                                       <div class="cv-contact-me-email-address">
                                                                           <p>adam@gmail.com</p>
                                                                       </div>
                                                                   </div><!--.col-->
                                                               </div><!--.row-->
                                                           </div>
                                                       </div><!--.col-->
                                                   </div><!--.row-->
                                               </div>
                                               <!-- cv expert end-->
                                           </div>
                                           <!-- download button start -->
                                               <div class="cv-inner-button">
                                                   <a href="#!" title="download" onclick="printContent('print')"></span>Download as PDF</a>
                                               </div>
                                           <!-- download button end -->
                                       </div>
                                   </div>
                               </div>
                               <!-- view cv modal end -->
                              <!--.row-->
                           </div>
                        </div>
                        <!--.col-->
                        <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                           <div class="introduction-image">
                              <img src="<?php echo get_template_directory_uri();?>/img/about_image.png" alt="about-us" class="img-fluid">
                           </div>
                        </div>
                        <!--.col-->
                     </div>
                     <!--.row-->
                  </section>
                  <section class="about-tab-section" id="content2">
                     <div class="row">
                        <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                           <div class="about-short-info-content">
                              <div class="row">
                                 <div class="about-short-info-desc">
                                    <p>
                                       Web Designer & Developer from Canadian belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.
                                    </p>
                                 </div>
                              </div>
                              <!--.row-->
                              <div class="row">
                                 <div class="about-short-info-details">
                                    <ul>
                                       <li>Name<span>:</span>Paul Adam</li>
                                       <li>Birth Date<span class="colon2">:</span>20/06/1988</li>
                                       <li>Phone<span class="colon3">:</span>+00 2457 87452</li>
                                       <li>E-mail<span>:</span>pauladam@gmail.com</li>
                                       <li>Skype<span class="colon5">:</span>paul_adam</li>
                                       <li>Blood<span class="colon6">:</span>AB-</li>
                                       <li>Address<span class="colon7">:</span>24/5 Link Road, Atlanta, USA</li>
                                    </ul>
                                 </div>
                              </div>
                              <!--.row-->
                              <div class="row">
                                 <div class="about-download-button">
                                    <a href="#contact">Download CV <span><i class="fa fa-file-pdf-o"></i></span></a>
                                 </div>
                                 <div class="about-hire-button">
                                    <a href="#contact">Hire Me <span><i class="fa fa-paper-plane"></i></span></a>
                                 </div>
                              </div>
                              <!--.row-->
                           </div>
                        </div>
                        <!--.col-->
                        <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                           <div class="introduction-image">
                              <img src="<?php echo get_template_directory_uri();?>/img/about_image.png" alt="about-us" class="img-fluid">
                           </div>
                        </div>
                        <!--.col-->
                     </div>
                     <!--.row-->
                  </section>
                  <section class="about-tab-section" id="content3">
                     <div class="row">
                        <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                           <div class="about-short-info-content">
                              <div class="row">
                                 <div class="about-short-info-desc">
                                    <p>
                                       Web Designer & Developer from Canadian belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.
                                    </p>
                                 </div>
                              </div>
                              <!--.row-->
                              <div class="row">
                                 <div class="col-sm-12">
                                    <div class="about-short-info-details">
                                       <ul>
                                          <li>Name<span>:</span>Paul Adam</li>
                                          <li>Birth Date<span class="colon2">:</span>20/06/1988</li>
                                          <li>Phone<span class="colon3">:</span>+00 2457 87452</li>
                                          <li>E-mail<span>:</span>pauladam@gmail.com</li>
                                          <li>Skype<span class="colon5">:</span>paul_adam</li>
                                          <li>Blood<span class="colon6">:</span>AB-</li>
                                          <li>Address<span class="colon7">:</span>24/5 Link Road, Atlanta, USA</li>
                                       </ul>
                                    </div>
                                 </div>
                                 <!-- .col -->
                              </div>
                              <!--.row-->
                              <div class="row">
                                 <div class="about-download-button">
                                    <a href="#contact">Download CV <span><i class="fa fa-file-pdf-o"></i></span></a>
                                 </div>
                                 <div class="about-hire-button">
                                    <a href="#contact">Hire Me <span><i class="fa fa-paper-plane"></i></span></a>
                                 </div>
                              </div>
                              <!--.row-->
                           </div>
                        </div>
                        <!--.col-->
                        <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                           <div class="introduction-image">
                              <img src="<?php echo get_template_directory_uri();?>/img/about_image.png" alt="about-us" class="img-fluid">
                           </div>
                        </div>
                        <!--.col-->
                     </div>
                     <!--.row-->
                  </section>
               </div>
               <!-- .col -->
            </div>
            <!-- .row -->
         </div>
         <!--.container-->
      </div>
      <!--.about-->
      <!-- About section end -->
      <!-- slider section start -->
      <div class="slider" id="slider">
         <div class="container">
            <div class="row">
               <div class="body-wrapper">
                  <div class="wrapper">
                     <div class="content">
                        <div class="arrows">
                           <div class="left-arrow">
                              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24" height="24" viewBox="0 0 24 24">
                                 <path fill="#cfd8dc" d="M15.422 16.078l-1.406 1.406-6-6 6-6 1.406 1.406-4.594 4.594z"></path>
                              </svg>
                           </div>
                           <div class="right-arrow">
                              <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24" height="24" viewBox="0 0 24 24">
                                 <path fill="#cfd8dc" d="M15.422 16.078l-1.406 1.406-6-6 6-6 1.406 1.406-4.594 4.594z"></path>
                              </svg>
                           </div>
                           <div class="clear-fix"></div>
                        </div>
                        <div class="card left l4">
                           <div class="avatar" style="background-image: url('<?php echo get_template_directory_uri();?>/img/slider_image_01.png');"></div>
                        </div>
                        <div class="card left l3">
                           <div class="avatar" style="background-image: url('<?php echo get_template_directory_uri();?>/img/slider_image_02.png');"></div>
                        </div>
                        <div class="card left l2">
                           <div class="avatar" style="background-image: url('<?php echo get_template_directory_uri();?>/img/slider_image_03.png');"></div>
                        </div>
                        <div class="card left l1">
                           <div class="avatar" style="background-image: url('<?php echo get_template_directory_uri();?>/img/slider_image_05.png');"></div>
                        </div>
                        <div class="card active">
                           <div class="avatar" style="background-image: url('<?php echo get_template_directory_uri();?>/img/slider_image_04.png');"></div>
                        </div>
                        <div class="card right l1">
                           <div class="avatar" style="background-image: url('<?php echo get_template_directory_uri();?>/img/slider_image_06.png');"></div>
                        </div>
                        <div class="card right l2">
                           <div class="avatar" style="background-image: url('<?php echo get_template_directory_uri();?>/img/slider_image_01.png');"></div>
                        </div>
                        <div class="card right l3">
                           <div class="avatar" style="background-image: url('<?php echo get_template_directory_uri();?>/img/slider_image_02.png');"></div>
                        </div>
                        <div class="card right l4">
                           <div class="avatar" style="background-image: url('<?php echo get_template_directory_uri();?>/img/slider_image_03.png');"></div>
                        </div>
                     </div>
                     <!-- .content -->
                  </div>
                  <!-- .wrapper -->
               </div>
               <!-- .body-wrapper -->
            </div>
            <!-- .row -->
            <div class="row">
               <div class="slider-bottom-title">
                  <p>I will create your awesome website</p>
               </div>
            </div>
            <!-- .row -->
         </div>
         <!-- .container -->
      </div>
      <!-- .slider -->
      <!-- slider section end -->
      <!-- services section start -->
      <div class="services" id="services">
         <div class="container">
            <div class="row">
               <div class="services-title">
                  <p class="services-short-title">what i can do</p>
                  <p>My Services</p>
                  <hr class="services-title-hr">
               </div>
            </div>
            <!--.row-->
            <div class="row">
               <div class="col-md-4 col-sm-12 ">
                  <div class="service-box">
                     <div class="service-icon service-background">
                        <div class="front-content">
                           <img src="<?php echo get_template_directory_uri();?>/img/my_services_icon_01.png" alt="" class="img-fluid">
                           <h3>Web Design/Develop</h3>
                        </div>
                     </div>
                     <div class="service-content">
                        <h3>Web Design/Develop</h3>
                        <p>There are many for variations of passages of amt infint Lorem the Ipsum available any.</p>
                     </div>
                  </div>
               </div>
               <!--.col-->
               <div class="col-md-4 col-sm-12 ">
                  <div class="service-box">
                     <div class="service-icon service-background">
                        <div class="front-content">
                           <img src="<?php echo get_template_directory_uri();?>/img/my_services_icon_02.png" alt="" class="img-fluid">
                           <h3>App Design</h3>
                        </div>
                     </div>
                     <div class="service-content">
                        <h3>App Design</h3>
                        <p>There are many for variations of passages of amt infint Lorem the Ipsum available any.</p>
                     </div>
                  </div>
               </div>
               <!--.col-->
               <div class="col-md-4 col-sm-12">
                  <div class="service-box ">
                     <div class="service-icon service-background">
                        <div class="front-content">
                           <img src="<?php echo get_template_directory_uri();?>/img/my_services_icon_03.png" alt="" class="img-fluid">
                           <h3>App Development</h3>
                        </div>
                     </div>
                     <div class="service-content">
                        <h3>App Development</h3>
                        <p>There are many for variations of passages of amt infint Lorem the Ipsum available any.</p>
                     </div>
                  </div>
               </div>
               <!--.col-->
            </div>
            <!--.row-->
            <div class="row">
               <div class="col-md-4 col-sm-12 ">
                  <div class="service-box">
                     <div class="service-icon service-background">
                        <div class="front-content">
                           <img src="<?php echo get_template_directory_uri();?>/img/my_services_icon_04.png" alt="" class="img-fluid">
                           <h3>Graphic Design</h3>
                        </div>
                     </div>
                     <div class="service-content">
                        <h3>Graphic Design</h3>
                        <p>There are many for variations of passages of amt infint Lorem the Ipsum available any.</p>
                     </div>
                  </div>
               </div>
               <!--.col-->
               <div class="col-md-4 col-sm-12 ">
                  <div class="service-box">
                     <div class="service-icon service-background">
                        <div class="front-content">
                           <img src="<?php echo get_template_directory_uri();?>/img/my_services_icon_05.png" alt="" class="img-fluid">
                           <h3>Interface Design</h3>
                        </div>
                     </div>
                     <div class="service-content">
                        <h3>Interface Design</h3>
                        <p>There are many for variations of passages of amt infint Lorem the Ipsum available any.</p>
                     </div>
                  </div>
               </div>
               <!--.col-->
               <div class="col-md-4 col-sm-12">
                  <div class="service-box ">
                     <div class="service-icon service-background">
                        <div class="front-content">
                           <img src="<?php echo get_template_directory_uri();?>/img/my_services_icon_06.png" alt="" class="img-fluid">
                           <h3>Technical Support</h3>
                        </div>
                     </div>
                     <div class="service-content">
                        <h3>Technical Support</h3>
                        <p>There are many for variations of passages of amt infint Lorem the Ipsum available any.</p>
                     </div>
                  </div>
               </div>
               <!--.col-->
            </div>
            <!--.row-->
         </div>
         <!--.container-->
      </div>
      <!--.services -->
      <!-- services section end -->
      <!-- single app services section start -->
      <div class="single-app-services" id="singleServices">
         <div class="container">
            <div class="row">
               <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                  <div class="single-app-services-content">
                     <div class="row">
                        <div class="single-app-services-title">
                           <p>
                              I will build your app
                           </p>
                        </div>
                     </div>
                     <!--.row-->
                     <div class="row">
                        <div class="single-app-services-desc">
                           <p>
                              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates accusamus dolore quo quos, voluptatem, alias nulla accusantium ex consequatur doloremque sunt veniam quis quibusdam laboriosam debitis saepe ullam eaque minus.
                           </p>
                        </div>
                     </div>
                     <!--.row-->
                     <div class="row">
                        <div class="single-app-services-hire-button">
                           <a href="#contact">Hire Me &nbsp;&nbsp;<span><i class="fa fa-paper-plane"></i></span></a>
                        </div>
                        <div class="single-app-services-portfolio-button">
                           <a href="#portfolio">Portfolio</a>
                        </div>
                     </div>
                     <!--.row-->
                  </div>
               </div>
               <!--.col-->
               <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                  <div class="single-app-services-image">
                     <img src="<?php echo get_template_directory_uri();?>/img/app_image.png" alt="app-image" class="img-fluid">
                  </div>
               </div>
               <!--.col-->
            </div>
            <!--.row-->
         </div>
         <!--.container-->
      </div>
      <!--.single-app-services -->
      <!-- single app services section end -->
      <!-- portfolio section start -->
      <div class="portfolio" id="portfolio">
         <div class="container">
            <div class="row">
               <div class="portfolio-title">
                  <p class="portfolio-short-title">what i do</p>
                  <p>Portfolio</p>
                  <hr class="portfolio-title-hr">
               </div>
            </div>
            <!--.row-->
            <div class="row">
               <div class="wrapper">
                  <div class="tab-wrapper">
                     <ul class="tabs">
                        <li class="tab-link active" data-tab="1">All</li>
                        <li class="tab-link" data-tab="2">Design</li>
                        <li class="tab-link" data-tab="3">Development</li>
                        <li class="tab-link" data-tab="4">Support</li>
                     </ul>
                  </div>
                  <!--.tab-wrapper-->
                  <div class="content-wrapper">
                     <!-- All portfolio start -->
                     <div id="tab-1" class="tab-content active">
                        <div class="tz-gallery">
                           <div class="row">
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox img-fluid" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_01.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox img-fluid" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_02.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_03.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_04.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_05.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_06.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_07.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_08.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!--.tab-content-->
                     <!-- All portfolio end -->
                     <!-- Design portfolio start -->
                     <div id="tab-2" class="tab-content">
                        <div class="tz-gallery">
                           <div class="row">
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox img-fluid" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_01.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox img-fluid" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_02.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_03.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_04.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_05.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_06.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_07.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_08.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!--.tab-content-->
                     <!-- Design portfolio end -->
                     <!-- Development portfolio start -->
                     <div id="tab-3" class="tab-content">
                        <div class="tz-gallery">
                           <div class="row">
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox img-fluid" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_01.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox img-fluid" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_02.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_03.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_04.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_05.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_06.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_07.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_08.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!--.tab-content-->
                     <!-- Development portfolio end -->
                     <!-- Support portfolio start -->
                     <div id="tab-4" class="tab-content">
                        <div class="tz-gallery">
                           <div class="row">
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox img-fluid" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_01.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox img-fluid" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_02.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_03.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_04.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_05.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_06.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_07.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                              <div class="col-sm-6 col-md-3">
                                 <a class="lightbox" href="#!">
                                 <img src="<?php echo get_template_directory_uri();?>/img/portfolio_image_08.png" alt="Park" class="img-fluid">
                                 </a>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!--.tab-content-->
                     <!-- Support portfolio end -->
                  </div>
                  <!--.content-wrapper-->
               </div>
               <!--.wrapper-->
            </div>
            <!--.row-->
         </div>
         <!--.container-->
      </div>
      <!--.portfolio-->
      <!-- portfolio section end -->
      <!-- single design services section start -->
      <div class="single-design-services" id="singleServices">
         <div class="container">
            <div class="row">
               <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                  <div class="single-design-services-content">
                     <div class="row">
                        <div class="single-design-services-title">
                           <p>
                              I create responsive design
                           </p>
                        </div>
                     </div>
                     <!--.row-->
                     <div class="row">
                        <div class="single-design-services-desc">
                           <p>
                              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates accusamus dolore quo quos, voluptatem, alias nulla accusantium ex consequatur doloremque sunt veniam quis quibusdam laboriosam debitis saepe ullam eaque minus.
                           </p>
                        </div>
                     </div>
                     <!--.row-->
                     <div class="row">
                        <div class="single-design-services-hire-button">
                           <a href="#contact">Hire Me &nbsp;&nbsp;<span><i class="fa fa-paper-plane"></i></span></a>
                        </div>
                        <div class="single-design-services-portfolio-button">
                           <a href="#portfolio">Portfolio</a>
                        </div>
                     </div>
                     <!--.row-->
                  </div>
               </div>
               <!--.col-->
               <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                  <div class="single-design-services-image">
                     <img src="<?php echo get_template_directory_uri();?>/img/responsive_image.png" alt="responsive-image" class="img-fluid">
                  </div>
               </div>
               <!--.col-->
            </div>
            <!--.row-->
         </div>
         <!--.container-->
      </div>
      <!--.single-design-services-->
      <!-- single design services section end -->
      <!-- blog section start -->
      <div class="blog" id="blog">
         <div class="container">
            <div class="row">
               <div class="blog-title">
                  <p class="blog-short-title">what i am thinking</p>
                  <p>Latest Blog</p>
                  <hr class="blog-title-hr">
               </div>
            </div>
            <!--.row-->
            <div class="our-blog-total">
               <div class="row">
                  <div class="container-fostrap-blog">
                     <div class="content">
                        <div class="container">
                           <div class="row">
                              <div class="col-xs-12 col-sm-12 col-md-4">
                                 <div class="card">
                                    <a class="img-card" href="#!">
                                    <img src="<?php echo get_template_directory_uri();?>/img/blog_image_01.png" alt="blog" class="img-fluid">
                                    </a>
                                    <div class="card-content">
                                       <div class="row">
                                          <div class="blog-desc-title">
                                             <p>Printing and typesetting dustry</p>
                                          </div>
                                       </div>
                                       <div class="row">
                                          <div class="blog-category-button">
                                             <a href="#">Design</a>
                                          </div>
                                          <div class="blogger-name-button">
                                             <a href="#">By John Doe</a>
                                          </div>
                                       </div>
                                       <div class="row">
                                          <div class="blog-card-desc">
                                             <p>
                                                Pages of Lorem Ipsum alin availabl but There are many variations of the majority have suffered... <span><a href="#!">read more</a></span>
                                             </p>
                                          </div>
                                       </div>
                                       <div class="row">
                                          <div class="blog-publication-details">
                                             <p>
                                                <a href="#!"><i class="fa fa-clock-o"></i><span>10.00</span> <span>PM</span></a><a href="#!"><i class="fa fa-calendar"></i><span>21</span><span> March 2017 </span></a>
                                             </p>
                                          </div>
                                       </div>
                                       <!--.row-->
                                    </div>
                                    <!--.card-content-->
                                 </div>
                                 <!--.card-->
                              </div>
                              <!--.col-->
                              <div class="col-xs-12 col-sm-12 col-md-4">
                                 <div class="card">
                                    <a class="img-card" href="#!">
                                    <img src="<?php echo get_template_directory_uri();?>/img/blog_image_02.png" alt="blog" class="img-fluid">
                                    </a>
                                    <div class="card-content">
                                       <div class="row">
                                          <div class="blog-desc-title">
                                             <p>There are many variations</p>
                                          </div>
                                       </div>
                                       <div class="row">
                                          <div class="blog-category-button">
                                             <a href="#">Develop</a>
                                          </div>
                                          <div class="blogger-name-button">
                                             <a href="#">By Andrew</a>
                                          </div>
                                       </div>
                                       <div class="row">
                                          <div class="blog-card-desc">
                                             <p>
                                                Pages of Lorem Ipsum alin availabl but There are many variations of the majority have suffered... <span><a href="#!">read more</a></span>
                                             </p>
                                          </div>
                                       </div>
                                       <div class="row">
                                          <div class="blog-publication-details">
                                             <p>
                                                <a href="#!"><i class="fa fa-clock-o"></i><span>10.00</span> <span>PM</span></a><a href="#!"><i class="fa fa-calendar"></i><span>21</span><span> March 2017 </span></a>
                                             </p>
                                          </div>
                                       </div>
                                       <!--.row-->
                                    </div>
                                    <!--.card-content-->
                                 </div>
                                 <!--.card-->
                              </div>
                              <!--.col-->
                              <div class="col-xs-12 col-sm-12 col-md-4">
                                 <div class="card">
                                    <a class="img-card" href="#!">
                                    <img src="<?php echo get_template_directory_uri();?>/img/blog_image_03.png" alt="blog" class="img-fluid">
                                    </a>
                                    <div class="card-content">
                                       <div class="row">
                                          <div class="blog-desc-title">
                                             <p>All the Lorem Ipsum generators</p>
                                          </div>
                                       </div>
                                       <div class="row">
                                          <div class="blog-category-button">
                                             <a href="#">Design</a>
                                          </div>
                                          <div class="blogger-name-button">
                                             <a href="#">By paul adam</a>
                                          </div>
                                       </div>
                                       <div class="row">
                                          <div class="blog-card-desc">
                                             <p>
                                                Pages of Lorem Ipsum alin availabl but There are many variations of the majority have suffered... <span class="blog-read-more"><a href="#!">read more</a></span>
                                             </p>
                                          </div>
                                       </div>
                                       <div class="row">
                                          <div class="blog-publication-details">
                                             <p>
                                                <a href="#!"><i class="fa fa-clock-o"></i><span>10.00</span> <span>PM</span></a><a href="#!"><i class="fa fa-calendar"></i><span>21</span><span> March 2017 </span></a>
                                             </p>
                                          </div>
                                       </div>
                                       <!--.row-->
                                    </div>
                                    <!--.card-content-->
                                 </div>
                                 <!--.card-->
                              </div>
                              <!--.col-->
                           </div>
                           <!--.row-->
                        </div>
                        <!--.container-->
                     </div>
                     <!--.content-->
                  </div>
                  <!--.container-fostrap-blog-->
               </div>
               <!--.row-->
            </div>
            <!--.our-blog-total-->
         </div>
         <!--.container-->
      </div>
      <!--.blog-->
      <!-- blog section end -->
      <!-- single design freelancer section start -->
      <div class="single-freelancer-services" id="singleServices">
         <div class="container">
            <div class="row">
               <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                  <div class="single-freelancer-services-content">
                     <div class="row">
                        <div class="single-freelancer-services-title">
                           <p>
                              I Am Available For Freelancer
                           </p>
                        </div>
                     </div>
                     <!--.row-->
                     <div class="row">
                        <div class="single-freelancer-services-desc">
                           <p>
                              Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates accusamus dolore quo quos, voluptatem, alias nulla accusantium ex consequatur doloremque sunt veniam quis quibusdam laboriosam debitis saepe ullam eaque minus.
                           </p>
                        </div>
                     </div>
                     <!--.row-->
                     <div class="row">
                        <div class="single-freelancer-services-hire-button">
                           <a href="#contact">Hire Me &nbsp;&nbsp;<span><i class="fa fa-paper-plane"></i></span></a>
                        </div>
                        <div class="single-freelancer-services-portfolio-button">
                           <a href="#portfolio">Portfolio</a>
                        </div>
                     </div>
                     <!--.row-->
                  </div>
               </div>
               <!--.col-->
               <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                  <div class="single-freelancer-services-image">
                     <img src="<?php echo get_template_directory_uri();?>/img/freelancer_image.png" alt="responsive-image" class="img-fluid">
                  </div>
               </div>
               <!--.col-->
            </div>
            <!--.row-->
         </div>
         <!--.container-->
      </div>
      <!--.single-freelancer-services-->
      <!-- single design freelancer section end -->
      <!-- testimonial section start -->
      <div class="testimonial" id="testimonial">
         <div class="container">
            <div class="row">
               <div class="testimonial-title">
                  <p class="testimonial-short-title">what my client say</p>
                  <p>Testimonial</p>
                  <hr class="testimonial-title-hr">
               </div>
            </div>
            <!--.row-->
            <div class="carousel slide" id="demo" data-ride="carousel" >
               <ul class="carousel-indicators">
                  <li data-target="#demo" data-slide-to="0" class="active"></li>
                  <li data-target="#demo" data-slide-to="1"></li>
                  <li data-target="#demo" data-slide-to="2"></li>
               </ul>
               <!--.carousel-indicators -->
               <div class="carousel-inner">
                  <div class="carousel-item active">
                     <div class="row">
                        <div class="container-fostrap-testimonial">
                           <div class="content">
                              <div class="container">
                                 <div class="row">
                                    <div class="col-xs-12 col-sm-4">
                                       <div class="testimonial-card">
                                          <div class="testimonial-desc-card">
                                             <p class="testimonial-description">Lorem Ipsum is simply dummy text of the print speimen book. It has lop survived not only five turies, butthe leap into electronics</p>
                                             <p class="testimonial-name">Robert Beker <span class="testimonial-button">
                                                <a href="#">pinterest</a></span>
                                             </p>
                                          </div>
                                          <div class="price-btn">
                                             <img src="<?php echo get_template_directory_uri();?>/img/testimonial_image_01.png" alt="testimonial">
                                          </div>
                                       </div>
                                    </div>
                                    <!--.col -->
                                    <div class="col-xs-12 col-sm-4">
                                       <div class="testimonial-card">
                                          <div class="testimonial-desc-card">
                                             <p class="testimonial-description">Lorem Ipsum is simply dummy text of the print speimen book. It has lop survived not only five turies, butthe leap into electronics</p>
                                             <p class="testimonial-name">Mr. Johnson<span class="testimonial-button">
                                                <a href="#">versatile</a></span>
                                             </p>
                                          </div>
                                          <div class="price-btn">
                                             <img src="<?php echo get_template_directory_uri();?>/img/testimonial_image_02.png" alt="testimonial">
                                          </div>
                                       </div>
                                    </div>
                                    <!--.col -->
                                    <div class="col-xs-12 col-sm-4">
                                       <div class="testimonial-card">
                                          <div class="testimonial-desc-card">
                                             <p class="testimonial-description">Lorem Ipsum is simply dummy text of the print speimen book. It has lop survived not only five turies, butthe leap into electronics</p>
                                             <p class="testimonial-name">David Vuia<span class="testimonial-button">
                                                <a href="#">amazon</a></span>
                                             </p>
                                          </div>
                                          <div class="price-btn">
                                             <img src="<?php echo get_template_directory_uri();?>/img/testimonial_image_03.png" alt="testimonial">
                                          </div>
                                       </div>
                                    </div>
                                    <!--.col -->
                                 </div>
                                 <!--.row -->
                              </div>
                              <!--.container -->
                           </div>
                           <!--.content -->
                        </div>
                        <!--.container-fostrap-testimonial -->
                     </div>
                     <!--.row-->
                  </div>
                  <!--.carousel-item -->
                  <div class="carousel-item">
                     <div class="row">
                        <div class="container-fostrap-testimonial">
                           <div class="content">
                              <div class="container">
                                 <div class="row">
                                    <div class="col-xs-12 col-sm-4">
                                       <div class="testimonial-card">
                                          <div class="testimonial-desc-card">
                                             <p class="testimonial-description">Lorem Ipsum is simply dummy text of the print speimen book. It has lop survived not only five turies, butthe leap into electronics</p>
                                             <p class="testimonial-name">Robert Beker <span class="testimonial-button">
                                                <a href="#">pinterest</a></span>
                                             </p>
                                          </div>
                                          <div class="price-btn">
                                             <img src="<?php echo get_template_directory_uri();?>/img/testimonial_image_03.png" alt="testimonial">
                                          </div>
                                       </div>
                                    </div>
                                    <!--.col -->
                                    <div class="col-xs-12 col-sm-4">
                                       <div class="testimonial-card">
                                          <div class="testimonial-desc-card">
                                             <p class="testimonial-description">Lorem Ipsum is simply dummy text of the print speimen book. It has lop survived not only five turies, butthe leap into electronics</p>
                                             <p class="testimonial-name">Mr. Johnson<span class="testimonial-button">
                                                <a href="#">versatile</a></span>
                                             </p>
                                          </div>
                                          <div class="price-btn">
                                             <img src="<?php echo get_template_directory_uri();?>/img/testimonial_image_01.png" alt="testimonial">
                                          </div>
                                       </div>
                                    </div>
                                    <!--.col -->
                                    <div class="col-xs-12 col-sm-4">
                                       <div class="testimonial-card">
                                          <div class="testimonial-desc-card">
                                             <p class="testimonial-description">Lorem Ipsum is simply dummy text of the print speimen book. It has lop survived not only five turies, butthe leap into electronics</p>
                                             <p class="testimonial-name">David Vuia<span class="testimonial-button">
                                                <a href="#">amazon</a></span>
                                             </p>
                                          </div>
                                          <div class="price-btn">
                                             <img src="<?php echo get_template_directory_uri();?>/img/testimonial_image_02.png" alt="testimonial">
                                          </div>
                                       </div>
                                    </div>
                                    <!--.col -->
                                 </div>
                                 <!--.row -->
                              </div>
                              <!--.container -->
                           </div>
                           <!--.content -->
                        </div>
                        <!--.container-fostrap-testimonial -->
                     </div>
                     <!--.row-->
                  </div>
                  <!--.carousel-item -->
                  <div class="carousel-item">
                     <div class="row">
                        <div class="container-fostrap-testimonial">
                           <div class="content">
                              <div class="container">
                                 <div class="row">
                                    <div class="col-xs-12 col-sm-4">
                                       <div class="testimonial-card">
                                          <div class="testimonial-desc-card">
                                             <p class="testimonial-description">Lorem Ipsum is simply dummy text of the print speimen book. It has lop survived not only five turies, butthe leap into electronics</p>
                                             <p class="testimonial-name">Robert Beker <span class="testimonial-button">
                                                <a href="#">pinterest</a></span>
                                             </p>
                                          </div>
                                          <div class="price-btn">
                                             <img src="<?php echo get_template_directory_uri();?>/img/testimonial_image_02.png" alt="testimonial">
                                          </div>
                                       </div>
                                    </div>
                                    <!--.col -->
                                    <div class="col-xs-12 col-sm-4">
                                       <div class="testimonial-card">
                                          <div class="testimonial-desc-card">
                                             <p class="testimonial-description">Lorem Ipsum is simply dummy text of the print speimen book. It has lop survived not only five turies, butthe leap into electronics</p>
                                             <p class="testimonial-name">Mr. Johnson<span class="testimonial-button">
                                                <a href="#">versatile</a></span>
                                             </p>
                                          </div>
                                          <div class="price-btn">
                                             <img src="<?php echo get_template_directory_uri();?>/img/testimonial_image_03.png" alt="testimonial">
                                          </div>
                                       </div>
                                    </div>
                                    <!--.col -->
                                    <div class="col-xs-12 col-sm-4">
                                       <div class="testimonial-card">
                                          <div class="testimonial-desc-card">
                                             <p class="testimonial-description">Lorem Ipsum is simply dummy text of the print speimen book. It has lop survived not only five turies, butthe leap into electronics</p>
                                             <p class="testimonial-name">David Vuia<span class="testimonial-button">
                                                <a href="#">amazon</a></span>
                                             </p>
                                          </div>
                                          <div class="price-btn">
                                             <img src="<?php echo get_template_directory_uri();?>/img/testimonial_image_01.png" alt="testimonial">
                                          </div>
                                       </div>
                                    </div>
                                    <!--.col -->
                                 </div>
                                 <!--.row -->
                              </div>
                              <!--.container -->
                           </div>
                           <!--.content -->
                        </div>
                        <!--.container-fostrap-testimonial -->
                     </div>
                     <!--.row-->
                  </div>
                  <!--.carousel-item -->
               </div>
               <!--.carousel-inner -->
            </div>
            <!--.carousel-->
         </div>
         <!--.container-->
      </div>
      <!--.testimonial-->
      <!-- testimonial section end -->
      <!-- Our details counter section start -->
      <div class="our-details">
         <div class="container">
            <div class="row">
               <div class="col-md-3 col-sm-12">
                  <div class="our-details-package details-responsive">
                     <div class="row">
                        <div class="our-details-package-image">
                           <img src="<?php echo get_template_directory_uri();?>/img/completed_project_image.png" alt="Our details" class="img-fluid">
                        </div>
                     </div>
                     <div>
                        <div class="our-details-count">
                           <p class="timer count-title count-number" data-to="450" data-speed="1500"></p>
                        </div>
                     </div>
                     <div class="row">
                        <div class="our-details-title">
                           <p>Completed Project</p>
                        </div>
                     </div>
                  </div>
               </div>
               <!--.col -->
               <div class="col-md-3 col-sm-12">
                  <div class="our-details-package">
                     <div class="row">
                        <div class="our-details-package-image">
                           <img src="<?php echo get_template_directory_uri();?>/img/happy_client_image.png" alt="Our details" class="img-fluid">
                        </div>
                     </div>
                     <div>
                        <div class="our-details-count">
                           <p class="timer count-title count-number" data-to="360" data-speed="1500"></p>
                        </div>
                     </div>
                     <div class="row">
                        <div class="our-details-title">
                           <p>Happy Client</p>
                        </div>
                     </div>
                  </div>
               </div>
               <!--.col -->
               <div class="col-md-3 col-sm-12">
                  <div class="our-details-package">
                     <div class="row">
                        <div class="our-details-package-image">
                           <img src="<?php echo get_template_directory_uri();?>/img/working_hour_image.png" alt="Our details" class="img-fluid">
                        </div>
                     </div>
                     <div>
                        <div class="our-details-count">
                           <p class="timer count-title count-number" data-to="1230" data-speed="1500"></p>
                        </div>
                     </div>
                     <div class="row">
                        <div class="our-details-title">
                           <p>Working Hours</p>
                        </div>
                     </div>
                  </div>
               </div>
               <!--.col -->
               <div class="col-md-3 col-sm-12">
                  <div class="our-details-package">
                     <div class="row">
                        <div class="our-details-package-image">
                           <img src="<?php echo get_template_directory_uri();?>/img/team_member_image.png" alt="Our details" class="img-fluid">
                        </div>
                     </div>
                     <div>
                        <div class="our-details-count">
                           <p class="timer count-title count-number" data-to="350" data-speed="1500"></p>
                        </div>
                     </div>
                     <div class="row">
                        <div class="our-details-title">
                           <p>Team Member</p>
                        </div>
                     </div>
                  </div>
               </div>
               <!--.col -->
            </div>
            <!--.row-->
         </div>
         <!--.container-->
      </div>
      <!--.our-details -->
      <!-- Our details counter section end -->
      <!-- contact section start -->
      <div class="contact" id="contact">
         <div class="container">
            <div class="row">
               <div class="contact-title">
                  <p class="contact-short-title">connect with me</p>
                  <p>Contact</p>
                  <hr class="contact-title-hr">
               </div>
            </div>
            <!--.row-->
            <div class="row">
               <div class="col-md-4 col-sm-12">
                  <div class="contact-left-section">
                     <div class="row">
                        <div class="contact-left-image">
                           <img src="<?php echo get_template_directory_uri();?>/img/Contact_phone_icon.png" alt="" class="img-fluid">
                        </div>
                     </div>
                     <!--.row-->
                     <div class="row">
                        <div class="contact-left-title">
                           <p>Call me</p>
                        </div>
                     </div>
                     <!--.row-->
                     <div class="row">
                        <div class="contact-left-identity">
                           <p>+88 245 489 5478</p>
                        </div>
                     </div>
                     <!--.row-->
                  </div>
                  <div class="contact-left-section">
                     <div class="row">
                        <div class="contact-left-image">
                           <img src="<?php echo get_template_directory_uri();?>/img/Contact_email_icon.png" alt="" class="img-fluid">
                        </div>
                     </div>
                     <!--.row-->
                     <div class="row">
                        <div class="contact-left-title">
                           <p>E-mail me</p>
                        </div>
                     </div>
                     <!--.row-->
                     <div class="row">
                        <div class="contact-left-identity">
                           <p>adam@gmail.com</p>
                        </div>
                     </div>
                     <!--.row-->
                  </div>
                  <div class="contact-left-section">
                     <div class="row">
                        <div class="contact-left-image">
                           <img src="<?php echo get_template_directory_uri();?>/img/Contact_address_icon.png" alt="" class="img-fluid">
                        </div>
                     </div>
                     <!--.row-->
                     <div class="row">
                        <div class="contact-left-title">
                           <p>Visit my office</p>
                        </div>
                     </div>
                     <!--.row-->
                     <div class="row">
                        <div class="contact-left-identity">
                           <p>5486/5, Atlanta</p>
                        </div>
                     </div>
                     <!--.row-->
                  </div>
               </div>
               <!--.col-->
               <div class="col-md-8 col-sm-12">
                  <div class="contact-right-section">
                     <div class="row">
                        <div class="col-md-6 col-sm-12">
                           <div class="form-group">
                              <label for="name">Name</label>
                              <input type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Your Name.....">
                           </div>
                        </div>
                        <!--.col-->
                        <div class="col-md-6 col-sm-12">
                           <div class="form-group">
                              <label for="email">E-mail address</label>
                              <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Your e-mail.....">
                           </div>
                        </div>
                     </div>
                     <!--.row-->
                     <div class="row">
                        <div class="col-md-12 col-sm-12">
                           <div class="form-group">
                              <label for="subject">Subject</label>
                              <input type="text" class="form-control" id="subject" aria-describedby="emailHelp" placeholder="Message subject">
                           </div>
                        </div>
                        <!--.col-->
                     </div>
                     <!--.row-->
                     <div class="row">
                        <div class="col-md-12 col-sm-12">
                           <div class="form-group">
                              <label for="message">Message</label>
                              <textarea class="form-control" id="message" rows="5"></textarea>
                           </div>
                        </div>
                        <!--.col-->
                     </div>
                     <!--.row-->
                     <div class="row">
                        <div class="col-md-12">
                           <div class="contact-button">
                              <a href="#!">Send Message</a>
                           </div>
                        </div>
                        <!--.col-->
                     </div>
                     <!--.row-->
                     <!--.row-->
                  </div>
               </div>
               <!--.col-->
            </div>
            <!--.row-->
         </div>
         <!--.contact-->
      </div>
      <!--.contact-->
      <!-- contact section end -->
      <!-- subscribe section start -->
      <div class="subscribe" id="subscribe">
         <div class="container">
            <div class="row">
               <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                  <div class="subscribe-content">
                     <div class="row">
                        <div class="col-md-12">
                           <div class="subscribe-title">
                              <p>
                                 Subscribe Newsletter Now
                              </p>
                           </div>
                        </div>
                        <!--.col-->
                     </div>
                     <!--.row-->
                     <div class="row">
                        <div class="col-md-12">
                           <div class="buttonInside">
                              <input placeholder="Your e-mail">
                              <button id="erase">Send</button>
                           </div>
                        </div>
                        <!--.col-->
                     </div>
                     <!--.row-->
                  </div>
               </div>
               <!--.col-->
               <div class="col-sm-12 col-md-6 col-lg-6 col-xl-6">
                  <div class="subscribe-image">
                     <img src="<?php echo get_template_directory_uri();?>/img/subscribe_newsletter_image.png" alt="responsive-image" class="img-fluid">
                  </div>
               </div>
               <!--.col-->
            </div>
            <!--.row-->
         </div>
         <!--.container-->
      </div>
      <!--.subscribe-->
      <!-- subscribe section end -->
      <!-- my client section start -->
      <div class="my-client" id="client">
         <div class="container">
            <div class="row">
               <div class="col-xs-12 col-sm-12">
                  <div class="client-card">
                     <div class="row">
                        <div class="col-md-2 col-sm-12">
                           <div class="client-image">
                              <a href="#!">
                              <img src="<?php echo get_template_directory_uri();?>/img/microsoft_logo.png" alt="microsoft" class="img-fluid">
                              </a>
                           </div>
                        </div>
                        <!--.col-->
                        <div class="col-md-2 col-sm-12">
                           <div class="client-image">
                              <a href="#!">
                              <img src="<?php echo get_template_directory_uri();?>/img/google_logo.png" alt="google" class="img-fluid">
                              </a>
                           </div>
                        </div>
                        <!--.col-->
                        <div class="col-md-2 col-sm-12">
                           <div class="client-image">
                              <a href="#!">
                              <img src="<?php echo get_template_directory_uri();?>/img/facebook_logo.png" alt="facebook" class="img-fluid">
                              </a>
                           </div>
                        </div>
                        <!--.col-->
                        <div class="col-md-2 col-sm-12">
                           <div class="client-image">
                              <a href="#!">
                              <img src="<?php echo get_template_directory_uri();?>/img/pinterest_logo.png" alt="pinterest" class="img-fluid">
                              </a>
                           </div>
                        </div>
                        <!--.col-->
                        <div class="col-md-2 col-sm-12">
                           <div class="client-image">
                              <a href="#!">
                              <img src="<?php echo get_template_directory_uri();?>/img/amazon_logo.png" alt="amazon" class="img-fluid">
                              </a>
                           </div>
                        </div>
                        <!--.col-->
                        <div class="col-md-2 col-sm-12">
                           <div class="client-image">
                              <a href="#!">
                              <img src="<?php echo get_template_directory_uri();?>/img/google_logo.png" alt="envato" class="img-fluid">
                              </a>
                           </div>
                        </div>
                        <!--.col-->
                     </div>
                     <!--.row-->
                     <div class="client-relation-image">
                        <img src="<?php echo get_template_directory_uri();?>/img/hand_relationship_image.png" alt="testimonial">
                     </div>
                  </div>
                  <!--.client-card-->
               </div>
               <!--.col-->
            </div>
            <!--.row-->
         </div>
         <!--.container-->
      </div>
      <!--.my-client-->
      <!-- my client section end --> 
  <?php get_footer();?>    