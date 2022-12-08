<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
   <h1 class="form-signin-heading" style="text-align: center;">코딩을 배우다</h1>
   <hr>
   <form action="${pageContext.request.contextPath}/lecture?action=register" method="post">
      <div class="form-group row">
         <label class="col-sm-2">아이디</label>
         <div class="col-sm-3">
            <input name="user_id" class="form-group" placeholder="ID" required>
         </div>
      </div>
      <div class="form-group row">
         <label class="col-sm-2">비밀번호</label>
         <div class="col-sm-3">
            <input type="password" name="user_pw" class="form-group" placeholder="PASSWORD" required>
         </div>
      </div>
      <div class="form-group row">
         <label class="col-sm-2">이름</label>
         <div class="col-sm-3">
            <input name="user_name" class="form-group" placeholder="NAME" required>
         </div>
      </div>
      <div class="form-group row">
         <label class="col-sm-2">이메일</label>
         <div class="col-sm-10">
            <input name="user_email" maxlength="50" required>@
            <select name="user_email_tail">
               <option value="naver.com">naver.com</option>
               <option value="daum.net">daum.net</option>
               <option value="gmail.com">gmail.com</option>
               <option value="nate.com">nate.com</option>
            </select>
         </div>
      </div>
      <div class="form-group row">
         <label class="col-sm-2">전화번호</label>
         <div class="col-sm-5">
            <select name="user_phone1" required>
               <option value="010">010</option>
               <option value="011">011</option>
               <option value="016">016</option>
               <option value="017">017</option>
               <option value="019">019</option>
            </select>
            -<input name="user_phone2" maxlength="4" size="4"required>
            -<input name="user_phone3" maxlength="4" size="4"required>
         </div>
      </div>
      <div class="form-group row">
         <div class="col-sm-offset-2 col-sm-10">
            <input type="submit" class="btn btn-primary" value="등록">
            <input type="reset" class="btn btn-warning" value="취소">
         </div>
      </div>
   </form>
</div>