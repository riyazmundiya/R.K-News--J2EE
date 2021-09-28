<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

    <title>R.K News</title>
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Admin/css/style.css" /> 
</head>
<body>
<%
    if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
response.sendRedirect("login.jsp");
}
    else
    {

%>
<jsp:include page="head.jsp"></jsp:include>
<jsp:include page="sc.jsp"></jsp:include>
<%
    }
%>



</body>
</html>