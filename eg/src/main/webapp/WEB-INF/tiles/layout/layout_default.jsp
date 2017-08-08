<%--
  User: 김석영
  Date: 2017-07-10
  Time: 오후 5:28
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <%@ include file="/WEB-INF/common/meta.jspf" %>
    <tiles:insertAttribute name="global"/>
    <tiles:insertAttribute name="script"/>
</head>
<body>
<header>
    <tiles:insertAttribute name="header"/>
</header>
<section>
    <tiles:insertAttribute name="body"/>
</section>
<footer>
    <tiles:insertAttribute name="footer"/>
</footer>
</body>
</html>