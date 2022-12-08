<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<br>
<div class="container" align="center">
	<div class="col-md-4 col-me-offset-4" style="border: solid; border-radius: 3%; border-color: #CCCCCC; line-height:170%">
	    <br><br><br>
	    <h1 class="form-signin-heading">코딩을 배우다</h1>
	    <br><br><br><br>
		<%
			String error = request.getParameter("error");
			if(error!=null){
				out.print("<div class='alert alert-danger'>");
				out.print("아이디와 비밀번호를 확인해주세요.");
				out.print("</div>");
			}
		%>
		<form class="form-signin" action="${pageContext.request.contextPath}/lecture?action=login" method="post" >
			<div class="form-group">
				<label class="sr-only">User  ID</label>
				<input name="user_id" class="form-control" placeholder="ID" required autofocus>
			</div>
			<div class="form-group">
				<label class="sr-only">Password</label>
				<input type="password" name="user_pw" class="form-control" placeholder="Password" required>
			</div>
			<br><br>
			<button class="btn btn-lg btn-dark btn-block" type="submit">로그인</button>
			
			<button class="btn btn-lg btn-secondary btn-block" type="button" onclick="${pageContext.request.contextPath}/lecture?action=register_form">회원가입</button>
		</form>
		<br><br><br><br><br><br><br><br><br><br><br>          
	</div>
</div>