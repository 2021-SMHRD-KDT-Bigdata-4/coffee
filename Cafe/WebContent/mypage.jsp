<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>카페</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="./Resources/js/all.js" crossorigin="anonymous"></script>
<!-- ./Resources/js/all.min.js -->
<!-- Google fonts-->
<link href="stylesheet" rel="stylesheet" />
<link href="stylesheet" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="./Resources/css/styles.css" rel="stylesheet" />


<script type="text/javascript">
	function updateFn() {

		var value1 = document.getElementsByClassName('change1')[0].value;
		var value2 = document.getElementsByClassName('change1')[1].value;
		var value3 = document.getElementsByClassName('change1')[2].value;
		//alert(value1 +"/"+value2+"/"+value3);
		$.ajax({
					url : "ajaxupdate.do?user_id=" + value1 + "&user_name="
							+ value2 + "&password=" + value3,
					type : "post",
					dataType : "JSON",
					success : function(data) {

						document.getElementsByClassName('change1')[1].value = data.user_name;
						document.getElementsByClassName('change1')[2] = data.password;
						alert("수정 성공");
					},
					error : function() {
						alert("error");
					}
				});

	}
</script>
<style>
td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: wheat;
}
</style>

</head>
<body>
	<header>
		<h1 class="site-heading text-center text-faded d-none d-lg-block">
			<span class="site-heading-upper text-primary mb-3">당신만을 위한 원두</span> 
			<span class="youngmain">COFFEE DICTIONARY。</span>
		</h1>
	</header>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
		<div class="container">
			<a class="navbar-brand text-uppercase fw-bold d-lg-none"
				href="index.html">카페</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mx-auto">

					<jsp:include page="menu.jsp">
						<jsp:param name="pageSelection" value="7" />
					</jsp:include>

				</ul>
			</div>
		</div>
	</nav>
	<section class="page-section cta">
		<div class="container">
			<div class="row">
				<div class="col-xl-9 mx-auto">
					<div class="cta-inner bg-faded text-center rounded">
						<!-- mypage 내용 들어갈 곳 -->

						<div id="container">
							<!-- CONTENTS -->
							<!-- CONTENTS -->
							<div id="content" class="section_home">
								<div class="column">
									<!-- 프로필 설정 -->
									<div class="sh_group">
										<br>
										<form>
											<div>
												<div class="sh_header" method="post">
													<h2>프로필</h2>
													<br>
												</div>
												<div class="mypage_content">
													<dl class="sh_lst">
														<dt class="blind">프로필 사진</dt>
														<dd class="pic_desc">
															<a href="#" onclick=""> <img
																src="https://phinf.pstatic.net/contact/20210603_281/1622703170569ft61p_PNG/%C4%F5%C4%AB.png?type=s160"
																width="200" height="200" alt=""> <span
																class="spimg img_frame"></span>
															</a>
														</dd>
														<dt class="blind">&nbsp;</dt>
														<dd class="intro_desc">&nbsp;</dd>


														<dt class="nic_tit">아이디 :
															${sessionScope.userVO.user_id}
														<dt>
															<br>
														</dt>
														<input class="change1" type="hidden"
															value="${sessionScope.userVO.user_id}"
															readonly="readonly">
														<dt class="nic_tit">
															<label for="fname">이   름 : </label> <input class="change1"
																type="text" value="${sessionScope.userVO.user_name}">
															<br>
														</dt>

														<dt>
															<br>
														</dt>

														<dt class="nic_tit">
															<label for="fname">비밀번호 :</label> <input class="change1"
																type="password" value="${sessionScope.userVO.password}">
															<br>
														</dt>
													</dl>
												</div>
												<div>
													<p class="btn_area_btm1">
														<button type="button" onclick="updateFn()" value="수정"
															style="background-color: #e6a756; color: rgba(47, 23, 15, 0.9); border-radius: 15px; margin-left: -50px;">수정</button>
														<button type="reset" class="btn_model" id="bt_mypage_jun">
															<b class="btn_jun2">취소</b>
														</button>
													</p>
												</div>
											</div>
										</form>

									</div>
								</div>
							</div>
							<div class="column">
								<!-- 추천내역 -->
								<div class="sh_group">
									<div class="sh_header">
										<h2>추천 내역</h2>
									</div>
									<div class="mypage_content">
										<dl class="sh_lst2">
											<table class=recommendTable>
												<tr class=recommendTr>
													<th style="font size: 5px;">선택</th>
													<th>원두 이름</th>
													<th>정보</th>
													<th>가격</th>
												</tr>
												<tr>
													<th><input type="checkbox"></th>
													<td>에티오피아 아리차 내추럴 g1</td>
													<td>은은한 꽃향과 상큼한 베리향의 프리미엄 커피</td>
													<td>7500</td>
												</tr>
												<tr>
													<th><input type="checkbox"></th>
													<td>인도 마이소르 너깃 엑스트라 볼드</td>
													<td>견과류 특유의 향과 고소함 밀크초콜릿의 바디감 달콤하고 부드러운 산미의 커피</td>
													<td>8000</td>
												</tr>
												<tr>
													<th><input type="checkbox"></th>
													<td>인도네시아 만델링 g1</td>
													<td>밀크초콜릿의 부드러움 초콜릿같은 풍미 묵직한 바디감의 커피</td>
													<td>9500</td>
												</tr>
												<tr>
													<th><input type="checkbox"></th>
													<td>르완다 버번</td>
													<td>감귤류의 달콤함 허브의 향 다크초콜릿의 쌉쌉름한 커피</td>
													<td>7500</td>
												</tr>
												<tr>
													<th><input type="checkbox"></th>
													<td>디카페인 콜롬비아</td>
													<td>오렌지같은 단맛 달콤하고 고소한 맛 부드러운 목넘김이 특징인 커피</td>
													<td>9000</td>
												</tr>
											</table>
										</dl>
									</div>
									<div>
										<p class="btn_area_btm2">
											<button type="button" class="btn_model" id="bt_mypage_jun">
												<b class="btn_jun2">삭제</b>
											</button>
										</p>
									</div>
								</div>
							</div>
							<div class="column">
								<!-- 게시판 작성 내역 -->
								<div class="sh_group">
									<div class="sh_header">
										<h2>${sessionScope.userVO.user_name}님이 자유게시판에 작성한 내용</h2>
									</div>
									<div class="mypage_content">
										<dl class="sh_lst2">
											<table class=recommendTable>
												<tr class=recommendTr>
													<th>선택</th>
													<th>제목</th>
													<th>작성자</th>
												</tr>
												<tr>
													<th><input type="checkbox"></th>
													<td>에티오피아 아리차 내추럴 g1 추천 받았아요!</td>
													<td>min</td>
												</tr>
												<tr>
													<th><input type="checkbox"></th>
													<td>콜롬비아 원두 추천 후기</td>
													<td>min</td>
												</tr>
											</table>
										</dl>
									</div>
									<div>
										<p class="btn_area_btm1">
											<button type="button" onclick="reviewUpdateFn()" value="수정"
													style="background-color: #e6a756; color: rgba(47, 23, 15, 0.9); border-radius: 15px; margin-left: -50px;">수정</button>
											<button type="button" onclick="reviewDeleteFn()" class="btn_model" id="bt_mypage_jun">
													<b class="btn_jun2">삭제</b>
											</button>
										</p>
									</div>
								</div>
							</div>
							<p class="desc_sub">
								저희 서비스를 더 이상 이용하지 않는다면 <a href="" onclick="" class="more">회원탈퇴
									바로가기</a>
							</p>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
	<footer class="footer text-faded text-center py-5">
		<div class="container">
			<p class="m-0 small">Copyright CNWA &copy; CHORDCAPTURECHRRY NEVER WORK ALONE</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="./Resources/js/scripts.js"></script>
</body>
</html>
