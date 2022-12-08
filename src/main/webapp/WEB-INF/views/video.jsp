	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<div class="container" style="margin-top:10px"> <!-- container-fluid 꽉체우기 -->
  <div class="row">
   <div class="col-lg-10" style="padding: 30px" >
    <c:choose>
     <c:when test="${param.name eq 'beforebasiclecture'}">
      <h1>코딩하기 전 기초강의! </h1>
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
     <tr>
   </table>
     </c:when>
    <c:when test="${param.name eq 'basiccoding'}">
     <h1>코딩 기초 </h1>
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
     <a href="${pageContext.request.contextPath}/lecture?action=video&name=pythonbasic">
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
    </c:when>
    <c:when test="${param.name eq 'jclecture' }">
     <h1>Java, C#, C++ 강의</h1>
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
    </c:when>
    <c:when test= "${param.name eq 'github'}" >
     <h1>GitHub 연동</h1>
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
     </tr>
   </table>
    </c:when>
    <c:when test="${param.name eq 'computerhistory'}">
    <div style="text-align: center;">
     <h1>컴퓨터의 역사</h1>'
     <hr> 
     <iframe width="720" height="480" src="https://www.youtube.com/embed/uba8ArZx2i4" 
     title="컴퓨터공학 기초 1강. 컴퓨터의역사 (팀노바 온라인 강의)" frameborder="0" 
     allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
     </iframe>
    </div>
    </c:when>
    <c:when test="${param.name eq 'computerenginnering'}">
    <div style="text-align: center;">
     <h1>컴퓨터의 구조</h1>
     <hr> 
     <iframe width="720" height="480" src="https://www.youtube.com/embed/bls_GjX-4U8" 
     title="[컴퓨터 공학 기초 강의] 0강. 『혼자 공부하는 컴퓨터 구조+운영체제』 책 소개" frameborder="0" 
     allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
     </iframe>
     </div>
    </c:when>
    <c:when test="${param.name eq 'codinghistory'}">
     <div style="text-align: center;">
     <h1>프로그래밍의 역사</h1>
     <hr> 
     <iframe width="720" height="480" src="https://www.youtube.com/embed/H8fUXEA3_7A" 
     title="💀 요즘 코딩이 개 쉬워진 이유…?? ㄷㄷ  / 💀 프로그래밍과 코딩의 역사 (feat.코드잇)" frameborder="0" 
     allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
     </iframe>
     </div>
    </c:when>
    <c:when test="${param.name eq 'hcj'}">
    <div style="text-align: center;">
     <h1>Html, CSS, Javascript 기초 (홈페이지 만들기)</h1>
     <hr> 
     <iframe width="720" height="480" src="https://www.youtube.com/embed/ffENjt7aEdc" 
     title="[고정댓글 필독] HTML, CSS, JavaScript가 뭔가요?" frameborder="0" 
     allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
     </iframe>
    </div>
    </c:when>
    <c:when test="${param.name eq 'clang'}">
    <div style="text-align: center;">
     <h1>C언어 기초 (작동원리)</h1>
     <hr> 
     <iframe width="720" height="480" src="https://www.youtube.com/embed/ueYLF0NIHkE" 
     title="[맨처음 C언어 기초 2시간 완성] C언어 공부를 맨처음 시작하는 분들을 위한 입문강의" frameborder="0" 
     allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
     </iframe>
    </div>
    </c:when>
    <c:when test="${param.name eq 'pythonbasic'}">
    <div style="text-align: center;">
     <h1>파이썬 기초</h1>
     <hr> 
     <iframe width="720" height="480" src="https://www.youtube.com/embed/kWiCuklohdY" 
     title="파이썬 코딩 무료 강의 (기본편) - 6시간 뒤면 여러분도 개발자가 될 수 있어요 [나도코딩]" frameborder="0" 
     allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
     </iframe>
    </div>
    </c:when>
     <c:when test="${param.name eq 'swift'}">
     <div style="text-align: center;">
     <h1>스위프트 기초</h1>
     <hr> 
     <iframe width="720" height="480" src="https://www.youtube.com/embed/0h7d7sLguKw"
      title="01. 시작하기 | 스위프트 플레이그라운드(Swift Playgrounds) 직접 해보기 | 스위프트 체험 | 맥북 아이폰 앱 만들기" frameborder="0" 
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
     </iframe>
    </div>
    </c:when>
     <c:when test="${param.name eq 'java'}">
     <div style="text-align: center;">
     <h1>Java 강의</h1>
     <hr> 
     <iframe width="720" height="480" src="https://www.youtube.com/embed/J44d_ynAqNY"
      title="자바스윙 - 간단한 계산기 만들기" frameborder="0" 
      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
     </iframe>
     </div>
    </c:when>
     <c:when test="${param.name eq 'sharp'}">
     <div style="text-align: center;">
     <h1>C# 강의</h1>
     <hr> 
     <iframe width="720" height="480" src="https://www.youtube.com/embed/A7TEpoMN5o8" 
     title="[C#] C# 강좌 - 디지털 시계 만들기! (C# 간단한 예제)  // 잔잔한 BGM" frameborder="0" 
     allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
     </iframe>
     </div>
    </c:when>
    <c:when test="${param.name eq 'python'}">
    <div style="text-align: center;">
     <h1>파이썬 강의</h1>
     <hr> 
     <iframe width="720" height="480" src="https://www.youtube.com/embed/TEATfq6hPIg" 
     title="Python GUI Project - Build A YouTube Video Downloader GUI App with Python" frameborder="0" 
     allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
     </iframe>
    </div>
    </c:when>
    <c:when test="${param.name eq 'githubinduction'}">
    <div style="text-align: center;">
     <h1>GitHub 소개</h1>
     <hr> 
     <iframe width="720" height="480" src="https://www.youtube.com/embed/PQsJR8ci3J0" 
     title="How to use GitHub | What is GitHub | Git and GitHub Tutorial | DevOps Training | Edureka" frameborder="0" 
     allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
     </iframe>
    </div>
    </c:when>
    <c:when test="${param.name eq 'githubvs'}">
    <div style="text-align: center;">
     <h1>Visual Studio와 GitHub 연동</h1>
     <hr> 
     <iframe width="720" height="480" src="https://www.youtube.com/embed/XbvdLjUM9ng" 
     title="How to upload C# Project to GitHub using Visual Studios 2019" frameborder="0" 
     allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
     </iframe>
    </div>
    </c:when>
    <c:when test="${param.name eq 'githubeclipse'}">
    <div style="text-align: center;">
     <h1>Eclipse와 GitHub 연동</h1>
     <hr> 
     <iframe width="720" height="480" src="https://www.youtube.com/embed/LPT7v69guVY" 
     title="How To Add Eclipse Project To GitHub | How to Commit, Push, Pull from Eclipse to GitHub" 
     frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
     </iframe>
    </div>
    </c:when>
    <c:when test="${param.name eq 'githubpycharm'}">
    <div style="text-align: center">
     <h1>Eclipse와 PyCharm 연동</h1>
     <hr> 
     <iframe width="720" height="480" src="https://www.youtube.com/embed/a8MckiothGc" 
     title="How to use GitHub with Pycharm in less than 7 minutes" frameborder="0" 
     allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
     </iframe>
    </div>
    </c:when>
    <c:otherwise>
     <h4>동영상을 찾을 수 없습니다.</h4>
    </c:otherwise>
    </c:choose>
  
   </div>
  </div>
  </div>