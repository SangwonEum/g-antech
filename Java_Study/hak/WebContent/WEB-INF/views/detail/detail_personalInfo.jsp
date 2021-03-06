<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style type="text/css">
div {
	font-family: 'Jeju Gothic';
}

.well {
	background-color: white;
	border-radius: 0px;
	padding: 30px;
	margin-top: -1px;
	margin-bottom: -1px;
}

.mKind {
	font-weight: bold;
	font-size: 22px;
	font-family: 나눔고딕;
}

.price {
	color: #04B486;
	font-size: 20px;
	font-weight: bold;
}

.title {
	font-size: 16px;
}

.room_address {
	color: gray;
}

.info, .title, .address {
	margin-top: 5px;
	margin-bottom: 5px;
}

.agent_office {
	font-weight: bold;
	font-size: 17px;
	margin-bottom: 5px;
}

.office_address {
	margin-bottom: 10px;
}

.office_address, agent_name, agency_number {
	font-size: 14px;
	
}

.msg {
	font-size: 12px;
	color: gray;
	margin-bottom: 15px;
}

.contact {
	background-color: #04B486;
	color: white;
}

.table > tbody > tr {
	height: 30px;
}

.table > tbody > tr > th {
	font-size: 13px;
	vertical-align: middle;
	text-align: center;
}

.table > tbody > tr > td {
	font-size: 13px;
	vertical-align: middle;
}

</style>

<div class="well">
	<div class="info">
			<span class="mKind">${list1.B_RKIND }</span>&nbsp;
		<c:choose>
		<c:when test="${list1.B_MPAY eq 0 }">
		<span class="mKind">전세</span><br/>
		</c:when>
		<c:otherwise>
		<span class="mKind">월세</span><br/>
		
		</c:otherwise>
		</c:choose>
		<span class="price">${list1.B_DEPOSIT }/${list1.B_MPAY } 만원</span> 
	</div>
	
	<div class="title">
		${list1.B_RINFO}	
	</div>
	
	<div class="room_address">
		${list1.B_LOCATION }
	</div>
	<hr/>
	<button id="zzim" class="btn btn-default btn-lg btn-block">
		<span class="glyphicon glyphicon-heart"></span> 찜
	</button>
</div>

<div class="well">
	<div class="agent_office">
			<span style="padding: 3px; background-color: #04B486; 
						border-radius: 5px; color: white;">개인</span>	
	</div>
	<div class="boss">
		개인 직거래
	</div>
	<div class="office_address">
		${list1.B_TITLE }
	</div>
	<div class="agent_name"> 
	<c:choose>
		<c:when test="${sessionScope.email eq list.EEMAIL }">
		</c:when>
		<c:otherwise>
		[등록인] ${list.ID }	
			<button class="btn" type="button"  id="msgbtn" data-toggle="modal"
			data-target="#myMsg">
		 				<span class="glyphicon glyphicon-envelope"></span>
		 	</button>
		</c:otherwise>
	</c:choose>
	</div>
	<div class="agency_number">
		이메일 : ${list.EEMAIL }
	</div>
	<div class="msg">
		<span class="glyphicon glyphicon-info-sign"></span> 개인간 직거래시 사기에 주의하세요
	</div>

	<button class="btn btn-default btn-info btn-lg btn-block contact"
		data-toggle="modal" data-target="#myModal">
		<span class="glyphicon glyphicon-earphone"></span> 연락처
	</button>
	
	<hr/>
	<button class="btn btn-default btn-info btn-lg btn-block contact" id="write">
		<span class="glyphicon glyphicon-pencil"></span> 댓글
	</button>
	
	<!-- Modal 영역 - 중개사 연락처 -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog modal-sm">
			<div class="modal-content" style="padding: 10px;">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<div align="center">
					<h3 style="color: #82E0AA; margin-bottom: 20px;">
						[ 매물번호 ${list1.SELL_NUM } ]
					</h3>
				</div>
				<div align="center">
					<table class="table">
						<tbody>
							<tr>
								<th>개인 직거래</th>
								<td></td>
							</tr>
							<tr>
								<th>이름</th>
								<td>${list.ID }</td>
							</tr>
							<tr>
								<th>연락처</th>
								<td>${list.TELENUM }</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div align="center" style="margin-bottom: 15px;">
					<h4>등록인 : ${list.ID }</h4>
				</div>
				<div class="modal-contact" align="center">
					연락처 : ${list.TELENUM }
				</div>
				<div align="center" style="margin-top: 20px; margin-bottom: 20px;">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						닫기
					</button>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- ==================== 댓글 ======================= -->
