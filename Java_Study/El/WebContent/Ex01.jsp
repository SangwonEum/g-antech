<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.util.ArrayList"
    import = "java.util.HashMap" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String[] dept = {"com","hi"};
request.setAttribute("dept", dept);


HashMap<String,String> map = new HashMap();
map.put("department","computer");

request.setAttribute("professor", map);


%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

0번째 : ${dept[0]} <br/>
프로패서: ${professor.department }<br/>

</body>
</html>