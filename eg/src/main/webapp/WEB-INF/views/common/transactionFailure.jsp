<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" language="java" %>
<%@ include file="/WEB-INF/common/declare.jspf"%>
<title>transactionFailure</title>
<div>
    <ul>
        ${exception.printStackTrace()}
        <li>Exception:
            <pre><c:out value="${requestScope['javax.servlet.error.exception']}"/></pre>
        </li>
        <li>Exception type: <c:out value="${requestScope['javax.servlet.error.exception_type']}"/></li>
        <li>Exception message:
            <pre><c:out value="${requestScope['javax.servlet.error.message']}"/></pre>
        </li>
        <li>Request URI: <c:out value="${requestScope['javax.servlet.error.request_uri']}"/></li>
        <li>Servlet name: <c:out value="${requestScope['javax.servlet.error.servlet_name']}"/></li>
        <li>Status code: <c:out value="${requestScope['javax.servlet.error.status_code']}"/></li>
        <li>Stack trace:
            <pre>${pageContext.out.flush()}${exception.printStackTrace(pageContext.response.writer)}</pre>
        </li>
    </ul>
</div>