<%--
  Created by IntelliJ IDEA.
  User: crom
  Date: 2017-08-02
  Time: 오후 5:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ include file="/WEB-INF/common/declare.jspf" %>
<validator:javascript formName="passwordChangeForm" staticJavascript="false" xhtml="true" cdata="false"/>
<script>
    var PASSWORDCHNGE_ACTION = '<c:url value="/password/changeAction.do"/>';
</script>
<script type="text/javascript" src="<c:url value='/resources/js/password/change.js'/>"></script>

<div class="loginWrap pwChangeWrap" style="height: 292px">
    <form name="passwordChngeForm" method="POST" action="<c:url value="/password/changeAction.do"/>">
        <fieldset id="" class="">
            <legend class="hidden">비밀번호 재설정</legend>
            <p>비밀번호 재설정</p>
            <label for="userPw" class="hidden">비밀번호</label>
            <input type="password" class="input_row" id="userPw" name="userPw" placeholder="비밀번호" title="비밀번호">
            <label for="userPwCheck" class="hidden">비밀번호 확인</label>
            <input type="password" class="input_row" id="userPwCheck" name="userPwCheck" placeholder="비밀번호 확인" title="비밀번호 확인">
        </fieldset>
        <ul class="joinPw pwSubmit">
            <li><input type="submit" class=" " title="확인" value="확인" name="" onclick="return amtChange.fnSubmit(this.form);"></li>
        </ul>
    </form>
</div>
<!-- //wrap -->