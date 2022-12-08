<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<br>
<div class="container" align="center">
	<div class="col-md-4 col-me-offset-4" style="border: solid; border-radius: 3%; border-color: #CCCCCC; line-height:170%">
	    <br><br><br>
	    <h1 class="form-signin-heading">코딩을 배우다</h1>
	    <br><br><br><br>
		<form class="form-signin" action="search.do" method="post" >
			<div class="form-group">
				<label class="sr-only">검색 키워드</label>
				<input name="id" class="form-control" placeholder="Search KeyWord" required autofocus>
			</div>
		    <div class="form-group">
		        <label class="sr-only">검색 조건</label>
		        <input type="radio" name="condition" class="custom-control" />동영상 
		        <input type="radio" name="condition" class="custom-control" />동영상 메뉴
		    </div>
			<br><br>
			<button class="btn btn-lg btn-dark btn-block" type="submit">검색</button>
			
			<button class="btn btn-lg btn-secondary btn-block" type="button" onclick="location.href='main.do'">메인 페이지로 돌아가기</button>
		</form>
		<br><br><br><br><br><br><br><br><br><br><br>          
	</div>
</div>