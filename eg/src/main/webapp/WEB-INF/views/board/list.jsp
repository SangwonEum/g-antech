<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/common/declare.jspf"%>


<script>
	var action_detail = "<c:url value='/board/detail.do'/>";
	var action_list = "<c:url value='/board/notice.do'/>";
// 	var resultLists = "${resultList}";
</script>
<%-- <script src="<c:url value='/resources/js/app/list.js'/>"></script> --%>
<script src="<c:url value='/resources/js/board/list.js'/>"></script>
<link rel="stylesheet" href="/resources/editor/css/board/list.css" />
${loginVO.userId}
<div class="wrap bordWrap">
	<form:form commandName="SearchPageNavigationBoardVO" id="boardList"
			name="boardList" action="/board/notice.do" method="post">
		<div class="wrap bordWrap">

			<div class="topMenuWrap">
				<div class="topMenu">
					<p>게시판 관리</p>
					<select name="" title="">
						<option value="" selected="selected">공지사항</option>
						<option value="">자료실</option>
					</select>
				</div>
				<!-- //topMenu -->
			</div>
			<!-- //topMenuWrap -->

			<div class="bord">
				<h2>공지사항</h2>
				<div class="search">

					<span>검색어</span> <label for="searchWord"></label>
					<form:input path="searchKeyword" class="searchWord" />
					<input type="button" class="searchBtn" title="" value="search"
						id="searchBtns" onclick="return amtList.fnSubmit(this.form,0);">
					<!-- 					name="" onclick="this.form.submit()" /> -->




				</div><!-- //search -->
				<div class="viewTable">
					<table id="test" cellpadding="0" cellspacing="0" class="bordTab"
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
				
							<c:forEach var="result" items="${resultList }" varStatus="status">
								<tr>
<%-- 								<td><c:out value="${paginationInfo.totalRecordCount+1 - ((searchPageNavigationBoardVO.pageIndex-1) * searchPageNavigationBoardVO.pageSize + status.count)}"/></td> --%>
									<td>${result.brdSn }</td>
									<td>${result.brdTitle}</td>
									<td>${result.brdConts}</td>
									<td>${result.inptId }</td>
									<td>${result.inptDt }</td>

								</tr>
							</c:forEach>

			
						</tbody>
					
					</table>


					<div class="pagingWrap">
						<ul class="paging">
							<ui:pagination paginationInfo="${paginationInfo}" type="image"
								jsFunction="fn_egov_link_page" />
						</ul>
						<p class="btn" id="addList">
							<a href="#" onclick="amtList.insertReady(document.boardList, 1);">추가</a>
						</p>
						<form:hidden path="pageIndex" />

					</div>


				</div><!-- viewTable -->

			</div><!-- bord -->
<%-- 	</form:form> --%>
	<div class="bord">
		<div class="view">
			<div class="floor floor1">
				<dl class="">
					<dt>번호</dt>
					<dd class="disable" id="brdSn"></dd>
				</dl>
				<dl class="fr">
					<dt>작성일시</dt>
					<!-- 					<dd id="updDt"> -->
					<!-- 						<input type="text" class="input"> -->
					<!-- 					</dd> -->
					<dd class="disable" id="updDt"></dd>

				</dl>
				<dl class="fr">
					<dt>작성자</dt>
					<dd class="disable" id="updId"></dd>
					<!-- 					<dd id="updId"> -->
					<!-- 						<input type="text" class="input"> -->
					<!-- 					</dd> -->
				</dl>

			</div>
			<div class="floor floor2">
				<dl class="">
					<dt>제목</dt>
					<dd style="border: 0px; padding-left: 0px; padding-top: 3px;">
						<input id="brdTitle" type="text" value="empty" name="brdTitle">
					</dd>
				</dl>
			</div>
			<div class="floor floor3">
				<dl class="">
					<dt>내용</dt>
					<dd>
						<textarea cols="128" rows="9" id="brdConts" name="brdConts"></textarea>
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
				<!-- <input type="button" class="searchBtn" title="" value="search" id="searchBtns" onclick="return amtList.fnSubmit(this.form,0);"> -->

				<p class="btn">
				<a href="#" onclick="amtList.fnSubmit(document.boardList, 1);">저장</a>
				</p>
				<p class="btn">
					<a href="#">삭제</a>
				</p>
			</div>


		</div>
		<!-- view -->

	</div>
	<!-- //bord -->
	
	
	
<!-- 	</div> -->
	</form:form>

</div>
<!-- //wrap -->

