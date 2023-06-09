<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="author" content="user" />

<title>PillDex 돋보기모드</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"></script>
<script src="https://kit.fontawesome.com/30356e696a.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="${path}/resources/css/mode-style.css" />
</head>
<body>
	<!--네비게이션 바-->
	<nav class="py-2 bg-light border-bottom">
		<div class="container d-flex flex-wrap">
			<ul class="nav me-auto">
				<li class="nav-item"><a href="#"
					class="nav-link link-dark px-2 active" aria-current="page"> <img
						src="${path}/resources/img/Pill_32px.png" alt="Pill" /> &nbsp; <b>PillDex</b>
				</a></li>
			</ul>
			<ul class="nav">
				<li class="nav-item"><a href="#"
					class="nav-link link-dark px-2"><b>일반모드</b></a></li>
				<li class="nav-item"><a href="#"
					class="nav-link link-dark px-2"><b>MAP</b></a></li>
				<li class="nav-item"><a href="#"
					class="nav-link link-dark px-2"><b>로그인</b></a></li>
				<li class="nav-item"><a href="#"
					class="nav-link link-dark px-2"><b>마이페이지</b></a></li>
				<li class="nav-item"><a href="#"
					class="nav-link link-dark px-2"><b>로그아웃</b></a></li>
			</ul>
		</div>
	</nav>
	<img src="${path}/resources/img/main_img.png" alt="메인이미지" width="100%" />
	<div id="search_list_box">
		<!--밑에 내용은 나중에 api연결하고나서 localStorage로 기능추가-->
		<ul>
			<li>
				<div id="search_list">
					<img id="search_list_img" src="#" alt="이미지" />
				</div> 타이레놀
			</li>
			<li>
				<div id="search_list">
					<img id="search_list_img" src="#" alt="이미지" />
				</div> 타이레놀
			</li>
		</ul>
	</div>
	<div id="med_search_box">
		<h1 id="med_search">의약품 검색</h1>
	</div>
	<form id="serach_form" action="#" method="get">
		<div id="search_box_containor">
			<!--검색창-->
			<input name="search" id="search_area" type="text"
				placeholder="약 이름으로 검색" />
			<button id="search_button"
				class="btn btn-primary col-md-2 col-sm-3 col-4" type="submit">
				검색 하기</button>
		</div>
	</form>
	<form method="post" id="main-form" action="/ehr/apiload.do">
		<div id="shape_search_box">
			<h2>약 모양으로 검색</h2>
			<img src="${path}/resources/img/med_char.png" />
			<div style="display: flex; align-items: end">
				<div id="med_char_input">
					<div class="select-box shape">
						<i class="fa-solid fa-solid fa-shapes fa-2xl"></i> <input
							type="text" class="selected-data-input hidden" name="drugShape"
							value="" />
						<p>모양</p>
					</div>
					<div class="select-box color">
						<i class="fa-solid fa-droplet fa-2xl"></i> <input type="text"
							class="selected-data-input hidden" name="colorClass" value="" />
						<p>색상</p>
					</div>
					<div class="select-box chart">
						<i class="fa-solid fa-capsules fa-2xl"></i> <input type="text"
							class="selected-data-input hidden" name="chart" value="" />
						<p>제형</p>
					</div>
					<div class="select-box line">
						<i class="fa-solid fa-light fa-tablets fa-2xl"></i> <input
							type="text" class="selected-data-input hidden" name="lineFront"
							value="" />
						<p>분할선</p>
						<input type="text" class="selected-data-input hidden"
							name="lineBack" value="" /> <input type="text"
							class="selected-data-input hidden" name="printFront" value="" />
						<input type="text" class="selected-data-input hidden"
							name="printBack" value="" />
					</div>
					<input type="text" class="selected-data-input" name="printFB"
						value="" />
					<p>식별자</p>
				</div>
				<div class="detail-view-box hidden">
					<div class="select-box-shape">
						<img src="${path}/resources/img/main-png/색깔/no-background/1.png"
							data-value="" /> <input type="text" value="팔각형" class="hidden" />
						<h1>전체</h1>
					</div>
					<div class="select-box-shape">
						<img src="${path}/resources/img/circle.png" data-value="원형" /> <input
							type="text" value="원형" class="hidden" />
						<h3>원형</h3>
					</div>
					<div class="select-box-shape">
						<img src="${path}/resources/img/eclipse.png" data-value="타원형" />
						<input type="text" value="타원형" class="hidden" />
						<h3>타원형</h3>
					</div>
					<div class="select-box-shape">
						<img src="${path}/resources/img/rectangle.png" data-value="장방형" />
						<input type="text" value="장방형" class="hidden" />
						<h3>장방형</h3>
					</div>
					<div class="select-box-shape">
						<img src="${path}/resources/img/triangle.png" data-value="삼각형" />
						<input type="text" value="삼각형" class="hidden" />
						<h3>삼각형</h3>
					</div>
					<div class="select-box-shape">
						<img src="${path}/resources/img/square.png" data-value="사각형" /> <input
							type="text" value="사각형" class="hidden" />
						<h3>사각형</h3>
					</div>
					<div class="select-box-shape">
						<img src="${path}/resources/img/pentagon.png" data-value="오각형" />
						<input type="text" value="오각형" class="hidden" />
						<h3>오각형</h3>
					</div>
					<div class="select-box-shape">
						<img src="${path}/resources/img/hexagon.png" data-value="육각형" />
						<input type="text" value="육각형" class="hidden" />
						<h3>육각형</h3>
					</div>
					<div class="select-box-shape">
						<img src="${path}/resources/img/octagon.png" data-value="팔각형" />
						<input type="text" value="팔각형" class="hidden" />
						<h3>팔각형</h3>
					</div>
				</div>
				<div class="detail-view-box hidden">
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/1.png"
							data-value="" /> <input type="text" value="팔각형" class="hidden" />
						<h1>전체</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/2.png "
							data-value="하양" /> <input type="text" value="하양" class="hidden" />
						<h1>하양</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/3.png "
							data-value="노랑" /> <input type="text" value="노랑" class="hidden" />
						<h1>노랑</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/4.png "
							data-value="주황" /> <input type="text" value="주황" class="hidden" />
						<h1>주황</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/5.png "
							data-value="분홍" /> <input type="text" value="분홍" class="hidden" />
						<h1>분홍</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/6.png "
							data-value="빨강" /> <input type="text" value="빨강" class="hidden" />
						<h1>빨강</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/7.png "
							data-value="갈색" /> <input type="text" value="갈색" class="hidden" />
						<h1>갈색</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/8.png "
							data-value="연두" /> <input type="text" value="연두" class="hidden" />
						<h1>연두</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/9.png "
							data-value="초록" /> <input type="text" value="초록" class="hidden" />
						<h1>초록</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/10.png "
							data-value="청록" /> <input type="text" value="청록" class="hidden" />
						<h1>청록</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/11.png "
							data-value="파랑" /> <input type="text" value="파랑" class="hidden" />
						<h1>파랑</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/13.png "
							data-value="자주" /> <input type="text" value="자주" class="hidden" />
						<h1>자주</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/14.png "
							data-value="보라" /> <input type="text" value="보라" class="hidden" />
						<h1>보라</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/15.png "
							data-value="회색" /> <input type="text" value="회색" class="hidden" />
						<h1>회색</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/16.png "
							data-value="검정" /> <input type="text" value="검정" class="hidden" />
						<h1>검정</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/17.png "
							data-value="투명" /> <input type="text" value="투명" class="hidden" />
						<h1>투명</h1>
					</div>
				</div>
				<div class="detail-view-box hidden">
					<div class="select-box-chart">
						<img src="${path}/resources/img/main-png/재질/no-background/1.png"
							data-value="" /> <input type="text" value="전체" class="hidden" />
						<h3>전체</h3>
					</div>
					<div class="select-box-chart">
						<img src="${path}/resources/img/main-png/재질/no-background/2.png"
							data-value="정제" /> <input type="text" value="정제" class="hidden" />
						<h3>정제류</h3>
					</div>
					<div class="select-box-chart">
						<img src="${path}/resources/img/main-png/재질/no-background/3.png"
							data-value="경질" /> <input type="text" value="경질" class="hidden" />
						<h3>경질캡슐</h3>
					</div>
					<div class="select-box-chart">
						<img src="${path}/resources/img/main-png/재질/no-background/4.png"
							data-value="연질" /> <input type="text" value="연질" class="hidden" />
						<h3>연질캡슐</h3>
					</div>
				</div>
				<div class="detail-view-box hidden">
					<div class="select-box-line">
						<img src="${path}/resources/img/main-png/선/no-background/1.png"
							data-value="null" /> <input type="text" value="전체"
							class="hidden" />
						<h3>전체</h3>
					</div>
					<div class="select-box-line">
						<img src="${path}/resources/img/main-png/선/no-background/2.png"
							data-value="null" /> <input type="text" value="없음"
							class="hidden" />
						<h3>없음</h3>
					</div>
					<div class="select-box-line">
						<img src="${path}/resources/img/main-png/선/no-background/3.png"
							data-value="-" /> <input type="text" value="-" class="hidden" />
						<h3>-형</h3>
					</div>
					<div class="select-box-line">
						<img src="${path}/resources/img/main-png/선/no-background/4.png"
							data-value="+" /> <input type="text" value="+" class="hidden" />
						<h3>+형</h3>
					</div>
				</div>
				<div class="detail-view-box hidden">
					<input type="text" name="printFB" />
				</div>
			</div>
		</div>
		<p>${shape}</p>
		<input type="submit" id="submit-btn" />

		<form method="get" action="detailpage.html" class="card-box">
			<div class="card-box-main">
				<div class="card-box">
					<c:forEach var="pill" items="${modeVO}">
						<div class="card-t">
							<img src="${pill.itemImage}" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">${pill.itemName}</h5>
								<p class="card-text">${pill.efcyQesitm}</p>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</form>
	</form>
	<footer
		class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
		<div class="col-md-4 d-flex align-items-center">
			<a href="/"
				class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
				<svg class="bi" width="30" height="24">
                        <use xlink:href="#bootstrap" />
                    </svg>
			</a> <span class="mb-3 mb-md-0 text-muted">&copy; Make, 2023
				FiveGuys 4 Team </span> <a
				href="https://www.data.go.kr/tcs/dss/selectApiDataDetailView.do?publicDataPk=15075057" target="blank"><span>출처 : 식품의약품안전처_의약품개요정보(e약은요)</span></a>
			<a href="https://www.data.go.kr/tcs/dss/selectApiDataDetailView.do?publicDataPk=15057639" target="blank"><span>출처 : 식품의약품안전처_의약품 낱알식별 정보</span></a>

		</div>
	</footer>
