<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="no-js">
    <!-- BEGIN HEAD -->
    <head>
        <meta charset="utf-8"/>
        <title>个人主页</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="width=device-width, initial-scale=1" name="viewport"/>
        <meta content="" name="description"/>
        <meta content="" name="author"/>
<script type="text/javascript" src="../pageResources/js/jquery-1.7.min.js"></script>
        <!-- GLOBAL MANDATORY STYLES -->
        <link href="http://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet" type="text/css">
        <link href="../pageResources/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css"/>
        <link href="../pageResources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <!-- PAGE LEVEL PLUGIN STYLES -->
        <link href="../pageResources/css/ani.css" rel="stylesheet">

        <!-- THEME STYLES -->
        <link href="../pageResources/css/layout.min.css" rel="stylesheet" type="text/css"/>

        <!-- Favicon -->
        <link rel="shortcut icon" href="favicon.ico"/>
    </head>
    <!-- END HEAD -->

    <!-- BODY -->
    <body id="body" data-spy="scroll" data-target=".header">
		<c:import url="head.jsp"></c:import>
        <!--========== HEADER ==========-->
<!--         <header class="header navbar-fixed-top">
            Navbar
            <nav class="navbar" role="navigation">
                <div class="container">
                    Brand and toggle get grouped for better mobile display
                    <div class="menu-container js_nav-item">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="toggle-icon"></span>
                        </button>
                    </div>
                </div>
            </nav>
            Navbar
        </header> -->
        <!--========== END HEADER ==========-->

        <!--========== SLIDER ==========-->
        <div class="promo-block parallax-window" data-parallax="scroll" data-image-src="../pageResources/imgs/1920x1080/01.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="promo-block-divider">
                            <h1 class="promo-block-title">${user.getName()}</h1>
                            <p class="promo-block-text">${user.getGzly()}</p>
                        </div>
                        <ul class="list-inline">
                            <li><a href="#" class="social-icons"><i class="icon-social-facebook"></i></a></li>
                            <li><a href="#" class="social-icons"><i class="icon-social-twitter"></i></a></li>
                            <li><a href="#" class="social-icons"><i class="icon-social-dribbble"></i></a></li>
                            <li><a href="#" class="social-icons"><i class="icon-social-behance"></i></a></li>
                            <li><a href="#" class="social-icons"><i class="icon-social-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
                <!--// end row -->
            </div>
        </div>
        <!--========== SLIDER ==========-->

        <!--========== PAGE LAYOUT ==========-->
        <!-- About -->
        <div id="about">
            <div class="container content-lg">
                <div class="row">
                    <div class="col-sm-3 sm-margin-b-30">
                        <div class="text-right sm-text-left">
                            <h2 class="margin-b-0">简介</h2>
                            <p>能力.</p>
                        </div>
                    </div>
                    <div class="col-sm-8 col-sm-offset-1">
                        <div class="margin-b-60">
                            <p>${user.getGrjs()}</p>
                        </div>

                        <!-- Progress Box -->
                        <c:forEach items="${introList}" var="object"
								varStatus="status">
								<div class="progress-box">
                            <h5>${object.getZsmc()}<span class="color-heading pull-right">${object.getPercent()}%</span></h5>
                            <div class="progress">
                                <div class="progress-bar bg-color-base" role="progressbar" data-width="${object.getPercent()}"></div>
                            </div>
                        </div>
						</c:forEach>
                        <!-- End Progress Box -->
                    </div>
                </div>
                <!--// end row -->
            </div>
        </div>
        <!-- End About -->

        <!-- Experience -->
        <div id="experience">
            <div class="bg-color-sky-light" data-auto-height="true">
                <div class="container content-lg">
                    <div class="row">
                        <div class="col-sm-3 sm-margin-b-30">
                            <div class="text-right sm-text-left">
                                <h2 class="margin-b-0">经验</h2>
                                <p>知识掌握.</p>
                            </div>
                        </div>
                        <div class="col-sm-8 col-sm-offset-1">
                            <div class="row row-space-2 margin-b-4">
                             <c:forEach items="${experList}" var="object"
								varStatus="status">
                                <div class="col-md-4 md-margin-b-4">
                                    <div class="service" data-height="height">
                                        <div class="service-element">
                                            <i class="service-icon icon-chemistry"></i>
                                        </div>
                                        <div class="service-info">
                                            <h3>${object.getNlmc()}</h3>
                                            <p class="margin-b-5">${object.getNlzw()}</p>
                                        </div>
                                        <!-- <a href="#" class="content-wrapper-link"></a>   -->  
                                    </div>
                                </div>
							</c:forEach>

                            </div>
                            <!--// end row -->
                        </div>
                    </div>
                    <!--// end row -->
                </div>
            </div>
        </div>
        <!-- End Experience -->
        <!-- Work -->
        <div id="work">
            <div class="container content-lg">
                <div class="row">
                    <div class="col-sm-3 sm-margin-b-30">
                        <div class="text-right sm-text-left">
                            <h2 class="margin-b-0">工作</h2>
                            <p>项目.</p>
                        </div>
                    </div>
                    <div class="col-sm-8 col-sm-offset-1">
                        <!-- Masonry Grid -->
                        <div class="masonry-grid row row-space-2">
                            <div class="masonry-grid-sizer col-xs-6 col-sm-6 col-md-1"></div>
                            
                            
                            
                            
                            
                            
                            
                            <c:forEach items="${xmList}" var="object"
								varStatus="status">
                            <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 margin-b-4">
                                <!-- Work -->
                                <div class="work work-popup-trigger">
                                    <div class="work-overlay">
                                        <img class="full-width img-responsive" src="/xuxiaonan/uploadImages/${object.getXmms().getPicid()}" alt="Portfolio Image">
                                    </div>
                                    <div class="work-popup-overlay">
                                        <div class="work-popup-content">
                                            <a href="javascript:void(0);" class="work-popup-close">隐藏</a>
                                            <div class="margin-b-30">
                                                <h3 class="margin-b-5">${object.getXmmc()}</h3>
                                                <span>Clean &amp; ### Design</span>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                                    <div class="margin-t-10 sm-margin-t-0">
                                                        <p>${object.getXmms().getXmnr()}</p>
                                                        <ul class="list-inline work-popup-tag">
                                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" >${object.getXmms().getXmlx()}</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="margin-t-10 sm-margin-t-0"> 
                                                     <c:forEach items="${xmcyList}" var="objects"
															varStatus="status">
														<c:choose>
															<c:when test="${object.getXmms().getXmid()==objects.getCyid()}">
                                                        <p class="margin-b-5"><strong>${objects.getCyzw()}:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${objects.getCymc()}</p>
                                                        	</c:when>
                                                        </c:choose>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Work -->
                            </div>
                            </c:forEach>
                            
                            
                            
                            
                            
                            
                           <!--  <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 margin-b-4">
                                Work
                                <div class="work work-popup-trigger">
                                    <div class="work-overlay">
                                        <img class="full-width img-responsive" src="../pageResources/imgs/397x400/01.jpg" alt="Portfolio Image">
                                    </div>
                                    <div class="work-popup-overlay">
                                        <div class="work-popup-content">
                                            <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                            <div class="margin-b-30">
                                                <h3 class="margin-b-5">Art Of Coding</h3>
                                                <span>Clean &amp; Minimalistic Design</span>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                                    <div class="margin-t-10 sm-margin-t-0">
                                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                                                        <ul class="list-inline work-popup-tag">
                                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Design,</a></li>
                                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Coding,</a></li>
                                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Portfolio</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="margin-t-10 sm-margin-t-0">
                                                        <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                        <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                        <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                        <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                End Work
                            </div>
                            <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 md-margin-b-4">
                                Work
                                <div class="work work-popup-trigger">
                                    <div class="work-overlay">
                                        <img class="full-width img-responsive" src="../pageResources/imgs/397x300/01.jpg" alt="Portfolio Image">
                                    </div>
                                    <div class="work-popup-overlay">
                                        <div class="work-popup-content">
                                            <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                            <div class="margin-b-30">
                                                <h3 class="margin-b-5">Art Of Coding</h3>
                                                <span>Clean &amp; Minimalistic Design</span>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                                    <div class="margin-t-10 sm-margin-t-0">
                                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                                                        <ul class="list-inline work-popup-tag">
                                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Design,</a></li>
                                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Coding,</a></li>
                                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Portfolio</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="margin-t-10 sm-margin-t-0">
                                                        <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                        <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                        <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                        <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                End Work
                            </div>
                            <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4 md-margin-b-4">
                                Work
                                <div class="work work-popup-trigger">
                                    <div class="work-overlay">
                                        <img class="full-width img-responsive" src="../pageResources/imgs/397x300/02.jpg" alt="Portfolio Image">
                                    </div>
                                    <div class="work-popup-overlay">
                                        <div class="work-popup-content">
                                            <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                            <div class="margin-b-30">
                                                <h3 class="margin-b-5">Art Of Coding</h3>
                                                <span>Clean &amp; Minimalistic Design</span>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                                    <div class="margin-t-10 sm-margin-t-0">
                                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                                                        <ul class="list-inline work-popup-tag">
                                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Design,</a></li>
                                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Coding,</a></li>
                                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Portfolio</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="margin-t-10 sm-margin-t-0">
                                                        <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                        <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                        <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                        <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                End Work
                            </div>
                            <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-4">
                                Work
                                <div class="work work-popup-trigger">
                                    <div class="work-overlay">
                                        <img class="full-width img-responsive" src="../pageResources/imgs/397x300/03.jpg" alt="Portfolio Image">
                                    </div>
                                    <div class="work-popup-overlay">
                                        <div class="work-popup-content">
                                            <a href="javascript:void(0);" class="work-popup-close">Hide</a>
                                            <div class="margin-b-30">
                                                <h3 class="margin-b-5">Art Of Coding</h3>
                                                <span>Clean &amp; Minimalistic Design</span>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-8 work-popup-content-divider sm-margin-b-20">
                                                    <div class="margin-t-10 sm-margin-t-0">
                                                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p>
                                                        <ul class="list-inline work-popup-tag">
                                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Design,</a></li>
                                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Coding,</a></li>
                                                            <li class="work-popup-tag-item"><a class="work-popup-tag-link" href="#">Portfolio</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="margin-t-10 sm-margin-t-0">
                                                        <p class="margin-b-5"><strong>Project Leader:</strong> John Doe</p>
                                                        <p class="margin-b-5"><strong>Designer:</strong> Alisa Keys</p>
                                                        <p class="margin-b-5"><strong>Developer:</strong> Mark Doe</p>
                                                        <p class="margin-b-5"><strong>Customer:</strong> Keenthemes</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                End Work
                            </div> -->
                        </div>
                        <!-- End Masonry Grid -->
                    </div>
                </div>
                <!--// end row -->
            </div>
        </div>
        <!-- End Work -->

        <!-- End Contact -->
        <!--========== END PAGE LAYOUT ==========-->

        <!--========== FOOTER ==========-->
        <!--========== END FOOTER ==========-->

        <!-- Back To Top -->
        <a href="javascript:void(0);" class="js-back-to-top back-to-top">Top</a>

        <!-- JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
        <!-- CORE PLUGINS -->
        <script src="../pageResources/vendor/jquery.min.js" type="text/javascript"></script>
        <script src="../pageResources/vendor/jquery-migrate.min.js" type="text/javascript"></script>
        <script src="../pageResources/vendor/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

        <!-- PAGE LEVEL PLUGINS -->
        <script src="../pageResources/vendor/jquery.easing.js" type="text/javascript"></script>
        <script src="../pageResources/vendor/jquery.back-to-top.js" type="text/javascript"></script>
        <script src="../pageResources/vendor/jquery.smooth-scroll.js" type="text/javascript"></script>
        <script src="../pageResources/vendor/jquery.wow.min.js" type="text/javascript"></script>
        <script src="../pageResources/vendor/jquery.parallax.min.js" type="text/javascript"></script>
        <script src="../pageResources/vendor/jquery.appear.js" type="text/javascript"></script>
        <script src="../pageResources/vendor/masonry/jquery.masonry.pkgd.min.js" type="text/javascript"></script>
        <script src="../pageResources/vendor/masonry/imagesloaded.pkgd.min.js" type="text/javascript"></script>

        <!-- PAGE LEVEL SCRIPTS -->
        <script src="../pageResources/js/layout.min.js" type="text/javascript"></script>
        <script src="../pageResources/js/components/progress-bar.min.js" type="text/javascript"></script>
        <script src="../pageResources/js/components/masonry.min.js" type="text/javascript"></script>
        <script src="../pageResources/js/components/wow.min.js" type="text/javascript"></script>

    </body>
    <!-- END BODY -->
</html>