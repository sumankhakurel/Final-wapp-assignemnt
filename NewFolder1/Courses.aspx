<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="Assignment.assignment.Courses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course - Courses</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Course Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/courses_styles.css">
<link rel="stylesheet" type="text/css" href="styles/courses_responsive.css">
	<style>
		.main_nav {
  list-style: none;
  margin: 0;
  padding: 0;
  display: flex;
}

.main_nav_item {
  margin-right: 20px;
}

.btn-login, .btn-signup {
  padding: 10px 20px;
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

.btn-login:hover, .btn-signup:hover {
  background-color: #3e8e41;
}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="super_container">

	<!-- Header -->

	<header class="header d-flex flex-row">
		<div class="header_content d-flex flex-row align-items-center">
			<!-- Logo -->
			<div class="logo_container">
				<div class="logo">
					<img src="images/logo.png" alt="">
					<span>course</span>
				</div>
			</div>

			<!-- Main Navigation -->
			<nav class="main_nav_container">
				<div class="main_nav">
					<ul class="main_nav_list">
						<li class="main_nav_item"><a href="Home.aspx">home</a></li>
						<li class="main_nav_item"><a href="About.aspx">about us</a></li>
						<li class="main_nav_item"><a href="Courses.aspx">courses</a></li>
						
						<li class="main_nav_item"><a href="Contract.aspx">contact</a></li>
						<li class="main_nav_item"><a href="Login.aspx" class="btn-login">Login</a></li>
                        <li class="main_nav_item"><a href="Signup.aspx" class="btn-signup">Sign Up</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<div class="header_side d-flex flex-row justify-content-center align-items-center">
			<img src="images/phone-call.svg" alt="">
			<span>+43 4566 7788 2457</span>
		</div>

		<!-- Hamburger -->
		<div class="hamburger_container">
			<i class="fas fa-bars trans_200"></i>
		</div>

	</header>
	
	<!-- Menu -->
	<div class="menu_container menu_mm">

		<!-- Menu Close Button -->
		<div class="menu_close_container">
			<div class="menu_close"></div>
		</div>

		<!-- Menu Items -->
		<div class="menu_inner menu_mm">
			<div class="menu menu_mm">
				<ul class="menu_list menu_mm">
					<li class="main_nav_item"><a href="Home.aspx">home</a></li>
						
					<li class="main_nav_item"><a href="About.aspx">about us</a></li>
					<li class="main_nav_item"><a href="Courses.aspx">courses</a></li>
						
					<li class="main_nav_item"><a href="Contract.aspx">contact</a></li>
					<li class="main_nav_item"><a href="Login.aspx" class="btn-login">Login</a></li>
                    <li class="main_nav_item"><a href="Signup.aspx" class="btn-signup">Sign Up</a></li>
				</ul>

				<!-- Menu Social -->
				
				<div class="menu_social_container menu_mm">
					<ul class="menu_social menu_mm">
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-pinterest"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-instagram"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-twitter"></i></a></li>
					</ul>
				</div>

				<div class="menu_copyright menu_mm">Colorlib All rights reserved</div>
			</div>

		</div>

	</div>
	
	<!-- Home -->

	<div class="home">
		<div class="home_background_container prlx_parent">
			<div class="home_background prlx" style="background-image:url(images/courses_background.jpg)"></div>
		</div>
		<div class="home_content">
			<h1>Courses</h1>
		</div>
	</div>

	<!-- Popular -->


	<div class="popular page_section">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title text-center">
						<h1>Popular Courses</h1>
					</div>
				</div>
			</div>

			<div class="row course_boxes">
				
				<!-- Popular Course Item -->
				<div class="col-lg-4 course_box">
					<div class="card">
						<img class="card-img-top" src="images/course_1.jpg" alt="https://unsplash.com/@kellybrito">
						<div class="card-body text-center">
							<div class="card-title"><a href="courses.html">A complete guide to design</a></div>
							<div class="card-text">Adobe Guide, Layes, Smart Objects etc...</div>
						</div>
						<div class="price_box d-flex flex-row align-items-center">
							<div class="course_author_image">
                                <img src="images/Suman.png" />
							</div>
							<div class="course_author_name">Suman Khukurel, <span>Author</span></div>
							<div class="course_price d-flex flex-column align-items-center justify-content-center"><span>$35</span></div>
						</div>
					</div>
				</div>

				<!-- Popular Course Item -->
				<div class="col-lg-4 course_box">
					<div class="card">
						<img class="card-img-top" src="images/course_2.jpg" alt="https://unsplash.com/@cikstefan">
						<div class="card-body text-center">
							<div class="card-title"><a href="courses.html">Beginners guide to HTML</a></div>
							<div class="card-text">Adobe Guide, Layes, Smart Objects etc...</div>
						</div>
						<div class="price_box d-flex flex-row align-items-center">
							<div class="course_author_image">
                                <img src="images/run.png" />
							</div>
							<div class="course_author_name">Arun Neupane, <span>Author</span></div>
							<div class="course_price d-flex flex-column align-items-center justify-content-center"><span>$35</span></div>
						</div>
					</div>
				</div>

				<div class="col-lg-4 course_box">
					<div class="card">
						<img class="card-img-top" src="images/Course4.jpg" alt="https://unsplash.com/@cikstefan">
						<div class="card-body text-center">
							<div class="card-title"><a href="courses.html">Web Design and Development</a></div>
							<div class="card-text">Learning css, HTML and Javascript</div>
						</div>
						<div class="price_box d-flex flex-row align-items-center">
							<div class="course_author_image">
                                <img src="images/run.png" />
							</div>
							<div class="course_author_name">Arun Neupane, <span>Author</span></div>
							<div class="course_price d-flex flex-column align-items-center justify-content-center"><span>$35</span></div>
						</div>
					</div>
				</div>

				<div class="col-lg-4 course_box">
					<div class="card">
						<img class="card-img-top" src="images/Course6.jpg" alt="https://unsplash.com/@cikstefan">
						<div class="card-body text-center">
							<div class="card-title"><a href="courses.html">Introduction to Cloud Computings</a></div>
							<div class="card-text">The basic concept of cloud computing.</div>
						</div>
						<div class="price_box d-flex flex-row align-items-center">
							<div class="course_author_image">
                                <img src="images/Pranisha.JPG" />
     
							</div>
							<div class="course_author_name">Pranisha Uprety, <span>Author</span></div>
							<div class="course_price d-flex flex-column align-items-center justify-content-center"><span>$35</span></div>
						</div>
					</div>
				</div>

				<div class="col-lg-4 course_box">
					<div class="card">
						<img class="card-img-top" src="images/Course5.jpg" alt="https://unsplash.com/@cikstefan">
						<div class="card-body text-center">
							<div class="card-title"><a href="courses.html">Introduction to Back-End Developer</a></div>
							<div class="card-text">The use of database and ASP.NET concept.</div>
						</div>
						<div class="price_box d-flex flex-row align-items-center">
							<div class="course_author_image">
                                <img src="images/Suraj.JPG" />
     
							</div>
							<div class="course_author_name">Suraj Chaudhary, <span>Author</span></div>
							<div class="course_price d-flex flex-column align-items-center justify-content-center"><span>$35</span></div>
						</div>
					</div>
				</div>

				<!-- Popular Course Item -->
				<div class="col-lg-4 course_box">
					<div class="card">
						<img class="card-img-top" src="images/course_3.jpg" alt="https://unsplash.com/@dsmacinnes">
						<div class="card-body text-center">
							<div class="card-title"><a href="courses.html">Advanced Photoshop</a></div>
							<div class="card-text">Adobe Guide, Layes, Smart Objects etc...</div>
						</div>
						<div class="price_box d-flex flex-row align-items-center">
							<div class="course_author_image">
                                <img src="images/Riya.png" />
							</div>
							<div class="course_author_name">Riya Neupane, <span>Author</span></div>
							<div class="course_price d-flex flex-column align-items-center justify-content-center"><span>$29</span></div>
						</div>
					</div>
				</div>
			</div>
		</div>		
	</div>

	<!-- Register -->

	<!-- Footer -->

	<footer class="footer">
		<div class="container">
			
			

			<!-- Footer Content -->

			<div class="footer_content">
				<div class="row">

					<!-- Footer Column - About -->
					<div class="col-lg-3 footer_col">

						<!-- Logo -->
						<div class="logo_container">
							<div class="logo">
								<img src="images/logo.png" alt="">
								<span>GlamEdy</span>
							</div>
						</div>

						<p class="footer_about_text">Welcome to GlamEdy – your premier online education destination for all things beauty and makeup. We offer a comprehensive range of courses designed to help you learn, grow and succeed in the beauty industry.</p>

					</div>

					<!-- Footer Column - Menu -->

					<div class="col-lg-3 footer_col">
						<div class="footer_column_title">Menu</div>
						<div class="footer_column_content">
							<ul>
						<li class="main_nav_item"><a href="Home.aspx">home</a></li>
						<li class="main_nav_item"><a href="About.aspx">about us</a></li>
						<li class="main_nav_item"><a href="Courses.aspx">courses</a></li>
						
						<li class="main_nav_item"><a href="Contract.aspx">contact</a></li>
						
							</ul>
						</div>
					</div>

					<!-- Footer Column - Usefull Links -->

					<div class="col-lg-3 footer_col">
						<div class="footer_column_title">Usefull Links</div>
						<div class="footer_column_content">
							<ul>
								<li class="footer_list_item"><a href="#">Testimonials</a></li>
								<li class="footer_list_item"><a href="#">FAQ</a></li>
								<li class="footer_list_item"><a href="#">Community</a></li>
								<li class="footer_list_item"><a href="#">Learning Pictures</a></li>
								
							</ul>
						</div>
					</div>

					<!-- Footer Column - Contact -->

					<div class="col-lg-3 footer_col">
						<div class="footer_column_title">Contact</div>
						<div class="footer_column_content">
							<ul>
								<li class="footer_contact_item">
									<div class="footer_contact_icon">
										<img src="images/placeholder.svg" alt="https://www.flaticon.com/authors/lucy-g">
									</div>
									Kathmandu Nepal
								</li>
								<li class="footer_contact_item">
									<div class="footer_contact_icon">
										<img src="images/smartphone.svg" alt="https://www.flaticon.com/authors/lucy-g">
									</div>
									+977 9845998851
								</li>
								<li class="footer_contact_item">
									<div class="footer_contact_icon">
										<img src="images/envelope.svg" alt="https://www.flaticon.com/authors/lucy-g">
									</div>GlamEdy@gmail.com
								</li>
							</ul>
						</div>
					</div>

				</div>
			</div>

			<!-- Footer Copyright -->

			<div class="footer_bar d-flex flex-column flex-sm-row align-items-center">
				<div class="footer_copyright">
					<span><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">GlamEdy group</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></span>
				</div>
				<div class="footer_social ml-sm-auto">
					<ul class="menu_social">
						<li class="menu_social_item"><a href="#"><i class="fab fa-pinterest"></i></a></li>
						<li class="menu_social_item"><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
						<li class="menu_social_item"><a href="#"><i class="fab fa-instagram"></i></a></li>
						<li class="menu_social_item"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
						<li class="menu_social_item"><a href="#"><i class="fab fa-twitter"></i></a></li>
					</ul>
				</div>
			</div>

		</div>
	</footer>

</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/scrollTo/jquery.scrollTo.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="js/courses_custom.js"></script>

    </form>
</body>
</html>
