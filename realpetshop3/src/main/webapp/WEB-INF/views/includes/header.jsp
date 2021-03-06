<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
   href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
   integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
   crossorigin="anonymous">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" />
<link
   href="https://fonts.googleapis.com/css?family=Jua|Roboto+Condensed|Do+Hyeon|Noto+Sans+KR"
   rel="stylesheet">
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
<script
   src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
   integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
   crossorigin="anonymous"></script>
   
<link rel="stylesheet" type="text/css" href="/resources/css/style.css" />
<title>Pet Shop</title>

</head>
<body>
	<!-- Header -->
	<header id="header">

		<!-- topbar -->
		<div id="topbar">
			<div class="row">

				<div class="col-sm-4">
					<div class="contactinfo">
						<i class="fa fa-phone" id="fa"></i><a href="#">+91 7568543012
							or +91 9571195353</a> <i class="fa fa-envelope" id="fa"></i><a
							href="#">nnmmaz95@gmail.com</a>
					</div>
				</div>
			<c:if test="${!empty userno}">
           <input type="hidden" name="userno" value="${userno}"/>
			</c:if>
			<c:if test="${empty userno}">
			</c:if>
     	<div class="col-sm-6"> 
          <div class="login"> 
			          <c:if test = "${empty vo5}">
			              <i class="fa fa-user" id="fa"></i>
			              <div class="lo">
			              	<a href="/login1">로그인</a>
			              </div>
			              <i class="fa fa-user-plus" id="fa"></i>
						<div class="jo">
							<a href="/SignUp">회원가입</a>
						</div>
						
			          </c:if>
	        		<c:if test = "${!empty vo5}">
	        			<i class="fa fa-user" id="fa"></i><div class="lo"><a href="/logout">로그아웃</a></div>
	        			<i class="fa fa-user" id="fa"></i><div class="lo"><a href="/EditPersonalInformation">개인정보수정</a></div>
	        			<i class="fa fa-user" id="fa"></i><div class="lo"><a href="/DeleteId">회원탈퇴</a></div>
	          		</c:if>
	          		
	          		<c:if test = "${vo5.num=='1'}">
	           		   <i class="fa fa-user" id="fa"></i><div class="lo"><a href="/adminChoicePage">관리자페이지</a></div>
	              	</c:if>
					<c:if test = "${vo5.num=='2'}">
	           		   <i class="fa fa-user" id="fa"></i><div class="lo"><a href="/seller_enrollment">판매자 요청 페이지</a></div>
	              	</c:if>
	              	
						<i class="fa fa-shopping-cart" id="fa"></i>
						<div class="ca">
							<a href="#" onclick="location.href='/cart/cart2?userno=${vo5.userno}'">장바구니</a>
						</div>
						<i class="fas fa-calendar-check" id="fa"></i>
						<div class="ev">
							<a href="/event">이벤트</a>
						</div>
						<i class="fas fa-bullhorn" id="fa"></i>
						<div class="no">
							<a href="noticeList">공지사항</a>
						</div>
					</div>
				</div>

				<!-- social media -->
				<div class="col-sm-2">
					<div class="social-icons pull-right">
						<div class="facebook" id="fa">
							<a href="#"><h3>
									<i class="fab fa-facebook"></i>
								</h3></a>
						</div>
						<div class="twitter" id="fa">
							<a href="#"><h3>
									<i class="fab fa-twitter-square"></i>
								</h3></a>
						</div>
						<div class="instagram" id="fa">
							<a href="#"><h3>
									<i class="fab fa-instagram"></i>
								</h3></a>
						</div>
						<!-- 
               <div class="google-plus" id="fa"><a href="#"><h3><i class="fab fa-google-plus-g"></i></h3></a></div>    -->
					</div>
				</div>
			</div>
		</div>


		<!-- title -->
		<!-- search -->
		<nav class="navbar">
			<div class="title">
				<a href="/"><img src="/resources/img/logo.png" /></a>
				<div class="search-box">
					<input class="search-txt" type="text" id="search"
						placeholder="Search . . ." /> <a href="#" class="search-btn">
						<i class="fa fa-search"></i>
					</a>
				</div>
			</div>
		</nav>



		<!-- navbar -->
		<div id="category">
			<div class="container">
				<div class="row">
					<div class="pet-category">
						<a href="/search?reus=A,B">사료/간식</a> <a href="/search?reus=C">장난감</a> <a href="/search?reus=D,E">건강식품/용품</a>
						<a href="/search?reus=F,G">하우스/이동장</a> <a href="/search?reus=H,I">의류/엑세서리</a>
					</div>
				</div>
			</div>
		</div>


		<!-- scroll up -->

		<div class="scroll">
			<a class="gotopbtn" href="#"> <i class="fa fa-angle-up"></i>
			</a>
		</div>

		<!-- sidebar -->

		<!-- <div id="sidebar">
   <ul>
      <li><a href="/">Home 
            <span><i class="fa fa-paw"></i></span>
      </a></li>
      
      <li><a href="/event">Event 
            <span><i class="fa fa-paw"></i></span>
         </a></li>
         
      <li><a href="/notice">Notice 
            <span><i class="fa fa-paw"></i></span>
         </a></li>
         
      <li><a href="/">Q&A 
            <span><i class="fa fa-paw"></i></span>
         </a></li>
   </ul>
</div> -->

	</header>