<div class="modal fade" id="myWrite" role="dialog">
	<div class="modal-dialog modal-la">
		<div class="modal-content" style="padding: 10px;">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<div class="modal-contact" align="center">댓글을 입력해주세요</div>
			<div style="height: 20px"></div>
			<div>
				<input type="text" placeholder="댓글을 입력해주세요" class="form-control"
					name="comment" id="comment">
			</div>
			<div style="display: none;">
				<input type="text" value="${num }" name="roomnumber" id="roomnumber">
			</div>
			<div align="center" style="margin-top: 20px; margin-bottom: 20px;">
				<button type="submit" class="btn btn-primary" id="rwrite" >
					등록</button>
				<button type="button" class="btn btn-default" data-dismiss="modal"
					id="rclose">닫기</button>
			</div>
		</div>
	</div>
</div>

<!-- ======================= 메세지 ======================== -->
<div class="modal fade" id="myMsg" role="dialog">
	<div class="modal-dialog modal-la">
		<div class="modal-content" style="padding: 10px;">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<div class="modal-contact" align="center">메세지를 입력해주세요</div>
			<div style="height: 20px"></div>
			<div>
				<input type="text" placeholder="메세지를 입력해주세요" class="form-control"
					name="massage" id="massage">
			</div>
			<div style="display: none;">
				<input type="text" value="${list.EEMAIL }" name="registr" id="registr">
			</div>
			<div align="center" style="margin-top: 20px; margin-bottom: 20px;">
				<button type="button" class="btn btn-primary" id="rmsg" >
					등록</button>
				<button type="button" class="btn btn-default" data-dismiss="modal"
					id="rclose">닫기</button>
			</div>
		</div>
	</div>
</div>

<div style="display: none;" id="input">

	
	 <div class="table1" style="margin-top: 30px;">
	 	<c:forEach items="${Clist  }" var="i" >
	 		<div class="row">
		 		<div class="col-sm-10">
		 			<img alt="${i.ID}" src="/images/cmtIcon.png" width="18px;" height="18px;">
		 			<b style="font-size: 15px; font-family: 나눔고딕;"> ${i.ID}(${i.EMAIL })</b><br/>
		 			<div style="font-size: 14px; font-family: 나눔고딕; margin-top: 10px;">
		 				${i.RCOMMENT }
		 			</div>
		 			<div style="font-size: 12px; font-family: 나눔고딕; color: gray; margin-top: 10px;">
		 				등록 일자 : <fmt:formatDate value="${i.RSYSDATE }" pattern="yyyy/MM/dd hh:mm"/>
		 			</div>
		 		</div>
		 		<div class="col-sm-2">
		 			<button class="btn commentdel" type="button" 
		 				style="background-color: white;" value="${i.NUM }">
		 				<span class="glyphicon glyphicon-remove-circle"></span>
		 			</button>
		 		</div>
		 	</div>
		 	<hr style="margin-top: 20px; margin-bottom: 20px;"/>
	 	</c:forEach>
	 </div>
	
	<div id="table_div" style="padding-left: 20%"></div>
	<div align="center" >
	<c:if test="${size eq 0 }">
	<div style="height: 35px"></div>
	<div class="modal-contact" align="center">등록된 댓글이 없습니다</div>
	</c:if>
	<c:if test="${page ne 1 }">
		<a href ="/detail?num=${num }&page=${page -1}">이전</a> 
	</c:if>
	<c:forEach var="p" begin="1" end="${size }" varStatus="vs">
		<c:choose>
			<c:when test="${p eq page }">
				<b style="color: red;">${p }</b>
			</c:when>
			<c:otherwise>
				<a href ="/detail?num=${num }&page=${p}">${p }</a> 
			</c:otherwise>
		</c:choose>
		<c:if test="${vs.last eq false }">|</c:if>
	</c:forEach>
	<c:if test="${page lt size }">
		<a href ="/detail?num=${num }&page=${page +1}">다음</a> 
	</c:if>
