<%@ page import="com.ckeditor.CKEditorConfig" %>
<%--
  User: 김석영
  Date: 2017-07-12
  Time: 오전 11:03
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ include file="/WEB-INF/common/declare.jspf"%>
<script>
    var alert_condition_size = '<spring:message code="alert.condition.size" />';
</script>
<script type="text/javascript" src="<c:url value='/resources/js/app/detail.js'/>"></script>
<style>
    #violtTd span {
        height: 23px;
        display: block;
        padding-top: 5px;
    }
</style>
<validator:javascript formName="modelDevInfoForm" staticJavascript="false" xhtml="true" cdata="false"/>
<c:set var="isFlag" value="${empty appDetailCommand.amtAppCollInfoVO.appSn ? 'insert' : 'update'}"/>
<form:form commandName="appDetailCommand" id="appDetail" name="appDetail" action="${isFlag == 'insert' ? '/app/insert.do' : '/app/update.do'}" method="post" enctype="multipart/form-data">
<c:choose>
    <c:when test="${isFlag =='update'}">

    </c:when>
    <c:otherwise>
        <form:hidden path="amtAppCollInfoVO.collType" />
        <form:hidden path="amtAppCollInfoVO.collDate" />
    </c:otherwise>
</c:choose>
<div id="app_detail" class="wrap bordWrap">

    <div class="topMenuWrap">
        <div class="topMenu">
            <p>앱관리</p>
            <select name="" title="">
                <option value="" selected="selected">앱관리</option>
                <option value="">앱정보조회</option>
                <option value="">메일이력관리</option>
            </select>
        </div><!-- //topMenu -->
    </div><!-- //topMenuWrap -->

    <div class="bord appWrap">
        <h2>앱정보 등록/수정</h2>

        <div class="app appInfo">
            <p class="title">앱정보</p>
            <table cellpadding="0" cellspacing="0" class="" summary="" >
                <caption class="hidden">앱정보</caption>
                <colgroup>
                    <col width="10%"/>
                    <col>
                    <col width="8%"/>
                    <col>
                    <col width="10%"/>
                    <col>
                    <col width="8%"/>
                    <col>
                </colgroup>
                <tbody>
                    <c:choose>
                        <c:when test="${isFlag =='update'}">
                            <th>앱번호</th>
                            <td><form:input path="amtAppCollInfoVO.appSn"/></td>
                        </c:when>
                        <c:otherwise>
                            <td></td>
                            <td></td>
                        </c:otherwise>
                    </c:choose>
                    <th>마켓</th>
                    <td>
                        <form:select path="amtAppCollInfoVO.mkType">
                            <option value="">선택</option>
                            <form:options items="${mktMap}" itemValue="subCd" itemLabel="subCdNm" />
                        </form:select>
                    </td>
                    <th>카테고리</th>
                    <td>
                        <form:select path="amtAppCollInfoVO.clasType">
                            <option value="">선택</option>
                            <form:options items="${clatMap}" itemValue="subCd" itemLabel="subCdNm" />
                        </form:select>
                    </td>
                    <th>이미지</br>URL</th>
                    <td><form:input path="amtAppCollInfoVO.appLeaderImg"/></td>
                </tr>
                <tr>
                    <th>앱 ID</th>
                    <td><form:input path="amtAppCollInfoVO.appId"/></td>
                    <th>앱 명</th>
                    <td><form:input path="amtAppCollInfoVO.appNm"/></td>
                    <th colspan="3"></th>
                    <td rowspan="4">
                        <c:choose>
                            <c:when test="${isFlag =='update'}">
                                <img src="${appDetailCommand.amtAppCollInfoVO.appLeaderImg}"  alt="앱이미지" width="180" height="150" class="imgWrap"/>
                            </c:when>
                            <c:otherwise>
                                <img src="<c:url value='/resources/img/no_image.png'/>"  alt="" width="180" height="150" class="imgWrap"/>
                            </c:otherwise>
                        </c:choose>
                    </td>
                </tr>
                <tr>
                    <th>수집 URL</th>
                    <td colspan="5"><form:input path="amtAppCollInfoVO.collUrl"/></td>
                </tr>
                <tr>
                    <th>앱 가격</th>
                    <td>
                        <form:input path="amtAppCollInfoVO.appPrice" cssClass="price"/>
                        <form:select path="amtAppCollInfoVO.priceUnit" cssClass="won">
                            <option value="">선택</option>
                            <form:options items="${priuMap}" itemValue="subCd" itemLabel="subCdNm" />
                        </form:select>
                    </td>
                    <th>앱 용량</th>
                    <td><form:input path="amtAppCollInfoVO.appSize"/></td>
                    <th>수정일자</th>
                    <td>
                        <div class="date"><form:input path="amtAppCollInfoVO.appUpdDate" cssClass="datepicker"/></div>
                    </td>
                </tr>
                <tr>
                    <th>이용등급</th>
                    <td>
                        <form:select path="amtAppCollInfoVO.appUseGrade">
                            <option value="">선택</option>
                            <form:options items="${appgMap}" itemValue="subCd" itemLabel="subCdNm" />
                        </form:select>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="app devInfo">
            <p class="title">개발사정보</p>
            <table cellpadding="0" cellspacing="0" class="" summary="" >
                <caption></caption>
                <colgroup>
                    <col width="10%"/>
                    <col>
                    <col width="10%"/>
                    <col>
                    <col width="10%"/>
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <th></th>
                    <td></td>
                    <th>개발사 명</th>
                    <td>
                        <form:input path="amtAppCollInfoVO.devNm" id="amtAppCollInfoVO_devNm" cssClass="devName"/>
                        <a href="#"><img src="<c:url value='/resources/img/dev.png'/>"  alt="개발사명으로 찾기" class="devSearch" id="devSearch"/></a>
                    </td>
                    <th></th>
                    <td></td>
                </tr>
                <tr>
                    <th>이메일</th>
                    <td><form:input path="amtAppCollInfoVO.devEmail" id="amtAppCollInfoVO_devEmail"/></td>
                    <th></th>
                    <td></td>
                    <th>홈페이지</th>
                    <td><form:input path="amtAppCollInfoVO.devHomepy" id="amtAppCollInfoVO_devHomepy"/></td>
                </tr>
                <tr>
                    <th>주소</th>
                    <td colspan="5"><form:input path="amtAppCollInfoVO.devAddr" id="amtAppCollInfoVO_devAddr"/></td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="app moni">
            <p class="title">모니터링 결과</p>
            <table cellpadding="0" cellspacing="0" class="" summary="" >
                <caption></caption>
                <colgroup>
                    <col width="15%"/>
                    <col>
                    <col width="10%"/>
                    <col>
                    <col width="10%"/>
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <th>상태</th>
                    <td>
                        <form:select path="amtAppMonitResltVO.monitStat" cssClass="state">
                            <option value="">선택</option>
                            <form:options items="${appsMap}" itemValue="subCd" itemLabel="subCdNm" />
                        </form:select>
                        <input type="image" class="read" id="read" title="" value="" name="" src="<c:url value='/resources/img/read.png'/>"/>
                    </td>
                    <th>결제방법</th>
                    <td>
                        <form:select path="amtAppMonitResltVO.paymMethd">
                            <form:options items="${paytMap}" itemValue="subCd" itemLabel="subCdNm" />
                        </form:select>
                    </td>
                </tr>

                <tr>
                    <th>담당자</th>
                    <td>
                        <form:select path="amtAppMonitResltVO.directorId">
                            <<option value="">선택</option>
                            <form:options items="${userList}" itemValue="userId" itemLabel="userNm" />
                        </form:select>
                    </td>
                </tr>

                <tr>
                    <th>위반조항</th>
                    <td colspan="5" id="violtTd">
                        <form:checkboxes path="violClausCds" items="${viotMap}" itemValue="subCd" itemLabel="subCdNm" />
                    </td>
                </tr>

                <c:choose>
                    <c:when test="${isFlag =='update'}">
                        <tr>
                            <th class="top">스크린샷</th>
                            <td colspan="5">
                                <ul class="screen">
                                    <c:forEach items="">
                                        <li>
                                            <p class="imgs"><a href="#" id="originImg"><img src="<c:url value='/resources/img/no_image.png'/>"  alt="" width="128" height="86"/></a></p>
                                            <span class="txt">item1</span>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </td>
                        </tr>
                    </c:when>
                    <c:otherwise>
                    </c:otherwise>
                </c:choose>


                <tr>
                    <th>스크린샷 추가</th>
                    <td colspan="5"class="screenFile">
                        <div class="">
                            <%--<input class="uploadName" value="" disabled="disabled"> <label for="fileFind">파일찾기</label>--%>

                        </div>
                        <p class="add"><a href="#"><img src="<c:url value='/resources/img/add.gif'/>"  alt="추가" id="addBtn"/></a></p>
                        <input type="file" name="files"/>
                        <input type="file" name="files"/>
                        <input name="file_1" id="egovComFileUploader" type="file"/>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <c:choose>
            <c:when test="${isFlag =='update'}">
                <div class="app contents">
                    <p class="title">앱조치 요청 내용</p>
                    <table cellpadding="0" cellspacing="0" class="" summary="" >
                        <caption></caption>
                        <colgroup>
                            <col width="10%"/>
                            <col width="*"/>
                            <col width="20%"/>
                        </colgroup>
                        <thead>
                        <tr class="none">
                            <th>No</th>
                            <th class="txt">요청내용</th>
                            <th>요청시간</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td class="txt"><a href="#">수정요청 3차</a></td>
                            <td>17/06/12 15:10</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td class="txt"><a href="#">수정요청 3차</a></td>
                            <td>17/06/12 15:10</td>
                        </tr>
                        <tr class="">
                            <td>3</td>
                            <td class="txt"><a href="#">수정요청 3차</a></td>
                            <td>17/06/12 15:10</td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="bot">
                        <div class="fl">
                            <dl class="">
                                <dt>조치 요청사항</dt>
                                <dd>
                                    <textarea></textarea>
                                </dd>
                            </dl>
                        </div>
                        <div class="fr">
                            <dl class="">
                                <dt>최종 요청 일시</dt>
                                <dd>17/06/12 15:11:11</dd>
                                <dt>총 요청 건수</dt>
                                <dd class="num"><span>1</span>&nbsp;건</dd>
                            </dl>
                            <div class="btn">
                                <p class="long"><a href="#">요청메일발송</a></p>
                                <p><a href="#">미리보기</a></p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="app action">
                    <p class="title">조치 결과</p>
                    <div class="fl">
                        <dl class="">
                            <dt>조치결과</dt>
                            <dd><textarea></textarea></dd>
                        </dl>
                    </div>
                    <div class="fr">
                        <dl class="">
                            <dt>회신이메일</dt>
                            <dd>ddd@nate.com</dd></br>
                            <dt>조치 결과 입력일시</dt>
                            <dd>17/06/12 15:11:11</dd>
                        </dl>
                        </dl>
                    </div>
                </div>
            </c:when>
            <c:otherwise>
            </c:otherwise>
        </c:choose>

        <%
            CKEditorConfig settings = new CKEditorConfig();
            settings.addConfigValue("toolbar", "[[ 'Styles','Format','Font','FontSize' ],[ 'TextColor','BGColor' ],[ 'Bold','Italic','Underline','Strike','-','RemoveFormat' ],[ 'NumberedList','BulletedList','-','Outdent','Indent','-','Blockquote','-','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],[ 'Link','Unlink']]");
        %>

        <div class="app end">
            <p class="title">기타</p>
            <form:textarea path="amtAppMonitResltVO.note"></form:textarea>
            <ckeditor:replace replace="amtAppMonitResltVO.note" config="<%=settings %>" basePath="${pageContext.request.contextPath}/html/egovframework/com/cmm/utl/ckeditor/" />
            <script>
                CKEDITOR.config.removeDialogTabs = "link:upload;link:advanced;image:Upload";
            </script>
        </div>

        <div class="botBtn">
            <p><a href="#" onclick="amtDetail.fnSubmit(document.forms[0])">저장</a></p>
            <p><a href="<c:url value='/app/list.do'/>">목록</a></p>
        </div>

    </div><!-- //bord -->

