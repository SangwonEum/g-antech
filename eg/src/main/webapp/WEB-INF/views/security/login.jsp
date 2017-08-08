<%--
  Created by IntelliJ IDEA.
  User: crom
  Date: 2017-07-31
  Time: 오후 5:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ include file="/WEB-INF/common/declare.jspf" %>

<validator:javascript formName="loginForm" staticJavascript="false" xhtml="true" cdata="false"/>
<script>
function fnSubmit(thisForm) {
    try {
        if (!validateLoginForm(thisForm)) {
            return false;
        } else {
            return true;
        }
    } catch (e) {
        console.error(e);
    }
    return false;
}
$(document).ready(function(){
    <c:if test="${error == 1}">
        alert('<spring:message code="alert.login.fail" />');
    </c:if>
});
</script>
<div class="loginWrap">
    <form id="loginForm" name="loginForm" action="/j_spring_security_check" method="post">
        <fieldset id="" class="">
            <legend class="hidden">LOGIN</legend>
            <p>LOGIN</p>
            <label for="j_username" class="hidden">아이디</label>
            <input type="text" name="j_username" class="input_row id" id="j_username" placeholder="아이디" title="아이디"/>
            <label for="j_password" class="pw hidden">비밀번호</label>
            <input type="password" name="j_password" class="input_row pw" id="j_password" placeholder="비밀번호" title="비밀번호"/>
            <input type="submit" class="it " title="로그인" value="LOGIN" name="" onclick="return fnSubmit(this.form);">
        </fieldset>
    </form>
    <%--<ul class="joinPw">
        <li class="fl"><a href="#">회원가입</a></li>
        <li class="fr"><a href="#">비밀번호 재설정</a></li>
    </ul>--%>
</div>
<!-- //wrap -->