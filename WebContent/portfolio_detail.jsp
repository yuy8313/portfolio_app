<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script|Song+Myung&display=swap" rel="stylesheet">
  
 <style>
  body {
  	background-image : url('img/back3.jpg');
  	background-repeat: no-repeat;
  	background-size : cover;
    background-position: center;
    font: 20px Montserrat, sans-serif;
    line-height: 1.8;
    color: #000000;
  }
  p {font-size: 16px;}
  .margin {margin-bottom: 45px;}
  .bg-1 { 
	height: 400px;    
	background-image: url('img/sky.jpg');
    background-repeat: no-repeat;
    background-position: center center;
    background-color : #585858;
    color: #ffffff;
  }
  .bg-2 { 
    height: 300px;    
	background-image: url('img/bottum.jpg');
    background-repeat: no-repeat;
    background-position: center center;
    background-color : #585858;
    color: #922B02;
  }
  .bg-3 { 
    height: 300px;    
	background-image: url('img/leaf.jpg');
    background-repeat: no-repeat;
    background-position: center center;
    background-color : #585858;
    color: #ffffff;
  }
  .bg-4 { 
    background-color: #2f2f2f; /* Black Gray */
    color: #fff;
  }
  .container-fluid {
    padding-top: 70px;
    padding-bottom: 70px;
  }
  .navbar {
    padding-top: 15px;
    padding-bottom: 15px;
    border: 0;
    border-radius: 0;
    margin-bottom: 0;
    font-size: 12px;
    letter-spacing: 5px;
  }
  .navbar-nav  li a:hover {
    color: #1abc9c !important;
  }
  .navbar-brand {
  	font-family: 'Nanum Pen Script', cursive;
  	font-size: 40px;
  }
  nav{
  	background-color: #F7F2E0;
  }
  li{
  	font: 25px 'Song Myung', serif;
  }
  a {
  	color : #000000;
  }
  form {
  	width: 50%;
  }
  .contain_color {
  	background-color: #FFE5CC;
  	table-layout: fixed;
  }
  .jumbotron {
  	background-image: url('img/cup.jpg');
    background-repeat: no-repeat;
    background-position: center center;
    height : 330px;
  }
  </style>
</head>
<body>
<jsp:include page="nav.jsp"/>
	<div class="container contain_color">
	<h1 class="text-center">포트폴리오 상세보기</h1>
	
	<table class="table">
	
	<div class="row">
		<tr>
			<td>제목</td>
			<td>${portfolio.title }</td>
		</tr>
		<tr>
			<td>대표자</td>
			<td>${portfolio.leader}</td>
		</tr>
		<tr>
			<td>참여자</td>
			<td>총 ${portfolio.memberCount} 명 : ${portfolio.member}</td>
		</tr>		
		<tr>
			<td>시작일</td>
			<td>${portfolio.startDate}</td>
		</tr>		
		<tr>
			<td>종료일</td>
			<td>${portfolio.endDate}</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>${portfolio.content}</td>
		</tr>		
		<tr>
			<td>자료 사진</td>
		<td><c:forEach items="${portfolio.dataList}" var="file">
 			<img src="uploadFileSave/${file.realFileName}" width="200px" height="200px"/>
 				<br>
 			</c:forEach>
 		</td>
		</tr>
 	</table>
 	<br>
 	<br>
 	<br>
 	<br>
 	<br>
 	<br>
 	<a href="portfolio_list.do"class="btn btn-default pull-right">목록으로</a>
 	<br>
 	<br>
 	<br>
 	</div>
 	<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
  <p>&copy; 2020 yuy8313@naver.com<p> 
</footer>
</body>
</html>