</div><!-- //wrap -->

<!-- 검색조건 유지 -->
<input type="hidden" name="searchKeyword" value="<c:out value='${SearchPageNavigationVO.searchKeyword}'/>"/>
<input type="hidden" name="pageIndex" value="<c:out value='${SearchPageNavigationVO.pageIndex}'/>"/>
</form:form>


<div id="modalPop" style="display:none">
    <div class="codePop developPop" id="codePop">
        <div class="top">
            <p class="develop">개발사 조회 팝업</p>
        </div>
        <div class="codePopCont developPopCont">
            <form id="modelDevInfoForm" name="modelDevInfoForm">
            <div class="dlWrap">
                <dl>
                    <dt>개발사 명 / 이메일</dt>
                    <dd><input type="text" class=" " title="개발사 명 / 이메일" id="modelDevInfoForm_searchKeyword" name="searchKeyword" value="@gmail" /></dd>

                    <dt class="srt">연락처</dt>
                    <dd><input type="text" class=" " title="연락처" id="modelDevInfoForm_devPhone" name="devPhone"/></dd>

                    <dt>주소</dt>
                    <dd class="long"><input type="text" class="주소" title="" id="modelDevInfoForm_devAddr" name="devAddr" value="서울"/></dd>
                </dl>
                <p class="search"><a href="#" onclick="amtDetail.dev.search(document.modelDevInfoForm)">검색</a></p>
            </div>
            </form>

            <div class="tabWrap">
                <table cellpadding="0" cellspacing="0" class="" summary="">
                    <caption></caption>
                    <colgroup>
                        <col width="5%"/>
                        <col width="20%"/>
                        <col width="20%"/>
                        <col width="20%"/>
                        <col width="15%"/>
                        <col width="*"/>
                    </colgroup>
                    <thead>
                    <tr>
                        <th><input type="checkbox" id="checkAll" title="" value="" name=""/></th>
                        <th>개발사 명</th>
                        <th>이메일</th>
                        <th>연락처</th>
                        <th>주소</th>
                        <th>홈페이지</th>
                    </tr>
                    </thead>
                    <tbody id="devInfoTbody">
                    <tr>
                        <td colspan="6">키워드를 입력후 검색해 주세요</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="pagingWrap">
                <ul class="paging">
                    <li class="bn"><a href="#" class="arrowBtn prevBtn"></a></li>
                    <li class="bn"><span class="now">1</span></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">6</a></li>
                    <li><a href="#">7</a></li>
                    <li><a href="#">8</a></li>
                    <li><a href="#">9</a></li>
                    <li><a href="#">10</a></li>
                    <li class="bn"><a href="#" class="arrowBtn nextBtn"></a></li>
                </ul>
            </div>
        </div>
        <div class="btnWrap">
            <%--<p class="btn"><a href="#">확인</a></p>--%>
            <p class="btn del"><a href="#" id="cancel">취소</a></p>
        </div>
        <span><a href="#"><img src="<c:url value='/resources/img/close.png'/> "  alt="닫기" id="closeBtn"/></a></span>
    </div>
