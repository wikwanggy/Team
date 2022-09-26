<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="..\..\resources\css\service\servicedetail.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="/resources/js/service/serviceAttach.js"></script>
<script type="text/javascript" src="/resources/js/service/tab.js"></script>
</head>
<body>
	<div id="container">
		<!-- 바디 전체를 container로 지정 -->
		<div id="hd">
			<!-- header 전체를 hd로 지정 -->
			<header>
				<div id="tm">
					<a href="/"><img alt="logo"src="../../resources/css/mainimg/logo.png" id="logoimg"></a>
					<ul id="topmenu">
						<li>
							<div id="toplist">
								<c:choose>
									<c:when test="${sessionScope.login==null}">
										<a href="/signup/signup" >회원가입</a>
										<a href="/Login/login">로그인</a>
									</c:when>
									<c:otherwise>
										<a href="/Login/logout">로그아웃</a>
									</c:otherwise>
								</c:choose>
							</div></li>
						<li><a href="/mypage/mypage">MyPage</a></li>
						<li><a href="#">고객센터</a></li>
					</ul>
				</div>
				<div>
					<nav>
						<ul id="menu">
							<li><a href="/">HOME</a></li>
							<li><a href="#">SHOP</a>
								<ul>
									<li><a href="#">간식</a></li>
									<li><a href="#">미용용품</a></li>
									<li><a href="#">장난감</a></li>
									<li><a href="#">하우스</a></li>
									<li><a href="#">패션</a></li>
									<li><a href="#">기타</a></li>
								</ul></li>
							<li><a href="/place/">PLACE</a>
								<ul>
									<li><a href="/place/grooming">미용</a></li>
									<li><a href="/place/clinic">동물병원</a></li>
									<li><a href="/place/hotel">호텔</a></li>
									<li><a href="/place/school">학교/유치원</a></li>
									<li><a href="/place/cafe">식당/카페</a></li>
								</ul></li>
							<li><a href="#">EVENT</a>
								<ul>
									<li><a href="#">진행 이벤트</a></li>
									<li><a href="#">종료 이벤트</a></li>
									<li><a href="#">이벤트 당첨</a></li>
								</ul></li>
							<li><a href="#">커뮤니티</a>
								<ul>
									<li><a href="#">게시판</a></li>
									<li><a href="#">리뷰</a></li>
								</ul></li>
						</ul>
					</nav>
				</div>
			</header>
		</div>
		<%--본문 넣을 자리 --%>
		<div id="service_main">
			<%--왼쪽 사이드바 --%>
				<jsp:include page="../include/serviceinclude.jsp"></jsp:include>
			<%-- 왼쪽 사이드바 끝 --%>
			<%-- 본문  div --%>
			<div id="service_main_center">
			<div id="service_main_page">
					<form name="fw" method="POST">
					<table>
						<tr>
							<td>
			<c:choose>
			     <c:when test="${detail.id==sessionScope.login.id || sessionScope.login.id=='admin'}">
								<a href="/service/modify?bno=${detail.bno }&bgno=${detail.bgno}" class="questions_detail_button" style="cursor: pointer">수정 하러 하기</a>
					</c:when>
			 </c:choose>
			<c:choose>
			     <c:when test="${detail.id==sessionScope.login.id || sessionScope.login.id=='admin'}">
			 		<input class="questions_detail_button" type="submit" value="삭제 하기" style="cursor: pointer"  onclick="alert('삭제되었습니다.')" formaction="/service/remove">
				 </c:when>
			 </c:choose>
							</td>
						</tr>
						<tr>
							<td class="service_sub_font">제목</td>
						</tr>
					
						<tr>
							<td><input class="service_sub_font" type="text" name="title" value="${detail.title }" readonly="readonly"></td>
							<td><input type="hidden" name="bgno" value="${detail.bgno}"></td>
							<td><input type="hidden" name="bno" value="${detail.bno}"></td>
							<td><input type="hidden" name="id" value="${detail.id}"></td>
							<td><input type="hidden" name="name" value="${detail.name}"></td>
						</tr>
						
						<tr>
							<td class="service_sub_font">내용</td>
						</tr>
						
						<tr>
							<td><textarea id="service_sub_content" class="service_sub_font" name="content" cols="50" rows="10"  readonly="readonly">${detail.content }</textarea></td>
						</tr>
						<tr>
							<td>첨부파일				
								<div id="filelistimage">
									<ul>
				
									</ul>
								</div>
							</td>
						</tr>
						
					</table>
					</form>
				</div>
			</div>
		</div>	
		<%--본문 넣을 자리 --%>
		
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
									src="../../resources/css/mainimg/facebook.PNG" class="img2"></a></li>
							<li><a href="#"><img
									src="../../resources/css/mainimg/insta.PNG" class="img2"></a></li>
							<li><a href="#"><img
									src="../../resources/css/mainimg/twitter.PNG" class="img2"></a></li>
						</ul>
					</div>
				</div>
				<div id="company">
					<p>제 3조 팀 프로젝드 참여자 : 현우 연희 민서 석현 광규</p>
				</div>
			</footer>
		</div>
	</div>
</body>
</html>