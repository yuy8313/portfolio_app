<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>포트폴리오 리스트</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script|Song+Myung&display=swap" rel="stylesheet">
<script type="text/javascript">
	$(function() {
		$("#portfolioList :button").click(function() {
			location.href = "portfolio_remove.do?no="+$(this).attr("data-no");
		});
	});  
</script>

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
	<div class="jumbotron">
	<br>
	<br>
        <h1 class="text-center">포트폴리오</h1>
    </div>
	
	<table class="table table-hover">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>시작일</th>
				<th>종료일</th>
				<th>자료수</th>				
				<th>대표자</th>
				<th>참여자수</th>
				<th></th>
			</tr>
		</thead>
		<tbody id="portfolioList">
		<c:choose>
			<c:when test="${not empty list}">
				<c:forEach items="${list}" var="portfolio">
							<tr>
								<td>${portfolio.no}</td>
								<td><a href="portfolio_detail.do?no=${portfolio.no}">${portfolio.title}</a> </td>
								<td>${portfolio.startDate}</td>
								<td>${portfolio.endDate}</td>
								<td>${portfolio.dataCount}</td>				
								<td>${portfolio.leader}</td>
								<td>${portfolio.memberCount}</td>
								<td><input type="button" value="삭제" data-no="${portfolio.no}"/></td>
							</tr>	
				</c:forEach>		
			</c:when>
			<c:otherwise>
				<tr style="height:51px">
					<td colspan="8" rowspan="4">등록된 포트폴리오가 없습니다.</td>
				</tr>			
				<tr style="height:51px"></tr>
				<tr style="height:51px"></tr>
				<tr style="height:51px"></tr>
				<tr style="height:51px"></tr>
			</c:otherwise>
		</c:choose>
		</tbody>
	</table>
	<br>
	<hr/>
	
	
 <!-- <ul class="pagination center-block">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>  -->
  
  
	<a href="portfolio_input.html"class="btn btn-default pull-right">작성하기</a>
	
	<form class="pull-right" action="portfolio_search.do" method="post">
		<input class="form-control-lg" type="text" name="title" placeholder="제목을 입력하세요"
			value="${param.title}"> 
		<input class="btn btn-danger" type="submit" value="검색">
	</form>
	<br>
	<br>
</div>	
<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
  <p>&copy; 2020 yuy8313@naver.com<p> 
</footer>
</body>
</html>











