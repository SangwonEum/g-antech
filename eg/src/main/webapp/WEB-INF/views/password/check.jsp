<%--
  Created by IntelliJ IDEA.
  User: crom
  Date: 2017-08-02
  Time: 오후 5:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ include file="/WEB-INF/common/declare.jspf" %>
<validator:javascript formName="passwordCheckForm" staticJavascript="false" xhtml="true" cdata="false"/>
<script>
    var PASSWORDCHECK_ACTION = '<c:url value="/password/change.do"/>';
</script>
<script type="text/javascript" src="<c:url value='/resources/js/password/check.js'/>"></script>

<div class="loginWrap pwChangeWrap">
    <form:form commandName="amtUserInfoVO" name="passwordCheckForm" method="post" action="/password/change.do">
        <fieldset id="" class="">
            <legend class="hidden">개인정보 확인</legend>
            <c:choose>
                <c:when test="${not empty error}">
                    <p style="color: red;">${error}</p>
                </c:when>
                <c:otherwise>
                    <p>개인정보 확인</p>
                </c:otherwise>
            </c:choose>
            <label for="userId" class="hidden">아이디</label>
            <form:input path="userId" type="text" cssClass="input_row id" placeholder="아이디 ( id@email.com )" title="아이디" value="ksymailing@gmail.com"/>
            <label for="userNm" class="hidden">성명</label>
            <form:input path="userNm" cssClass="input_row name" placeholder="성명    ( 홍길동 )" title="성명" value="김석영"/>
            <label for="userPhone" class="hidden">연락처</label>
            <form:input path="userPhone" cssClass="input_row tel" placeholder="연락처 ( 01012341234 )" title="연락처" value="01040519825"/>
        </fieldset>
        <ul class="joinPw pwSubmit">
            <li><input type="submit" class=" " title="확인" value="확인" onclick="return amtCheck.fnSubmit(this.form);" ></li>
        </ul>
    </form:form>
</div>
<!-- //wrap -->