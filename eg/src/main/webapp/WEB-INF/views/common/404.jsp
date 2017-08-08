<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/common/declare.jspf"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/egovframework/sample.css'/>" />
<title>404</title>
</head>

<body>
<div>
	<ul>
		${exception.printStackTrace()}
		<li>Exception: <c:out value="${requestScope['javax.servlet.error.exception']}"/></li>
		<li>Exception type: <c:out value="${requestScope['javax.servlet.error.exception_type']}"/></li>
		<li>Exception message: <c:out value="${requestScope['javax.servlet.error.message']}"/></li>
		<li>Request URI: <c:out value="${requestScope['javax.servlet.error.request_uri']}"/></li>
		<li>Servlet name: <c:out value="${requestScope['javax.servlet.error.servlet_name']}"/></li>
		<li>Status code: <c:out value="${requestScope['javax.servlet.error.status_code']}"/></li>
		<li>Stack trace:
			<pre>${pageContext.out.flush()}${exception.printStackTrace(pageContext.response.writer)}</pre>
		</li>
	</ul>
</div>
</body>
</html>