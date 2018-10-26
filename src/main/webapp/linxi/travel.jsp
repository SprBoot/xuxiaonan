<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="description" content="">
		<meta name="author" content="">
		<link rel="icon" href="favicon.ico">
		<title>摄影与旅游</title>
		<!-- Bootstrap core CSS -->
		<script type="text/javascript" src="../pageResources/js/jquery-3.3.1.min.js"></script>
		<link href="../pageResources/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<!-- Custom styles for this template -->
		<link href="../pageResources/css/styletravel.css" rel="stylesheet">
	</head>
	<body id="page-top">
		<!-- Navigation -->
		<section id="portfolio">
			<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="section-title">
						<h2>我的生活</h2>
						<p>生活中的点滴以及美的发现</p>
					</div>
				</div>
			</div>
			<c:forEach items="${sh}" var="object"
							varStatus="status">
			<div class="inner split">
				<!-- start portfolio item -->
				<div class="col-md-6 col-0-gutter">
					<div class="ot-portfolio-item">
						<figure class="effect-bubba">
							<img src="/xuxiaonan/uploadImages/${object.getPicid()}" alt="img02" class="img-responsive" />
							<figcaption>
								<h2>${object.getMc()}</h2>
								<p>${object.getAuth()}</p>
								<a href="#" data-toggle="modal" data-target="#Modal-${object.getId()}">View more</a>
							</figcaption>
						</figure>
					</div>
				</div>
				<!-- end portfolio item -->
			</div>
			</c:forEach>
			<!-- <div class="row row-0-gutter">
				start portfolio item
				<div class="col-md-6 col-0-gutter">
					<div class="ot-portfolio-item">
						<figure class="effect-bubba">
							<img src="../pageResources/imgs/demo/portfolio-3.jpg" alt="img02" class="img-responsive" />
							<figcaption>
								<h2>Lamp & Velvet</h2>
								<p>Branding, Web Design</p>
								<a href="#" data-toggle="modal" data-target="#Modal-3">View more</a>
							</figcaption>
						</figure>
					</div>
				</div>
				end portfolio item
				start portfolio item
				<div class="col-md-6 col-0-gutter">
					<div class="ot-portfolio-item">
						<figure class="effect-bubba">
							<img src="../pageResources/imgs/demo/portfolio-4.jpg" alt="img02" class="img-responsive" />
							<figcaption>
								<h2>Smart Name</h2>
								<p>Branding, Design</p>
								<a href="#" data-toggle="modal" data-target="#Modal-4">View more</a>
							</figcaption>
						</figure>
					</div>
				</div>
				end portfolio item
			</div>
			<div class="row row-0-gutter">
				start portfolio item
				<div class="col-md-6 col-0-gutter">
					<div class="ot-portfolio-item">
						<figure class="effect-bubba">
							<img src="../pageResources/imgs/demo/portfolio-5.jpg" alt="img02" class="img-responsive" />
							<figcaption>
								<h2>Fast People</h2>
								<p>Branding, Web Design</p>
								<a href="#" data-toggle="modal" data-target="#Modal-5">View more</a>
							</figcaption>
						</figure>
					</div>
				</div>
				end portfolio item
				start portfolio item
				<div class="col-md-6 col-0-gutter">
					<div class="ot-portfolio-item">
						<figure class="effect-bubba">
							<img src="../pageResources/imgs/demo/portfolio-6.jpg" alt="img02" class="img-responsive" />
							<figcaption>
								<h2>Kites & Stars</h2>
								<p>Branding, Web Design</p>
								<a href="#" data-toggle="modal" data-target="#Modal-2">View more</a>
							</figcaption>
						</figure>
					</div>
				</div>
				end portfolio item
			</div> -->
			<div class="panel-body">
			</div>
			<div class="panel-body">
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-md-6"><span class="panel-note"></span></div>
					<div class="col-md-6 text-right"><a class="btn btn-primary" href ="${pageContext.request.contextPath}/travel/moreentrance">More</a></div>
				</div>
			</div>
			</div><!-- container -->
		</section>
		<!-- <section id="about" class="mz-module">
			<div class="container light-bg">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>ABOUT</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 text-center">
						<div class="mz-about-container">
							<p>A creative agency based on Candy Land, ready to boost your business with some beautifull templates. Lattes Agency is one of the best in town see more you will be amazed.</p>
						</div>
					</div>
					<div class="col-md-6">
						skill bar item
						<div class="skillbar-item">
							<div class="skillbar" data-percent="90%">
								<h3>Web design</h3>
								<div class="skillbar-bar">
									<div class="skillbar-percent" style="width: 90%;">
									</div>
								</div>
							</div>
						</div>
						skill bar item
						<div class="skillbar-item">
							<div class="skillbar" data-percent="80%">
								<h3>Development</h3>
								<div class="skillbar-bar">
									<div class="skillbar-percent" style="width: 80%;">
									</div>
								</div>
							</div>
						</div>
						skill bar item
						<div class="skillbar-item">
							<div class="skillbar" data-percent="85%">
								<h3>Photography</h3>
								<div class="skillbar-bar">
									<div class="skillbar-percent" style="width: 85%;">
									</div>
								</div>
							</div>
						</div>
						skill bar item
						<div class="skillbar-item">
							<div class="skillbar" data-percent="70%">
								<h3>Marketing</h3>
								<div class="skillbar-bar">
									<div class="skillbar-percent" style="width: 70%;">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row row-0-gutter">
					about module
					<div class="col-md-3 col-0-gutter mz-about-default text-center">
						<div class="mz-module-about">
							<i class="fa fa-briefcase ot-circle"></i>
							<h3>Web Development</h3>
						</div>
					</div>
					end about module
					about module
					<div class="col-md-3 col-0-gutter mz-about-dark text-center">
						<div class="mz-module-about">
							<i class="fa fa-photo ot-circle"></i>
							<h3>Visualisation</h3>
						</div>
					</div>
					end about module
					about module
					<div class="col-md-3 col-0-gutter mz-about-default text-center">
						<div class="mz-module-about">
							<i class="fa fa-camera-retro ot-circle"></i>
							<h3>Photography</h3>
						</div>
					</div>
					end about module
					about module
					<div class="col-md-3 col-0-gutter mz-about-dark text-center">
						<div class="mz-module-about">
							<i class="fa fa-cube ot-circle"></i>
							<h3>UI/UX Design</h3>
						</div>
					</div>
					end about module
				</div>
			</div>
			/.container
		</section> -->

		<section id="team">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>我的游戏</h2>
						</div>
					</div>
				</div>
				<div class="row">
				<c:forEach items="${yx}" var="object"
							varStatus="status">
					<!-- team member item -->
					<div class="col-md-4">
						<div class="team-item">
							<div class="team-image">
								<a href ="${pageContext.request.contextPath}/travel/yxxsentrance?yxid=${object.getId()}"><img src="/xuxiaonan/uploadImages/${object.getPicid()}" class="img-responsive" alt="author"></a>
							</div>
							<div class="team-text">
								<h3>${object.getYxmc()}</h3>
								<div class="team-position">${object.getYxkfs()}</div>
								<p>${object.getGrgs()}</p>
							</div>
						</div>
					</div>
					<!-- end team member item -->
					</c:forEach>
					<!-- team member item -->
					<!-- <div class="col-md-4">
						<div class="team-item">
							<div class="team-image">
								<img src="../pageResources/imgs/demo/author-6.jpg" class="img-responsive" alt="author">
							</div>
							<div class="team-text">
								<h3>LINA GOSATA</h3>
								<div class="team-position">Photography</div>
								<p>Worsa dona namet, cons uectetur dipiscing adon elit. Aliquam vitae fringilla unda mir.</p>
							</div>
						</div>
					</div> -->
					<!-- end team member item -->
					<!-- team member item -->
					<!-- <div class="col-md-4">
						<div class="team-item">
							<div class="team-image">
								<img src="../pageResources/imgs/demo/author-4.jpg" class="img-responsive" alt="author">
							</div>
							<div class="team-text">
								<h3>John BEKERS</h3>
								<div class="team-position">Marketing</div>
								<p>Dolor sit don namet, cons uectetur beriscing adon elit. Aliquam vitae fringilla unda.</p>
							</div>
						</div>
					</div> -->
					<!-- end team member item -->
				</div>
			<div class="panel-body">
			</div>
			<div class="panel-body">
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-md-6"><span class="panel-note"></span></div>
					<div class="col-md-6 text-right"><a class="btn btn-primary" href ="${pageContext.request.contextPath}/travel/moreyxentrance">More</a></div>
				</div>
			</div>
			</div>
		</section>

		<!-- <section id="contact">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 text-center">
						<div class="section-title">
							<h2>Contact Us</h2>
							<p>If you have some Questions or need Help! Please Contact Us!<br>We make Cool and Clean Design for your Business</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 text-center">
						<form name="sentMessage" id="contactForm" novalidate="">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<input type="text" class="form-control" placeholder="Your Name *" id="name" required="" data-validation-required-message="Please enter your name.">
										<p class="help-block text-danger"></p>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<input type="email" class="form-control" placeholder="Your Email *" id="email" required="" data-validation-required-message="Please enter your email address.">
										<p class="help-block text-danger"></p>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group">
										<textarea class="form-control" placeholder="Your Message *" id="message" required="" data-validation-required-message="Please enter a message."></textarea>
										<p class="help-block text-danger"></p>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="row">
								<div class="col-lg-12 text-center">
									<div id="success"></div>
									<button type="submit" class="btn">Send Message</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section> -->
		<p id="back-top">
			<a href="#top"><i class="fa fa-angle-up"></i></a>
		</p>
		<c:forEach items="${sh}" var="object"
							varStatus="status">
		<!-- Modal for portfolio item 1 -->
		<div class="modal fade" id="Modal-${object.getId()}" tabindex="-1" role="dialog" aria-labelledby="Modal-label-1">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-1">${object.getMc()}</h4>
					</div>
					<div class="modal-body">
						<img src="/xuxiaonan/uploadImages/${object.getPicid()}" alt="img01" class="img-responsive" />
						<div class="modal-works"><span>${object.getAuth()}</span></div>
						<p>${object.getJs()}</p>
					</div>
					<div class="modal-footer">
						<a class ="btn btn-default" href ="${pageContext.request.contextPath}/travel/shxsentrance?shid=${object.getId()}">More</a>
					</div>
				</div>
			</div>
		</div>
		</c:forEach>
		<!-- Modal for portfolio item 2 -->
		<!-- <div class="modal fade" id="Modal-2" tabindex="-1" role="dialog" aria-labelledby="Modal-label-2">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-2">Startup Framework</h4>
					</div>
					<div class="modal-body">
						<img src="../pageResources/imgs/demo/portfolio-2.jpg" alt="img01" class="img-responsive" />
						<div class="modal-works"><span>Branding</span><span>Web Design</span></div>
						<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div> -->

		<!-- Modal for portfolio item 3 -->
		<!-- <div class="modal fade" id="Modal-3" tabindex="-1" role="dialog" aria-labelledby="Modal-label-3">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-3">Lamp & Velvet</h4>
					</div>
					<div class="modal-body">
						<img src="../pageResources/imgs/demo/portfolio-3.jpg" alt="img01" class="img-responsive" />
						<div class="modal-works"><span>Branding</span><span>Web Design</span></div>
						<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div> -->

		<!-- Modal for portfolio item 4 -->
		<!-- <div class="modal fade" id="Modal-4" tabindex="-1" role="dialog" aria-labelledby="Modal-label-4">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-4">Smart Name</h4>
					</div>
					<div class="modal-body">
						<img src="../pageResources/imgs/demo/portfolio-4.jpg" alt="img01" class="img-responsive" />
						<div class="modal-works"><span>Branding</span><span>Web Design</span></div>
						<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div> -->

		<!-- Modal for portfolio item 5 -->
		<!-- <div class="modal fade" id="Modal-5" tabindex="-1" role="dialog" aria-labelledby="Modal-label-5">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="Modal-label-5">Fast People</h4>
					</div>
					<div class="modal-body">
						<img src="../pageResources/imgs/demo/portfolio-5.jpg" alt="img01" class="img-responsive" />
						<div class="modal-works"><span>Branding</span><span>Web Design</span></div>
						<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div> -->
		<script src="../pageResources/bootstrap/js/bootstrap.min.js"></script>
		<script src="../pageResources/js/SmoothScroll.js"></script>
		<script src="../pageResources/js/theme-scripts.js"></script>
		<!-- Bootstrap core JavaScript
			================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
	</body>
</html>