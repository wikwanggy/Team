<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/signin/signin.css">
<title>Insert title here</title>
</head>1
<body>
	<div class="signin">
		<form action="/Mongle/signin/signin" method="post" >
			<img src="../resources/css/signin/signinimg/logo.png">
			<h1>Please sign in</h1>
			<div class="idpw">
				<input type="text" class="input" id="id" placeholder="아이디를 입력해주세요." name="id">	
			</div>
			<div class="idpw">
				<input type="password" class="input" id="pw"placeholder="비밀번호를 입력해주세요." name="password"> 
			</div>
			<div id="sign">
				<span>로그인 정보 저장<input type="checkbox"></span>
			</div>
			<input class="btn" type="submit" value="Sign IN" ><br>
		</form>
		<form>
			<input class="btn" type="submit" value="Sign UP" formaction="/Mongle/signup/signup">
			<p>제작자 3조</p>
		</form>
	</div>
</body>
</html>