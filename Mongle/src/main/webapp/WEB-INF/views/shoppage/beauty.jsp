<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="UTF-8">
<title>shop</title>
<link rel="stylesheet" href="/resources/css/shop/shop.css">
</head>
<body>
	<div id="container">
		<!-- header 시작 -->
		<div id="hd">
			<header>
				<div id="tm">
					<a href="/"><img alt="logo"src="../resources/css/mainimg/logo.png" id="logoimg"></a>
					<ul id="topmenu">
						<li>
							<div id="toplist">
								<c:choose>
									<c:when test="${sessionScope.login==null}">
										<a href="/Signup/Signup" >회원가입</a>
										<a href="/Login/login">로그인</a>
									</c:when>
									<c:when test="${sessionScope.login.id=='admin'}">
										<a href="/Admin/Memberlist" >관리자메뉴</a>
										<a href="/Login/logout">로그아웃</a>
									</c:when>
									<c:otherwise >
										<a href="/mypage/mypage?id=${sessionScope.login.id}">${sessionScope.login.id}님</a>
										<a href="/Login/logout">로그아웃</a>
									</c:otherwise>
								</c:choose>
							</div></li>
						<li><a href="/service/servicemain">고객센터</a></li>
					</ul>
				</div>
				<div>
					<nav>
						<ul id="menu">						
							<li><a href="/">HOME</a></li>
							<li><a href="/shoppage/shop">SHOP</a>
								<ul>
									<li><a href="/shoppage/Snack">간식</a></li>
									<li><a href="/shoppage/beauty">미용용품</a></li>
									<li><a href="/shoppage/toy">장난감</a></li>
									<li><a href="/shoppage/House">하우스</a></li>
									<li><a href="/shoppage/fashion">패션</a></li>
									<li><a href="/shoppage/etc">기타</a></li>
								</ul></li>
							<li><a href="/place/">PLACE</a>
								<ul>
									<li><a href="/place/grooming">미용</a></li>
									<li><a href="/place/clinic">동물병원</a></li>
									<li><a href="/place/hotel">호텔</a></li>
									<li><a href="/place/school">학교/유치원</a></li>
									<li><a href="/place/cafe">식당/카페</a></li>
								</ul></li>
							<li><a href="/event/eventmain">EVENT</a>
								<ul>
									<li><a href="#">진행 이벤트</a></li>
									<li><a href="#">종료 이벤트</a></li>
									<li><a href="#">이벤트 당첨</a></li>
								</ul></li>
							<li><a href="/event/eventmain">EVENT</a>
								<ul>
									<li><a href="/community/list">게시판</a></li>
									<li><a href="/community/review">리뷰</a></li>
								</ul></li>
						</ul>
					</nav>
				</div>
			</header>
		</div>
		<!-- header 끝 -->

		<!-- main 전체 -->
		<div id="main">			
			<!-- center 시작 -->
			<div id="cn">				
				<ul id="cnm">
					<li><a href="#">인기도순</a></li>
					<li><a href="#">누적판매순</a></li>
					<li><a href="#">낮은가격순</a></li>
					<li><a href="#">리뷰순</a></li>
					<li><a href="#">평점높은순</a></li>
				</ul>
				<br> <br> <br>
				<div class="Goods">
					<ul class="Goodss">
						<li>
							<div class="img_box">
								<a href="/shoppage/Detail"><img class="img"
									src="/resources/image/beauty.jpg"></a>
							</div>
							<div>상품명</div>
							<div>가격</div> <span>리뷰</span> <span>평점</span>
						</li>
					</ul>
				</div>
			</div>
			<!-- center 끝 -->
			<!-- right 시작 -->
			<div id="rs">
				<ul id="eventbn">
					<li><a href="#"><img alt="이벤트 배너 1"
							src="/resources/css/mainimg/EVT1.PNG" class="event" id="ev1"></a></li>
					<li><a href="#"><img alt="이벤트 배너 1"
							src="/resources/css/mainimg/EVN2.PNG" class="event" id="ev2"></a></li>
					<li><a href="#"><img alt="이벤트 배너 1"
							src="/resources/css/mainimg/EVEN3.PNG" class="event" id="ev3"></a></li>
				</ul>
			</div>
			<!-- right 끝-->
		</div>
		<!-- main 끝 -->
		<!-- bottom 시작 -->
		<div>
			<footer>
				<div id="bottomMenu">
					<ul>
						<li><a href="#">회사 소개</a></li>
						<li><a href="#">개인정보처리방침</a></li>
						<li><a href="#">이용안내</a></li>
						<li><a href="#">고객센터</a></li>
					</ul>
					<div id="sns">
						<ul>
							<li><a href="#"><img
									src="/resources/css/mainimg/FACENBOOK.PNG" class="img2"></a></li>
							<li><a href="#"><img
									src="/resources/css/mainimg/INSTA.PNG" class="img2"></a></li>
							<li><a href="#"><img
									src="/resources/css/mainimg/TWITTER.PNG" class="img2"></a></li>
						</ul>
					</div>
				</div>
				<div id="company">
					<p>제 3조 팀 프로젝드 참여자 : 현우 연희 민서 석현 광규</p>
				</div>
			</footer>
		</div>
		<!-- bottom 끝 -->
	</div>
</body>
</html>