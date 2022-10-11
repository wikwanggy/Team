<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>
<html>
<head>
<meta charset="UTF-8">
<title>shop</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/shop/shop.js"></script>
<link rel="stylesheet" href="/resources/css/shop/shop.css">
<link rel="stylesheet" href="/resources/css/shop/header.css">
</head>
<body>
	<%--상단 시작 --%>
	<jsp:include page="../include/header.jsp"></jsp:include>
	<%--상단 끝 --%>
	<%--본문 넣을 자리 --%>
	<!-- header 끝 -->

	<!-- main 전체 -->
	<div id="main">
		<!-- center 시작 -->
		<div id="cn">
			<input type="text" id="category" value="${shop[0].s_type}">
			<ul id="cnm" name="type" >
				<li><a href="#" id="new">최신 순</a></li>
				<li><a href="#" id="hi">높은 가격순</a></li>
				<li><a href="#" id="row">낮은 가격순</a></li>
			</ul>
			<br> <br> <br>
			<!-- shop 메인 탭 -->
			<div class="Goods">
				<ul class="Goodss">
					<!-- 상품 리스트 for문 -->
					<c:forEach items="${shop}" var="shoplist">
						<li>
							<div>
								<input type="text" value="${shoplist.bno}" hidden="">
							</div>
							<div>
								<a href="/shoppage/Detail?bno=${shoplist.bno}"> <img
									class="img" src="/display?filename=${shoplist.filem}"></a>
							</div>
							<div>
								상품명<span class="font">${shoplist.w_name}</span>
							</div>
							<div>
								가격<span class="font"><fmt:formatNumber
										value="${shoplist.w_price}" pattern="#,###" /></span>
							</div>
						</li>
					</c:forEach>
					<!-- 상품 리스트 for문 종료 -->
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
	<br>
	<!-- main 끝 -->
	<!-- bottom 시작 -->
	<%--본문 넣을 자리 --%>
	<%--하단 시작 --%>
	<jsp:include page="../include/footer.jsp"></jsp:include>
	<%--하단 끝 --%>
</body>
</html>