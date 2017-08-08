<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ include file="/WEB-INF/common/declare.jspf"%>
<script>
var action_detail = "<c:url value='/app/detail.do'/>";
var action_list = "<c:url value='/app/list.do'/>";
</script>
<script src="<c:url value='/resources/js/app/list.js'/>"></script>
<div class="wrap bordWrap">
	<form:form commandName="SearchPageNavigationVO" id="appList"
		name="appList" action="/app/list.do" method="post">
		<input type="hidden" name="appSn" />
		<div class="topMenuWrap">
			<div class="topMenu">
				<p>앱관리</p>
				<select name="" title="">
					<option value="" selected="true">앱정보조회</option>
					<option value="">앱관리</option>
					<option value="">메일이력관리</option>
				</select>
			</div>
			<!-- //topMenu -->
		</div>
		<!-- //topMenuWrap -->

		<div class="bord appWrap">
			<h2>앱 정보 조회</h2>

			<div class="app appInfo appcon">
				<p class="title">검색조건</p>
				<table cellpadding="0" cellspacing="0" class="" summary="">
					<caption class="hidden">검색정보</caption>
					<colgroup>
						<col width="10%" />
						<col>
						<col width="10%" />
						<col>
						<col width="10%" />
						<col>
					</colgroup>
					<tbody>
						<tr>
							<th>마켓</th>
							<td><form:select path="mkType">
                                <<option value="">전체</option>
									<form:options items="${mktMap}" itemValue="subCd"
										itemLabel="subCdNm" />
								</form:select></td>
							<th>카테고리</th>
							<td><form:select path="clasType">
                                <<option value="">전체</option>
									<form:options items="${clatMap}" itemValue="subCd"
										itemLabel="subCdNm" />
								</form:select></td>
							<th>담당자</th>
							<td><form:select path="directorId">
                                <<option value="">전체</option>
									<form:options items="${userList}" itemValue="userId"
										itemLabel="userNm" />
								</form:select></td>
						</tr>
						<tr>
							<th>앱명 or ID</th>
							<td colspan="5"><form:input path="searchKeyword" type="text"
									class="appNameID" title="" placeholder="ID 또는 앱 이름을 입력하세요." /></td>
						</tr>
						<tr>
							<th>상태</th>
							<td><form:select path="appS">
									<form:option value="">전체</form:option>
									<form:options items="${appsMap}" itemValue="subCd"
										itemLabel="subCdNm" />
								</form:select></td>
							<th>이용등급</th>
							<td><form:select path="appUseGrade">
									<form:option value="">전체</form:option>
									<form:options items="${appgMap}" itemValue="subCd"
										itemLabel="subCdNm" />
								</form:select></td>
							<th>스크린샷</th>
							<td><select name="" title="">
									<option value="" selected="true">전체</option>
									<option value="">---</option>
									<option value="">---</option>
							</select></td>
						</tr>
						<tr>
							<th>개발사 명</th>
							<td><form:input path="devNm" /></td>
							<th>개발사 Email</th>
							<td><form:input path="devEmail" /></td>
							<th>연락처</th>
							<td><form:input path="devPhone" /></td>
						</tr>
					</tbody>
				</table>
				<div class="date">
					<dl class="">
						<dt>수집일자</dt>
						<dd>
							<form:input path="inptDtStart" cssClass="dateType" />
							&nbsp;~&nbsp;
							<form:input path="inptDtEnd" cssClass="dateType" />
						</dd>
						<dt class="long">업데이트 일자</dt>
						<dd>
							<form:input path="appUpdDateStart" cssClass="dateType" />
							&nbsp;~&nbsp;
							<form:input path="appUpdDateEnd" cssClass="dateType" />
						</dd>
					</dl>
					<p>
						<button value="Search" onclick="this.form.submit()">검색</button>
					</p>
				</div>
			</div>

			<div class="viewTable">
				<table cellpadding="0" cellspacing="0" class="" summary="">
					<caption></caption>
					<colgroup>
						<col width="4%" />
						<col width="8%" />
						<col width="8%" />
						<col width="10%" />
						<col width="12%" />
						<col width="8%" />
						<col width="7%" />
						<col width="8%" />
						<col width="8%" />
						<col width="7%" />
						<col width="8%" />
						<col width="*" />
					</colgroup>
					<thead>
						<tr>
							<th>No</th>
							<th>마켓명</th>
							<th>카테고리</th>
							<th>앱ID</th>
							<th>앱명</th>
							<th>이용등급</th>
							<th>상태</th>
							<th>개발사</th>
							<th>스크린샷</th>
							<th>담당자</th>
							<th>등록일자</th>
							<th>업데이트 일자</th>
						</tr>
					</thead>
					<tbody>
						<ul>
							<c:forEach var="result" items="${resultList}" varStatus="status">
								<tr>
									<td><c:out
											value="${paginationInfo.totalRecordCount+1 - ((searchPageNavigationVO.pageIndex-1) * searchPageNavigationVO.pageSize + status.count)}" /></td>
									<td>${result.mkType}</td>
									<td>${result.clasType}</td>
									<td><a href="#"
										onclick="fn_egov_select(${result.appSn}); return false;">${result.appId}</a></td>
									<td>${result.appNm}</td>
									<td>${result.appUseGrade}</td>
									<td></td>
									<td>${result.devNm}</td>
									<td></td>
									<td>${result.udpId}</td>
									<td>${result.inptDt}</td>
									<td>${result.appUpdDate}</td>
								</tr>
							</c:forEach>
						</ul>
					</tbody>
				</table>

				<div class="pagingWrap">
					<ul class="paging">
						<ui:pagination paginationInfo="${paginationInfo}" type="image"
							jsFunction="fn_egov_link_page" />
					</ul>
					<form:hidden path="pageIndex" />
				</div>

			</div>
			<!-- //viewTable -->
		</div>
		<!-- //bord -->
	</form:form>
</div>
<!-- //wrap -->