</body>

<script>
	let selectBox = document.querySelectorAll('.select-box');
	let detailViewBox = document.querySelectorAll('.detail-view-box');
	let selectedDataInput = document.querySelectorAll('.selected-data-input');

	for (let i = 0; i < selectBox.length; i++) {
		selectBox[i].addEventListener('click', function(e) {
			if (!selectBox[i].classList.contains('clickable')) {
				selectBox[i].classList.add('clickable');
				detailViewBox[i].classList.remove('hidden');
			} else {
				selectBox[i].classList.remove('clickable');
				detailViewBox[i].classList.add('hidden');
			}

			for (let j = 0; j < selectBox.length; j++) {
				if (j !== i) {
					selectBox[j].classList.remove('clickable');
					detailViewBox[j].classList.add('hidden');
				}
			}
		});
	}

	let selectBoxShape = document.querySelectorAll('.select-box-shape img');
	let selectedShape = null;

	for (let i = 0; i < selectBoxShape.length; i++) {
		selectBoxShape[i].addEventListener('click', function() {
			if (!selectBoxShape[i].classList.contains('clickable')) {
				selectBoxShape[i].classList.add('clickable');
				selectBox[0].classList.add('click-option');
			} else {
				selectBoxShape[i].classList.remove('clickable');
				selectBox[0].classList.remove('click-option');
			}
			selectedShape = selectBoxShape[i].getAttribute('data-value');
			selectedDataInput[0].value = selectedShape;

			resetClickable(selectBoxShape, i);
		});
	}

	let selectBoxColor = document.querySelectorAll('.select-box-color img');
	let selectedColor = null;

	for (let i = 0; i < selectBoxColor.length; i++) {
		selectBoxColor[i].addEventListener('click', function() {
			if (!selectBoxColor[i].classList.contains('clickable')) {
				selectBoxColor[i].classList.add('clickable');
				selectBox[1].classList.add('click-option');
			} else {
				selectBoxColor[i].classList.remove('clickable');
				selectBox[1].classList.remove('click-option');
			}
			selectedColor = selectBoxColor[i].getAttribute('data-value');
			selectedDataInput[1].value = selectedColor;
			resetClickable(selectBoxColor, i);
		});
	}

	let selectBoxChart = document.querySelectorAll('.select-box-chart img');
	let selectedChart = null;

	for (let i = 0; i < selectBoxChart.length; i++) {
		selectBoxChart[i].addEventListener('click', function() {
			if (!selectBoxChart[i].classList.contains('clickable')) {
				selectBoxChart[i].classList.add('clickable');
				selectBox[2].classList.add('click-option');
			} else {
				selectBoxChart[i].classList.remove('clickable');
				selectBox[2].classList.remove('click-option');
			}
			selectedChart = selectBoxChart[i].getAttribute('data-value');
			selectedDataInput[2].value = selectedChart;
			resetClickable(selectBoxChart, i);
		});
	}

	let selectBoxLine = document.querySelectorAll('.select-box-line img');
	let selectedLine = null;

	for (let i = 0; i < selectBoxLine.length; i++) {
		selectBoxLine[i].addEventListener('click', function() {
			if (!selectBoxLine[i].classList.contains('clickable')) {
				selectBoxLine[i].classList.add('clickable');
				selectBox[3].classList.add('click-option');
			} else {
				selectBoxLine[i].classList.remove('clickable');
				selectBox[3].classList.remove('click-option');
			}
			selectedLine = selectBoxLine[i].getAttribute('data-value');
			selectedDataInput[3].value = selectedLine;
			selectedDataInput[4].value = selectedLine;
			resetClickable(selectBoxLine, i);
		});
	}

	function resetClickable(elements, selectedIndex) {
		for (let j = 0; j < elements.length; j++) {
			if (j !== selectedIndex) {
				elements[j].classList.remove('clickable');
			}
		}
	}

	selectedDataInput[7].addEventListener("keyup", function() {
		if (selectedDataInput[7].value != "") {
			selectedDataInput[5].value = selectedDataInput[7].value;
			selectedDataInput[6].value = selectedDataInput[7].value;
		} else {
			selectedDataInput[5].value = "";
			selectedDataInput[6].value = "";
		}
	})
</script>
</html>
