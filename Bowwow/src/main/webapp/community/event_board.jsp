<%@page import="ga.bowwow.service.board.Board"%>
<%@page import="java.util.List"%>
<%@page import="ga.bowwow.service.board.impl.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<%@ include file="/common/import.jsp"%>

<title>펫 다이어리</title>
<style>

.pcoded-navbar{ z-index:99999;}

footer.footer.navbar-wrapper {
    z-index: 3;
}

.block-item:hover{
	cursor:pointer;
}
.side_active {
	background-color : #f7b5b7;
    -webkit-box-shadow: 0 15px 8px -11px rgba(0, 0, 0, 0.25);
    box-shadow: 0 15px 8px -11px rgba(0, 0, 0, 0.25);
}
</style>
<script>
	$(function (){
		var board_idx = ${board_idx};
		board_idx = board_idx + 2;
		$(".pcoded-inner-navbar>ul:nth-child(" + board_idx + ")>li>a").addClass("side_active");
	});
</script>
</head>
<body>

	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">

			<!-- header 헤더 영역 -->
			<%@ include file="/common/header.jsp"%>
			<!-- header 헤더 영역 -->
			
			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">

					<!-- sidebar 좌측메뉴바 -->
					<%@ include file="/common/communityMenuBar.jsp"%>
					<!-- sidebar 좌측메뉴바 -->

					<div class="pcoded-content">

						<!-- Page-header start -->

						<!-- Page-header end -->
						<div class="pcoded-inner-content">

							<!-- body 본문 영역 -->
							<div class="main-body">
								<div class="page-wrapper">
									<!-- Page-body start -->
									<div class="page-body">
										<section class="featured spad">
											<div class="container">
												<div class="row">
													<div class="col-lg-12">
														<div class="section-title">
															
														</div>
														<br>
													</div>
												</div>
												<div class="monthly-products">
													<ul>
														<c:forEach var="list" items="${ boardList}">
															<li style="background-color : #f7f2f2; margin:5px; border-radius:10px">
																<div class="block-item" onclick="location.href='/community/detail?board_idx=${board_idx }&board_no=${list.board_no}'">
																	<div class="best-label"><br></div>
																	<div class="img-area">
																		<div class="imgItem" style="padding:10px 20px 5px 20px">
																			<img src='https://projectbit.s3.us-east-2.amazonaws.com/${list.img1 }' onerror='this.src="/resources/images/alt_img.png"' width="100%" height="100%">
																		</div>
																	</div>
																	<br>
																	<div class="text-area" style="padding:5px 20px 5px 20px">
																		<div class="item-title" style="color:black;">
																			<a href="/community/detail?board_idx=${board_idx }&board_no=${list.board_no}">
																			</a><span style="font-size:22px;">${list.board_title }</span> <span style="postion:inline-block; float:right">${list.regdate }</span>
																		</div>
																		<div class="item-items">
																			<div class="profile" style="width:100%;">
																				<span>${list.nickname }</span>
																				<span style="float:right">조회수 ${list.hits }</span>
																				<br>
																				<br>
																			</div>
																			<div class="profile" style="margin-right:0">
																			</div>
																		</div>
																	</div>
																</div>
															</li>
														</c:forEach>
													</ul>
												</div>
												<%@include file="/community/searchbar.jsp"%>
												<br>
												<div>
										<%@include file="/common/paging.jsp"%>
												</div>
											</div>
										</section>
										
									</div>

								</div>
								<!-- Page-body end -->
							</div>
							<!-- body 본문 영역 -->

							<div id="styleSelector"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
<!-- 		<button class="scroll-top" id="js-button"
			style="margin-bottom: 190px; margin-right: 30px; font: 'Jua'">
			<i class="fa fa-chevron-up" aria-hidden="true">TOP</i>
		</button> -->
		
		
		<!-- footer 푸터 영역 -->
		<%@ include file="/common/storeFoot.jsp"%>
		<!-- footer 푸터 영역 -->
		<div class="fixed-button2 active"> 
		<c:if test="${sessionScope.userDTO.member_serial == 1 }">
				<a href="/community/write_combination.jsp" class="btn2 btn-md btn-primary"> 글쓰기</a> 
			</c:if>
		</div>
	</div>

	<!-- Required Jquery -->
	<script type="text/javascript" src="/resources/js/jquery/jquery.min.js "></script>
	<script type="text/javascript" src="/resources/js/jquery-ui/jquery-ui.min.js "></script>
	<script type="text/javascript" src="/resources/js/popper.js/popper.min.js"></script>
	<script type="text/javascript" src="/resources/js/bootstrap/js/bootstrap.min.js "></script>
	<!-- waves js -->
	<script src="/resources/pages/waves/js/waves.min.js"></script>
	<!-- jquery slimscroll js -->
	<script type="text/javascript" src="/resources/js/jquery-slimscroll/jquery.slimscroll.js"></script>

	<!-- slimscroll js -->
	<script src="/resources/js/jquery.mCustomScrollbar.concat.min.js "></script>

	<!-- menu js -->
	<script src="/resources/js/pcoded.min.js"></script>
	<script src="/resources/js/vertical/vertical-layout.min.js "></script>

	<script type="text/javascript" src="/resources/js/script.js "></script>

</body>
</html>






																			