</div>


<div id="modalPop1" style="display:none">
    <div class="codePop developPop historypop" id="">
        <div class="top">
            <p class="history">조치이력조회</p>
        </div>
        <div class="codePopCont developPopCont">
            <div class="dlWrap">
                <dl>
                    <dt>앱 명</dt>
                    <dd><input type="text" class=" " title="" value="" name=""/></dd>

                    <dt>앱 아이디</dt>
                    <dd><input type="text" class=" " title="" value="" name=""/></dd>

                    <dt>개발사 명</dt>
                    <dd><input type="text" class=" " title="" value="" name=""/></dd>

                    <dt>개발사 이메일</dt>
                    <dd><input type="text" class=" " title="" value="" name=""/></dd>
                </dl>
                <p class="search"><a href="#">검색</a></p>
            </div>

            <div class="tabWrap">
                <table cellpadding="0" cellspacing="0" class="" summary="">
                    <caption></caption>
                    <colgroup>
                        <col width="10%"/>
                        <col width="15%"/>
                        <col width="15%"/>
                        <col width="30%"/>
                        <col width="30%"/>
                    </colgroup>
                    <thead>
                    <tr>
                        <th>No</th>
                        <th>상태</th>
                        <th>시간</th>
                        <th>요청내용</th>
                        <th>조치내용</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>1</td>
                        <td>위반수정</td>
                        <td>17/06/10</td>
                        <td></td>
                        <td>수정완료하였습니다.</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>위반</td>
                        <td>17/06/10</td>
                        <td>수정해주세요.</td>
                        <td></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="pagingWrap">
                <ul class="paging">
                    <li class="bn"><a href="#" class="arrowBtn prevBtn"></a></li>
                    <li class="bn"><span class="now">1</span></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">6</a></li>
                    <li><a href="#">7</a></li>
                    <li><a href="#">8</a></li>
                    <li><a href="#">9</a></li>
                    <li><a href="#">10</a></li>
                    <li class="bn"><a href="#" class="arrowBtn nextBtn"></a></li>
                </ul>
            </div>
        </div>
        <div class="btnWrap">
            <p class="btn"><a href="#">확인</a></p>
            <p class="btn del"><a href="#" id="cancel">취소</a></p>
        </div>
        <span><a href="#"><img src="<c:url value='/resources/img/close.png'/>"  alt="닫기" id="closeBtn"/></a></span>
    </div>
</div>
