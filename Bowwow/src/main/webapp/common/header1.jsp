<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
 .form-control{
      width:250px;
      height:40px;
      border:none;
      font-size:1em;
      padding-left: 5px;
      font-style: oblique;
      display:inline;
      outline:none;
      box-sizing: border-box;
      color:black;
}

input[type="submit"] {
	font-family: FontAwesome;
	background-color: #f7b5b7;
	border: none;
	color: #fff;
}

</style>

<!-- Pre-loader start -->
	<div class="theme-loader">
		<div class="loader-track">
			<div class="preloader-wrapper">
				<div class="spinner-layer spinner-blue">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>
				<div class="spinner-layer spinner-red">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>

				<div class="spinner-layer spinner-yellow">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>

				<div class="spinner-layer spinner-green">
					<div class="circle-clipper left">
						<div class="circle"></div>
					</div>
					<div class="gap-patch">
						<div class="circle"></div>
					</div>
					<div class="circle-clipper right">
						<div class="circle"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

<nav class="navbar header-navbar pcoded-header">
	<div class="navbar-wrapper" style="color: red;">
		<div class="navbar-logo">
			<a class="mobile-menu waves-effect waves-light"
				id="mobile-collapse" href="#!"> <i class="ti-menu"></i>
			</a>
			<div class="mobile-search waves-effect waves-light">
				<div class="header-search">
					<div class="main-search morphsearch-search">
						<div class="input-group">
							<span class="input-group-prepend search-close"><i
								class="ti-close input-group-text"></i></span> <input type="text"
								class="form-control" placeholder="Enter Keyword"> <span
								class="input-group-append search-btn"><i
								class="ti-search input-group-text"></i></span>
						</div>
					</div>
				</div>
			</div>
			<a href="storeMain.html"
				style="text-align: center; font-weight: bold; font-size: 30px; margin-top: 7px;">BOW-WOW</a>

			<a class="mobile-options waves-effect waves-light"> <i
				class="ti-more"></i>
			</a>
		</div>
		<div class="navbar-container container-fluid">
			<ul class="nav-left">
				<li>
					<div class="sidebar_toggle">
						<a href="javascript:void(0)"><i class="ti-menu"></i></a>
					</div>
				</li>
				<li><a href="/community/main"> ???????????? </a></li>
				<li><a href="/store/storeMain"> ????????? </a></li>
			</ul>
			<form action="/community/search">
			<ul class="nav-right">
				<li class="form-group form-primary">
					<input type="text"
					name="keyword" class="form-control" placeholder="?????????">

					<span class="form-bar"></span>
				</li>
				<li>
					<input type="submit" name="search" value="&#xf002;">
				</li>

				<li class="header-notification"><a href="/store/cartList"
					class="waves-effect waves-light"> <i
						class="fa fa-shopping-cart" aria-hidden="true"></i> <span
						class="badge bg-c-red"></span>
				</a>
					</li>
				<!-- 
				<li class="user-profile header-notification"><a href="#!"
					class="waves-effect waves-light"> <img
						src="../resources/images/logo.png" class="img-radius"
						alt="User-Profile-Image"> <i class="ti-angle-down"></i>
				</a>
				
				<form name="memberSerialLink">
				<input type="hidden" name="member_serial" value="${sessionScope.userDTO.member_serial }" >	
					<ul class="show-notification profile-notification">
						<li class="waves-effect waves-light"><a href="/mypage/myPageMain">?????????
						</a></li>
						<li class="waves-effect waves-light"><a
							href="/mypage/myInfo">????????? </a></li>
						<li class="waves-effect waves-light"><a
							href="javascript:page_move_petList('${sessionScope.userDTO.member_serial }');">???????????? </a></li>
						<script>
							//a?????? POST???????????? ?????????!
							function page_move_petList(member_serial){ 
								  var frm =document.goLinkPetList;  //??? name
								  frm.member_serial.value = member_serial;  //POST???????????? ????????? ?????? ???
								  frm.action="/getPetInfoList";  //????????? ?????????
								  frm.method="post";  //POST??????
								  frm.submit();
							}
						</script>
						<li class="waves-effect waves-light"><a
							href="/mypage/myPoint">????????? ?????? </a></li>
<!-- 						???????????? ???, ????????? ????????? ???????????? ????????? ???->????????? ??? ??????????????? ???????????? ???????????? ??? 
						<li class="waves-effect waves-light"><a
							href="/store/storeOrderList">?????? ?????? </a></li>
						<li class="waves-effect waves-light"><a
							href="/user/login">????????? </a></li>
						<li class="waves-effect waves-light"><a
							href="/user/logout">???????????? </a></li>
					</ul>
				</form>
				
					</li>
					 -->
				</ul>
			</form>
		</div>
	</div>
</nav>
