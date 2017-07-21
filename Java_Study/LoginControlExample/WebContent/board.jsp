<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>AMMT</title>
<link rel="stylesheet" href="../css/webcss.css" />
<script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../js/web.js"></script>
</head>
<body>
	<header>
		<div class="wrap">
			<h1>
				<a href="#" title="메인페이지 바로가기" class="logo"><span class="hidden">AMMT
						모바일 웹마켓 모니터링 시스템</span></a>
			</h1>


			<div class="top_util">
				<div class="link">
					<span class="welcome"><strong>관리자</strong>님 접속을 환영합니다.</span><a
						href="#">홈</a><a href="#">사이트맵</a><a href="#">비밀번호 변경하기</a>
				</div>
				<!-- //link -->
				<div class="sign_up">
					<form action="" method="post">
						<fieldset>
							<legend class="hidden">로그인 하기</legend>
							<!-- <input type="button" class="topBtn myPage" title="" value="MY PAGE" name=""/> -->
							<a href="#" class="topBtn logout"><span>로그아웃</span></a>
						</fieldset>
					</form>
				</div>
				<!-- //sign_up -->
			</div>
			<!-- //top_utill-->

			<nav class="gnb">
				<ul>
					<li><a href="#">AMMT 소개</a></li>
					<li><a href="#">게시판관리</a></li>
					<li><a href="#">앱관리</a></li>
					<li><a href="#">환경관리</a></li>
					<li><a href="#">통계</a></li>
				</ul>
			</nav>

		</div>
		<!-- //wrap -->

		<div class="sub_layer">
			<div class="sub_nav">
				<div>
					<ul class="firstUl">
						<li><a href="#">이용안내</a></li>
						<li><a href="#">위반조항</a></li>
					</ul>

					<ul>
						<li><a href="#">공지사항</a></li>
						<li><a href="#">자료실</a></li>
					</ul>

					<ul>
						<li><a href="#">앱관리</a></li>
						<li><a href="#">앱정보조회</a></li>
						<li><a href="#">메일이력관리</a></li>
					</ul>

					<ul>
						<li><a href="#">사용자관리</a></li>
						<li><a href="#">유형별 메뉴관리</a></li>
						<li><a href="#">코드관리</a></li>
						<li><a href="#">수집정보관리</a></li>
						<li><a href="#">수집시간 및 수동실행관리</a></li>
					</ul>

					<ul>
						<li><a href="#">모니터링통계</a></li>
						<li><a href="#">위반항목통계</a></li>
						<li><a href="#">사용자별 모니터링통계</a></li>
					</ul>
				</div>
			</div>
			<!-- //sub_nav -->
		</div>
		<!--  //sub_layer-->

	</header>
	<section>
		<div class="wrap bordWrap">

			<div class="topMenuWrap">
				<div class="topMenu">
					<p>게시판 관리</p>
					<select name="" title="">
						<option value="" selected="selected">자료실</option>
						<option value="">공지사항</option>
					</select>
				</div>
				<!-- //topMenu -->
			</div>
			<!-- //topMenuWrap -->

			<div class="bord">
				<h2>자료실</h2>
				<div class="search">
					<span class="">검색</span> <select name="" title="">
						<option value="" selected="selected">제목</option>
						<option value="">내용</option>
						<option value="">제목+내용</option>
					</select> <span>검색어</span> <label for="searchWord"></label> <input
						type="text" id="searchWord" class="searchWord " title="" value=""
						name="" /> <input type="button" class="searchBtn" title=""
						value="search" name="" />
				</div>
				<!-- //search -->

				<table cellpadding="0" cellspacing="0" class="bordTab"
					summary="제목, 내용, 작성자, 등록일자, 수정일자가 있는 테이블입니다.">
					<caption class="hidden">자료실</caption>
					<colgroup>
						<col width="10%" />
						<col width="55%" />
						<col width="5%" />
						<col width="15%" />
						<col width="15%" />
					</colgroup>
					<thead>
						<tr class="none">
							<th>No.</th>
							<th>제목</th>
							<th>첨부</th>
							<th>작성자</th>
							<th>작성일자</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<div id="shHtml" />
						</tr>

					</tbody>
				</table>
				<div class="pagingWrap">
					<div id="pagingHtml"></div>
					<div id="nav"></div>
					<p class="btn">
						<a href="#">추가</a>
					</p>
				</div>
				
				

				<div class="view">
					<div class="floor floor1">
						<dl class="">
							<dt>번호</dt>
							<dd>2</dd>
						</dl>
						<dl class="fr">
							<dt>작성일시</dt>
							<dd>2017.06.27</dd>
						</dl>
						<dl class="fr">
							<dt>작성자</dt>
							<dd>연초흔</dd>
						</dl>

					</div>
					<div class="floor floor2">
						<dl class="">
							<dt>제목</dt>
							<dd>Jacob</dd>
						</dl>
					</div>
					<div class="floor floor3">
						<dl class="">
							<dt>내용</dt>
							<dd>
								<textarea cols="128" rows="9"></textarea>
							</dd>
						</dl>
					</div>
					<div class="floor floor4">
						<p>첨부파일</p>
						<ul class="">
							<li><input class="uploadName" value="" disabled="disabled">
								<label for="fileFind">파일찾기</label> <input type="file"
								class="fileFind" id="fileFind" title="" value="" name="" /></li>
							<li><input class="uploadName" value="" disabled="disabled">
								<label for="fileFind1">파일찾기</label> <input type="file"
								class="fileFind " id="fileFind1" title="" value="" name="" /></li>
							<li><input class="uploadName" value="" disabled="disabled">
								<label for="fileFind2">파일찾기</label> <input type="file"
								class="fileFind " id="fileFind2" title="" value="" name="" /></li>
						</ul>
					</div>

					<div class="bottomBtn">
						<p class="btn">
							<a href="#">수정</a>
						</p>
						<p class="btn">
							<a href="#">삭제</a>
						</p>
					</div>


				</div>
				<!-- view -->

			</div>
			<!-- //bord -->

		</div>
		<!-- //wrap -->
	</section>

	<footer>
		<div class="wrap">
			<a href="#"><span class="hidden">메인페이지 바로가기</span></a>
			<div class="addr">
				<p>서울시 강남구 압구정로 36길 18 신구빌딩 4층</p>
				<address>
					<em>/ 안내전화 : 070-8765-8451</em> <em>/ 팩스 : 02-539-8767</em>
				</address>
				<ul class="">
					<li>사업자번호 120-82-09427 (사)한국무선인터넷산업연합회&nbsp;</li>
					<li>/ 회장 고진</li>
				</ul>
			</div>
			<!-- //addr -->
			<div class="copy">Copyright 2013 MOIBA ALL RIGHTS RESERVED.</div>
		</div>
		<!-- //wrap -->
	</footer>

	<script type="text/javascript">
		$(document).ready(function() {

			$("#shHtml").append(PagingHelper.shHtml());
			$("#pagingHtml").append(PagingHelper.pagingHtml());
			$("#gotoPage").append(PagingHelper.gotoPage(9));
		});

		var outputHtml = '';
		var totalPage = 30;
		var startPage;
		var endPage;
		var _ = this;
		var datas = [];
		var Data = {
			"pageNum" : 0,
			"numList" : 0
		};
		var pageviewNum = 10;
		var PagingHelper = {

			'shHtml' : function() {
				console.log("shHtml");

				outputHtml += "<div class='page'>";
				outputHtml += "hi";
				outputHtml += "</div>";
				$("pagingHtml")
				return outputHtml;

			},
			'pagingHtml' : function(str, end) {
				var outputTemp = '';
				console.log("pagingHtml");
				console.log("str:" + str + " end : " + end);
				if (str === undefined) {
					console.log("undefined");
					str = 0;
				}
				if (end === undefined)
					end = 10;

				this.startPage = str;
				this.endPage = end;

				console.log("After str:" + this.startPage + " end : " + this.endPage);

				outputTemp += "<div class='paging'>";
				outputTemp += "<ul>";
				$('#nav').empty();
				var navtemp = $('#nav');
				for (var i = this.startPage; i <= this.endPage; i++) {

					if (i == this.startPage) {

						//outputTemp += "&nbsp;&nbsp;<a href='javascript:prev_page();'>◀◀</a>&nbsp;&nbsp;";

					} else if (i == this.endPage) {
						//outputTemp += "&nbsp;&nbsp;<a href='javascript:prev_page();'>▶▶</a>&nbsp;&nbsp;";

					} else {

						console.log(i);
						//outputTemp += "&nbsp;&nbsp;<a href='javascript:PagingHelper.gotoPage(" + i + ");'>" + i + "</a>&nbsp;&nbsp;";
						 $('<a href="javascript:PagingHelper.gotoPage('+ i +');"></a>')
			                .attr('rel', i)
			                .html(i)
			                .appendTo(navtemp);
										
					}
				}
				outputTemp += "</ul>"
				outputTemp += "</div>"
				return outputTemp;

			},
			'gotoPage' : function(pageNum) {

				console.log("Current page:" + pageNum);
				if (pageNum <= 5) {
					$("#pagingHtml").html(PagingHelper.pagingHtml(0, 10));

				} else
					$("#pagingHtml").html(PagingHelper.pagingHtml(pageNum - 5, pageNum + 5));
				range = [];
				range.push(pageNum);
				range.push(pageviewNum);

				Data.pageNum = pageNum;
				Data.numList = pageviewNum;

				$.ajax({
					"url" : "/read",
					"type" : "POST",
					"dataType" : "json",
					"async" : false,
					"data" : Data
				}).done(function(listajax) {
					console.log("success");
					console.log(listajax.length);
					console.log(listajax.tostring);
					datas = JSON.parse(JSON.stringify(listajax));
					console.log(datas[0]["name"]);

				});
				outputHtml = '';
				for (var i = 0; i <= 10; i++) {
					outputHtml += "<div class ='something'>";
					outputHtml += datas[i]["id"];
					outputHtml += " :: " + datas[i]["name"];
					outputHtml += "<br>"
				}

				outputHtml += "</div>"
				$("#shHtml").html(outputHtml);

			}

		}
	</script>
<style>
#nav {
	width: 500px;
	text-align: center;
}

#nav a {
	display: inline-block;
	padding: 3px 5px;
	margin-right: 10px;
	font-family: Tahoma;
	background: #ccc;
	color: #000;
	text-decoration: none;
}

#nav a.active {
	background: #333;
	color: #fff;
}
</style>
</body>
</html>