</div>
	<div style="height: 25px"></div>

	<div align="center">
		<button type="submit" class="btn btn-primary" data-toggle="modal"
			data-target="#myWrite" id="commentadd">등록</button>
		<button type="button" class="btn btn-danger" id="ccansle">취소</button>
	</div>

</div>

<div style="height: 50px"></div>


<script>

	//댓글 -> 로그인이 안되어있으면 window.alert 창..

	// 댓글 삭제
	$(".commentdel").click(function() {
		//alert($(this).val());
		var delC = new XMLHttpRequest();
		delC.open("get", "/commentdel?num=" + $(this).val(), true);
		delC.send();
		delC.onreadystatechange = function() {
			if (delC.readyState == 4 && delC.status == 200) {
				var delCC = delC.responseText;
				console.log(delCC);
				if (delCC == 'YY') {
					window.alert("댓글을 삭제 했습니다");
					history.go(0); // location.reload() 랑 같은 효과(?)
				} else {
					window.alert("등록자만 삭제할수 있습니다")
				}
			}
		}
	});

	//댓글 기능
	$("#write").click(function() {
		<c:choose>
		<c:when test="${sessionScope.id == null }">
		window.alert("로그인 후 사용 가능합니다");
		</c:when>
		<c:otherwise>

		$("#input").fadeToggle();

		</c:otherwise>
		</c:choose>

	})
	$("#ccansle").click(function() {
		$("#input").fadeOut();
	})

	$("#rwrite").click(
			function() {
				var com = new XMLHttpRequest();
				com.open("get", "/comment?rcomment=" + $("#comment").val()
						+ "&roomnumber=" + $("#roomnumber").val(), true);
				com.send();
				com.onreadystatechange = function() {
					if (com.status == 200 && com.readyState == 4) {
						var ccom = com.responseText;
						console.log(ccom);
						if (ccom == 'YYY') {
							window.alert("댓글 등록이 성공적으로 처리 되었습니다");
							location.reload();
						} else {
							window.alert("댓글 등록중 오류가 발생 하였습니다");
						}
					}
				}

			})
			
			
			// 메세지
			$("#rmsg").click(function() {
				var msg = new XMLHttpRequest();
				msg.open("get", "/massage?massage=" + $("#massage").val()
						+ "&registr=" + $("#registr").val(), true);
				msg.send();
				msg.onreadystatechange = function() {
					if (msg.status == 200 && msg.readyState == 4) {
						var mmsg = msg.responseText;
						console.log(mmsg);
						if (mmsg == 'MY') {
							window.alert("메세지가 정상적으로 전송 되었습니다");
							location.reload();
						} else {
							window.alert("메세지 전송중 오류가 발생 하였습니다");
						}
					}
				}

			})

	$("#zzim").on("click", function() {
		if (!($(this).hasClass("active"))) {
			$(this).addClass("active");
			$(this).css("color", "red");
			$(this).css("background-color", "white");
			zzimadd();

		} else {
			$(this).removeClass("active");
			$(this).css("color", "black");
			$(this).css("background-color", "white");
			zzimdel();
		}
	});

	// 찜 추가
	function zzimadd() {
		var zzim = new XMLHttpRequest();
		zzim.open("get", "/zzimadd?roomnumber=" + $("#roomnumber").val(), true);
		zzim.send();
		zzim.onreadystatechange = function() {
			if (zzim.status == 200 && zzim.readyState == 4) {
				var zzim1 = zzim.responseText;
				console.log(zzim1);
				if (zzim1 == 'ZY') {
					window.alert("찜목록에 추가되었습니다");
				}
			}
		}
	}

	// 찜 삭제
	function zzimdel() {
		var zzim = new XMLHttpRequest();
		zzim.open("get", "/zzimdel?roomnumber=" + $("#roomnumber").val(), true);
		zzim.send();
		zzim.onreadystatechange = function() {
			if (zzim.status == 200 && zzim.readyState == 4) {
				var zzim1 = zzim.responseText;
				console.log(zzim1);
				if (zzim1 == 'ZN') {
					window.alert("찜목록에서 삭제되었습니다");
				}
			}
		}
	}
</script>
<!-- 새로 고침후 찜 버튼 활성화 시키기 -->
<c:if test="${zzim eq 1}">
<script>
	  $("#zzim").addClass("active");
	  $("#zzim").css("color","red");
</script>
</c:if>
	
	
