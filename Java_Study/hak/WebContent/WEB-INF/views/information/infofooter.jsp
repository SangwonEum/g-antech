<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<div align="center" style="margin-top: 30px;">
	<c:choose>
		<c:when test="${page eq 1 }">
			<a>이전</a>
		</c:when>
		<c:otherwise>
			<a href="/informationlist?page=${page -1}">이전</a>
		</c:otherwise>
	</c:choose>

	<c:forEach var="p" begin="1" end="${size}" varStatus="vs">
		<c:choose>
			<c:when test="${page eq p }">
				<b style="color: red">${p }</b>
			</c:when>
			<c:otherwise>
				<a href="/informationlist?page=${p }">${p }</a>
			</c:otherwise>
		</c:choose>
		<c:if test="${vs.last eq false }">|</c:if>

	</c:forEach>
	<c:choose>
		<c:when test="${page eq size }">
			<a>다음</a>
		</c:when>
		<c:otherwise>
			<a href="/informationlist?page=${page +1}">다음</a>
		</c:otherwise>
	</c:choose>
</div>

<c:choose>
	<c:when test="${email eq 'master@master.com' }">
		<!-- 등록 버튼 -->
		<div align="center" style="margin: 40px;">
			<button type="submit" class="btn btn-primary" data-toggle="modal"
				data-target="#myWrite" id="commentadd">등록</button>
			<a href="/"><button type="button" class="btn btn-danger " >취소</button></a>
		</div>
		
		<!-- 등록 모달 -->
	
			<div class="modal fade" id="myWrite" role="dialog">
			<div class="modal-dialog modal-la">
				<div class="modal-content" style="padding: 40px;">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<div class="modal-contact" align="center"  style="margin-bottom: 20px;">
						<h3>관리자 공지사항 등록</h3>
					</div>
					<div style="margin-bottom: 20px;">
						<input type="text" placeholder="title" class="form-control"
							name="title" id="title">
					</div>
					<div>
						<textarea class="form-control" rows="5" cols="50" name="detail" id="detail"></textarea>
					</div>
					<div align="center" style="margin-top: 20px; margin-bottom: 20px;">
						<button type="submit" class="btn btn-default" id="rwrite" 
						data-dismiss="modal">
							등록
						</button>
						<button type="button" class="btn btn-default">
							닫기
						</button>
					</div>
				</div>
			</div>
		</div>

		
	</c:when>
	
	<c:otherwise>
		<div align="center" style="margin: 40px;">
			<a href="/">
				<button type="button" class="btn btn-danger" >
					메인페이지로
				</button>
			</a>
		</div>
	</c:otherwise>
</c:choose>

<script>

	$("#rwrite").click(function(){
		
		$.ajax({
			"url" : "/informationinsert",
			"data" : {
				"title" : $("#title").val(),
				"detail" : $("#detail").val()
			},
			"method" : "post"
		}).done(function(rst){
			if (rst == 'YYY') {
				window.alert("공지사항이 성공적으로 등록되었습니다.");
				location.reload();
			} else {
				window.alert("등록중 오류가 발생 하였습니다. 관리자에게 문의해주세요.");
				
			}
		});
	});
				
</script>

