<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<div class="container-fluid" style="margin-top:10px"> <!-- container-fluid 꽉체우기 -->
  <div class="row">
   <div class="col-lg-2">
   </div>
   <div class="col-lg-10" style="padding: 30px" >
    <h1 style="text-align: center;" >추천 강의</h1>
    <hr>
    <h4>코딩하기 전 기초강의! </h4>
    <hr>
   <table style="border: none; border-collapse: collapse;">
     <tr>
     <td>1.컴퓨터의 역사</td>
     <td>2. 컴퓨터의 구조</td>
     <td>3. 프로그래밍의 역사</td>
     </tr>
     <tr>
     <td>
     <a href="${pageContext.request.contextPath}/lecture?action=video&name=computerhistory">
     <img src= "${pageContext.request.contextPath}/image/Computer_History.jpg"
     width="300" height="200">
     </a>
     </td>
     <td>
     <a href="${pageContext.request.contextPath}/lecture?action=video&name=computerenginnering">
     <img src= "${pageContext.request.contextPath}/image/Computer_Enginnering.jpg.png"
     width="300" height="200">
     </a>
     </td>
     <td>
     <a href="${pageContext.request.contextPath}/lecture?action=video&name=codinghistory">
      <img src= "${pageContext.request.contextPath}/image/Coding_History.png"
     width="300" height="200">
     </a>
     </td>
     </tr>
   </table>
   <hr>
    <h4>코딩 기초 </h4>
    <hr>
     <table  style="border: none; border-collapse: collapse;">
     <tr>
     <td>html, css, javascript (홈페이지 만들기)</td>
     <td>C언어 기초(작동원리))</td>
     <td>파이썬 기초</td>
     <td>스위프트 기초(스위프트 플레이그라운드)</td>
     </tr>
     <tr>
     <td>
     <a href="${pageContext.request.contextPath}/lecture?action=video&name=hcj">
    <img src= "${pageContext.request.contextPath}/image/HTML_CSS_Javascript.png"
     width="300" height="200">
     </a>
     </td>
     <td>
     <a href="${pageContext.request.contextPath}/lecture?action=video&name=clang">
      <img src= "${pageContext.request.contextPath}/image/CLang.png"
     width="300" height="200">
     </a>
     </td>
     <td>
     <a href="${pageContext.request.contextPath}/lecture?action=video&name=python">
     <img src= "${pageContext.request.contextPath}/image/Python.png"
     width="300" height="200">
     </a>
     </td>
     <td>
      <a href="${pageContext.request.contextPath}/lecture?action=video&name=swift">
     <img src= "${pageContext.request.contextPath}/image/Swift.png"
     width="300" height="200">
     </a>
     </td>
     </tr>
   </table>
   <hr>
     <h4>Java, C#, C++ 강의</h4>
    <hr>
     <table  style="border: none; border-collapse: collapse;">
     <tr>
     <td>Java 강의</td>
     <td>C# 강의</td>
     <td>C++ 강의</td>
     <td>파이썬 강의</td>
     </tr>
     <tr>
     <td>
     <a href="${pageContext.request.contextPath}/lecture?action=video&name=java">
     <img src= "${pageContext.request.contextPath}/image/JavaSwing.png"
     width="300" height="200"></a>
     </td>
     <td>
     <a href="${pageContext.request.contextPath}/lecture?action=video&name=sharp">
      <img src= "${pageContext.request.contextPath}/image/sharp.png"
     width="300" height="200">
     </a>
     </td>
     <td>
     <a href="${pageContext.request.contextPath}/lecture?action=video&name=sharp">
     <img src= "${pageContext.request.contextPath}/image/sharp.png"
     width="300" height="200">
     </a>
     </td>
      <td>
      <a href="${pageContext.request.contextPath}/lecture?action=video&name=python">
      <img src= "${pageContext.request.contextPath}/image/youtubepython.png"
     width="300" height="200">
     </a>
     </td>
     </tr>
   </table>
   <hr>
    <h4>GitHub 연동</h4>
    <hr>
     <table  style="border: none; border-collapse: collapse;">
     <tr>
     <td>Git와 GitHub에 대한 소개</td>
     <td>Visual Studio와 GitHub 연동하기</td>
     <td>Eclipse와 GitHub 연동하기</td>
     <td>PyCharm와 GitHub 연동하기</td>
     </tr>
     <tr>
     <td>
    <a href="${pageContext.request.contextPath}/lecture?action=video&name=githubinduction">
    <img src= "${pageContext.request.contextPath}/image/GITHUB.PNG"
     width="300" height="200">
    </a>
     </td>
     <td>
     <a href="${pageContext.request.contextPath}/lecture?action=video&name=githubvs">
      <img src= "${pageContext.request.contextPath}/image/vs_github.png"
     width="300" height="200">
     </a>
     </td>
     <td>
      <a href="${pageContext.request.contextPath}/lecture?action=video&name=githubeclipse">
      <img src= "${pageContext.request.contextPath}/image/eclipse_github.png"
     width="300" height="200">
     </a>
     </td>
     <td>
      <a href="${pageContext.request.contextPath}/lecture?action=video&name=githubpycharm">
     <img src= "${pageContext.request.contextPath}/image/pycharm_github.png"
     width="300" height="200">
     </a>
     </td>
     </tr>
   </table>
   <hr>
   </div>
  </div>
  </div>