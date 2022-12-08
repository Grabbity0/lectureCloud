<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:import url="/WEB-INF/views/default.jsp" var="defaultcontent"></c:import>
<c:import url="/WEB-INF/views/addMember.jsp" var="signupcontent"></c:import>
<c:import url="/WEB-INF/views/login.jsp" var="logincontent"></c:import>
<c:import url="/WEB-INF/views/SignupAfter.jsp" var="AfterSignupcontent"></c:import>
<c:import url="/WEB-INF/views/Search.jsp" var="Searchcontent"></c:import>
<c:import url="/WEB-INF/views/video.jsp" var="Videocontent"></c:import>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코딩을 배우다 LectureWeb</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />   
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src = "http://home.yspersonal.com/JS/jquery-1.12.3.js" type="text/javascript"></script>
<script src = "http://home.yspersonal.com/JS/jquery-3.6.1.min.js" type="text/javascript"></script>
<script src = "${pageContext.request.contextPath}/JS/script.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/JS/script2.js" type="text/javascript"></script> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/BS/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/BS/bootstrap.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<style>
@import url('https://fonts.googleapis.com/css2?family=Hahmlet:wght@500&display=swap');
li, ul{
    list-style: none; 
    box-sizing:border-box;
    margin:0;
    padding:0; 
}

/*
.menu-v2{
	line-height:2;
	border:1px solid #222;
	position:relative;
}
.menu-v2 .submenu{
	position:absolute;
	width:160px;
	left:150px;
	border:1px solid #222;
	background-color: #222;
	color:white
	top:-1px;
	display:none;
}
.menu-v2:hover{
	background-color:#222;
	color:white;
}
.menu-v2 .submenu>li:hover{
	background-color:white;
	color:#222;
}
*/

.footer
{
  text-align: center;
  background-color: lightyellow;
  margin: 50px;
  padding: 50px;
}
body{
  font-family: 'Hahmlet', serif;
}


input[id="menuicon"] {display:none;}
input[id="menuicon"] + label {display:block;margin:20px;width:40px;height:40px;position:relative;cursor:pointer;}
input[id="menuicon"] + label span {display:block;position:absolute;width: 100%;height:5px;border-radius:30px;background:#000;transition:all .35s;}
input[id="menuicon"] + label span:nth-child(1) {top:0;}
input[id="menuicon"] + label span:nth-child(2) {top:50%;transform:translateY(-50%);} /* 비슷하게 사용할 수 있는 style top:calc(50% - 2.5px); margin-top:-2.5px;*/
input[id="menuicon"] + label span:nth-child(3) {bottom:0;}
input[id="menuicon"]:checked + label {z-index:2;}
input[id="menuicon"]:checked + label span {background:#fff;}
input[id="menuicon"]:checked + label span:nth-child(1) {top:50%;transform:translateY(-50%) rotate(45deg);}
input[id="menuicon"]:checked + label span:nth-child(2) {opacity:0;}
input[id="menuicon"]:checked + label span:nth-child(3) {bottom:50%;transform:translateY(50%) rotate(-45deg);}
div[class="sidebar"] {
   width:300px;
   padding: 70px 80px 50px 40px; 
   height:100%;
   background:#222;
   position:fixed; 
   top:0;
   left:-300px;
   z-index:1;
   transition:all .35s;
 }
input[id="menuicon"]:checked + label + div {left:0;}
</style>
<script>
</script>
</head>
<body>
 <nav class="navbar navbar-expand-md bg-warning navbar-light">
  <input type="checkbox" id="menuicon">
   <label for="menuicon">
	   <span></span>
	   <span></span>
	   <span></span>
  </label>
  
  <div class="sidebar">
      <hr> 
      <ul>
	  <hr>
			<ul class="menu-v2">
			<li><h6 style="color: white;"><a href="${pageContext.request.contextPath}/lecture?action=video&name=beforebasiclecture">코딩하기 전 기초강의</a></h6>
	
			</li>
			</ul>
	  <hr>
			<ul class="menu-v2">
			<li><h6 style="color: white;"><a href="${pageContext.request.contextPath}/lecture?action=video&name=basiccoding">코딩 기초</a></h6>
			</li>
			</ul>
	  <hr>
			<ul class="menu-v2">
			<li><h6 style="color: white;"><a href="${pageContext.request.contextPath}/lecture?action=video&name=jclecture">Java, C#, C++ 강의</a></h6>
			</li>
			</ul>
	<hr>
	
	       	<ul class="menu-v2">
			<li><h6 style="color: white;"><a href="${pageContext.request.contextPath}/lecture?action=video&name=github">GitHub</a></h6>
			</li>
			</ul>
      </ul>
  </div>

  <a class="navbar-brand" href="${pageContext.request.contextPath}/lecture/main">코딩을 배우다</a>
  <div class="navbar-collapse">
  <ul class="navbar-nav">
  <li class="nav-item">
  <a class="nav-link" href="${pageContext.request.contextPath}/lecture/main">
  <span class="material-symbols-outlined">home
  </span>
  홈
  </a>
  </li>
  </ul>
 
  <ul class="navbar-nav ml-auto">
  <c:choose>
  <c:when test="${sessionScope.user_id eq null}">
    <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/lecture?action=login_form">로그인</a></li>
    <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/lecture?action=register_form">회원가입</a></li>
  </c:when>
  <c:otherwise>
 	<li class="nav-item"><a class="nav-link" >${sessionScope.user_id} 님 환영합니다. </a></li>
 	<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/lecture?action=logout">로그아웃</a></li>
  </c:otherwise>
  </c:choose>
   <form id="searchform" action="search" method="POST">
  <ul class="navbar-nav">
  <li class="nav-item">
   <input type="text" name="word" class="form-control" placeholder="검색" />
  </li>
  <li class="nav-item">
   <input type="submit" class="btn btn-primary" value="검색" />
  </li>
  </ul>
  </form>
  </ul>
  </div>
 </nav>
  
<c:choose>
 <c:when test="${param.page eq 'main'}">
   ${defaultcontent}
 </c:when>
 <c:when test="${param.page eq 'login'}">
  ${logincontent}
 </c:when>
 <c:when test="${param.page eq 'signup' }">
  ${signupcontent}
 </c:when>
  <c:when test="${param.page eq 'aftersignup' }">
  ${AfterSignupcontent}
 </c:when>
 <c:when test="${param.page eq 'search' }">
  ${Searchcontent}
 </c:when>
  <c:when test="${param.page eq 'video' }">
  ${Videocontent}
 </c:when>
 <c:otherwise>
  ${defaultcontent}
 </c:otherwise>
</c:choose>


 <hr>
 <div class="footer">
   <h6>Last Updated: December 3rd, 2022 </h6>
   <h6>This is not copyrighted because this is university homework. </h6>
 </div>
</body>
</html>