<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>유우열의 포토폴리오</title>
  <meta charset="utf-8">
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
	background-image: url('img/newyear.jpg');
    background-repeat: no-repeat;
    background-position: center center;
    background-color : #585858;
    color: #000000;
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
  </style>
</head>
<body>
<jsp:include page="nav.jsp"/>
<div class="container">
<!-- First Container -->
<div class="container-fluid bg-1 text-center">
  <h1 class="margin">안녕하세요! 저는 유우열입니다.</h1>
  <br>
  <h2>현재 선문대 컴퓨터공학과에 재학중입니다.</h2>
</div>

<!-- Second Container -->
<div class="container-fluid bg-2 text-center">
  <h1 class="margin">포트폴리오를 감상하세요!</h1>
  <a href="portfolio_list.do" class="btn btn-danger btn-lg">바로가기</a>
</div>

<!-- Third Container (Grid) -->
<div class="container-fluid bg-3 text-center">
  <h1 class="margin">새해복 많이 받으세요!!</h1>
</div>
</div>
<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
  <p>&copy; 2020 yuy8313@naver.com<p> 
</footer>

</body>
</html>
