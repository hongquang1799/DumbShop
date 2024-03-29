<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
<script src="js/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container">

		<div class="register">
			<form>
				<div class="  register-top-grid"></div>

			</form>
			<div class="clearfix"></div>
			<div class="register-but">
				<form action="register.html">

					<div class="  register-top-grid">
						<h3>PERSONAL INFORMATION</h3>
						<div class="mation">
						
							<span>Name<label>*</label></span> 
							<input type="text" name="name"> 
							
							<span>Email Address<label>*</label></span>
							<input type="text" name="email">
							
						</div>
					</div>


				<div class="  register-top-grid">
					<h3>LOGIN INFORMATION</h3>
					<div class="mation">
					
						<span>Password<label>*</label></span> 
						<input type="text" name="password"> 
							
						<span>Confirm Password<label>*</label></span>
						<input type="text" name="password_cf">
						
					</div>
				</div>

					<input type="submit" value="submit">
					<div class="clearfix"></div>
				</form>
			</div>



		</div>
		<div class="sub-cate">
			<div class=" top-nav rsidebar span_1_of_left">
				<h3 class="cate">CATEGORIES</h3>
				<ul class="menu">
					<li class="item1"><a href="#">Curabitur sapien<img
							class="arrow-img" src="images/arrow1.png" alt="" />
					</a>
						<ul class="cute">
							<li class="subitem1"><a href="product.html">Cute Kittens
							</a></li>
							<li class="subitem2"><a href="product.html">Strange
									Stuff </a></li>
							<li class="subitem3"><a href="product.html">Automatic
									Fails </a></li>
						</ul></li>
					<li class="item2"><a href="#">Dignissim purus <img
							class="arrow-img " src="images/arrow1.png" alt="" /></a>
						<ul class="cute">
							<li class="subitem1"><a href="product.html">Cute Kittens
							</a></li>
							<li class="subitem2"><a href="product.html">Strange
									Stuff </a></li>
							<li class="subitem3"><a href="product.html">Automatic
									Fails </a></li>
						</ul></li>
					<li class="item3"><a href="#">Ultrices id du<img
							class="arrow-img img-arrow" src="images/arrow1.png" alt="" />
					</a>
						<ul class="cute">
							<li class="subitem1"><a href="product.html">Cute Kittens
							</a></li>
							<li class="subitem2"><a href="product.html">Strange
									Stuff </a></li>
							<li class="subitem3"><a href="product.html">Automatic
									Fails</a></li>
						</ul></li>
					<li class="item4"><a href="#">Cras iacaus rhone <img
							class="arrow-img img-left-arrow" src="images/arrow1.png" alt="" /></a>
						<ul class="cute">
							<li class="subitem1"><a href="product.html">Cute Kittens
							</a></li>
							<li class="subitem2"><a href="product.html">Strange
									Stuff </a></li>
							<li class="subitem3"><a href="product.html">Automatic
									Fails </a></li>
						</ul></li>
					<li>
						<ul class="kid-menu">
							<li><a href="product.html">Tempus pretium</a></li>
							<li><a href="product.html">Dignissim neque</a></li>
							<li><a href="product.html">Ornared id aliquet</a></li>
						</ul>
					</li>
					<ul class="kid-menu ">
						<li><a href="product.html">Commodo sit</a></li>
						<li><a href="product.html">Urna ac tortor sc</a></li>
						<li><a href="product.html">Ornared id aliquet</a></li>
						<li><a href="product.html">Urna ac tortor sc</a></li>
						<li><a href="product.html">Eget nisi laoreet</a></li>
						<li><a href="product.html">Faciisis ornare</a></li>
						<li class="menu-kid-left"><a href="contact.html">Contact
								us</a></li>
					</ul>

				</ul>
			</div>
			<!--initiate accordion-->
			<script type="text/javascript">
			$(function() {
			    var menu_ul = $('.menu > li > ul'),
			           menu_a  = $('.menu > li > a');
			    menu_ul.hide();
			    menu_a.click(function(e) {
			        e.preventDefault();
			        if(!$(this).hasClass('active')) {
			            menu_a.removeClass('active');
			            menu_ul.filter(':visible').slideUp('normal');
			            $(this).addClass('active').next().stop(true,true).slideDown('normal');
			        } else {
			            $(this).removeClass('active');
			            $(this).next().stop(true,true).slideUp('normal');
			        }
			    });
			
			});
		</script>
			<div class=" chain-grid menu-chain">
				<a href="single.html"><img class="img-responsive chain"
					src="images/wat.jpg" alt=" " /></a>
				<div class="grid-chain-bottom chain-watch">
					<span class="actual dolor-left-grid">300$</span> <span
						class="reducedfrom">500$</span>
					<h6>Lorem ipsum dolor</h6>
				</div>
			</div>
			<a class="view-all all-product" href="product.html">VIEW ALL
				PRODUCTS<span> </span>
			</a>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>