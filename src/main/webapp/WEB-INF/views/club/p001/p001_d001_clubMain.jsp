<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
@font-face {
	font-family: 'YanoljaYacheR';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/YanoljaYacheR.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.card-title {
	font-family: 'YanoljaYacheR' !important;
	font-size: 250%;
}
.card_img{
	object-fit: cover;
}
input[type="submit"] {
	font-family: FontAwesome;
}

.search {
	text-align: center;
}

.create {
	width: 350px;
	margin: auto;
}
body{
	background: white;
}
/* .card,.mainClub{ */
/* 	background:#f5f7f8; */
/* } */
.mainClub{
	background:#f5f7f8;
}

.mainClub:hover{
	top: -2px;
  	box-shadow: 0 4px 5px rgba(0,0,0,0.2);
  	cursor: pointer;
}

.card:hover{
	top: -2px;
  	box-shadow: 0 4px 5px rgba(0,0,0,0.2);
  	cursor: pointer;
}

.btn-outline-info{
    border-color: #002A87;
    color: #002A87;
}

.btn-outline-info:hover,
.btn-outline-info:focus {
    border-color: #002A87;
    background-color: #002A87;
    color: #FFF; }
    
div.img{
	line-height:225px;
	background-color: #f5f7f8;
}
div.img > img{
	object-fit: cover;
	height: 270px 
/* 	vertical-align:middle; */
}
* {box-sizing: border-box;}
.mySlides {display: none;}
.s {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

    html,
    body {
      position: relative;
      height: 100%;
    }

    body {
      font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
      font-size: 14px;
      color: #000;
      margin: 0;
      padding: 0;
    }

    .swiper-container {
/*     	margin-top:78px; */
      width: 100%;
      height: 500px;

    }

    .swiper-slide {
      text-align: center;
      font-size: 18px;
      background: #fff;
      /* Center slide text vertically */
      display: -webkit-box;
      display: -ms-flexbox;
      display: -webkit-flex;
      display: flex;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      -webkit-justify-content: center;
      justify-content: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      -webkit-align-items: center;
      align-items: center;
      
    }
    .swiper-slide > img{
    		object-fit: contain;
    		width: 100%;
    }
</style>
<script>
function init(){
	var txt = document.getElementsByClassName("str");
	for(i=0;i<txt.length;i++){
		console.log(txt[i]);
		document.getElementsByClassName("str")[i].innerHTML = txt[i].innerText;
	}
}
 
function removeHTML(text){
	text = text.toString().replace(/<(\/)?([a-zA-Z]*)(\s[a-zA-Z]*=[^>]*)?(\s)*(\/)?>/ig, "");
	text = text.toString().replace(/<br\/>/ig, "\n");
	return text;
}

</script>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">

  <!-- Link Swiper's CSS -->
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">

</head>

<body onload="init();">
  <!-- Swiper -->
  <div class="swiper-container">
    <div class="swiper-wrapper">
      <div class="swiper-slide"><img style=""src="https://cdn.pixabay.com/photo/2015/09/02/13/26/glasses-919071_1280.jpg"></div>
      <div class="swiper-slide"><img src="https://cdn.pixabay.com/photo/2014/11/17/13/17/crossfit-534615_1280.jpg"></div>
      <div class="swiper-slide"><img src="https://cdn.pixabay.com/photo/2015/01/08/18/27/startup-593341_1280.jpg"></div>
    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination"></div>
    <!-- Add Arrows -->
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
  </div>

  <!-- Swiper JS -->
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

  <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper('.swiper-container', {
      spaceBetween: 30,
      centeredSlides: true,
      autoplay: {
        delay: 2500,
        disableOnInteraction: false,
      },
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });
  </script>



	<div class="container my-5 center">
		<h3>인기 소모임></h3>
		<br>
		<div class="row">
			<c:forEach var="club" items="${clubList}">
				<div class="col-sm-6 mb-3 card" onclick="location.href='${contextPath}/club/detailClub.do?c_id=${club.c_id}'"
					style="max-width: 540px; max-height:270px; margin-left: 25px;padding:0">
					<div class="row no-gutters">
						<div class="col-sm-6 img">
						<c:choose>
						<c:when test="${club.resultImg eq null}">
							<img src="https://cdn.pixabay.com/photo/2014/07/08/10/47/team-386673_1280.jpg" class="card-img" alt="...">
						</c:when>
						<c:otherwise>
							<img src="data:image/jpg;base64,${club.resultImg}" class="card-img"
								alt="...">
						</c:otherwise>
						</c:choose>
						</div>
						<div class="col-sm-6">
							<div class="card-body" style="height: 225px">
								<h5 class="card-title" style="height: 20%">${club.c_name}</h5>
								<div class="str">
								<p class="card-text" style="height: 40%">${club.c_content}</p>
								</div>
								<p class="card-text">
									<small class="text-muted" style="height: 14px">${club.c_category}</small>
								</p>
								<p class="card-text">
									<small class="text-muted" style="height: 14px">함께하는 사람 ${club.c_membercnt}</small>
								</p>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<div class="container my-5 center">
		<div class="search">
			<a href="#">#운동</a> <a href="#">#산책</a> <a href="#">#볼링</a> <a href="#">#독서</a> <br>
			<form name="searchFrm" method="post"
				action="${contextPath}/club/searchClub.do">
				<input type="text" placeholder="검색" name="searchWord"> <input
					type="submit" value="&#xf002;">
			</form>
			<br>
			<p style="font-size: 18px;">원하시는 소모임이 없나요? 한번 만들어보세요!</p>
			<button type="button"
				class="btn btn-outline-info btn-block search create"
				style="font-size: 18px;"
				onclick="location.href='${contextPath}/club/createClubForm.do'">소모임 만들기</button>
		</div>
		<br>

		<h3>나의 소모임></h3>
		<c:set var="myClubCnt" value="${myClubCnt}" />
		<c:choose>
			<c:when test="${myClubCnt eq 0}">
				<div class="card">
					<div class="card-body" style="text-align: center;">
					가입된 소모임이 없습니다. 함께 해봐요!</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="row">
					<c:forEach var="club" items="${myClubList}">
						<div class="club"
							style="margin-left: 45px; margin-right: 45px; margin-top: 20px" onclick="location.href='${contextPath}/club/detailClub.do?c_id=${club.c_id}'">
							<div class="card" style="width: 18rem;">
							<div class="img">
								<c:choose>
								<c:when test="${club.resultImg eq null}">
									<img src="https://cdn.pixabay.com/photo/2014/07/08/10/47/team-386673_1280.jpg" class="card-img" alt="...">
								</c:when>
								<c:otherwise>
									<img src="data:image/jpg;base64,${club.resultImg}" class="card-img" alt="...">
								</c:otherwise>
								</c:choose>
							</div>
								<div class="card-body">
									<h5 class="card-title">${club.c_name }</h5>
									<p class="card-text">함께하는 사람 ${club.c_membercnt }</p>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>