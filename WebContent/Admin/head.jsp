<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Admin/css/style.css" /> 

<title>Insert title here</title>
</head>
<body>
<%
    if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
response.sendRedirect("login.jsp");
}
    else
    {

%>

    <div class="sidenav">
    <a href="index.jsp">Home</a>
    <a href="Category.jsp">Category</a>
    <a href="sc.jsp">Sub-Category</a>
    <a href="news.jsp">News</a>
    <a href="livenews.jsp">Live-News</a>
    <a href="user.jsp">Users</a>
    <a href="feedback.jsp">Feedback</a>
    <a href="contact.jsp">Contact</a>
    <a href="logout.jsp">Logout</a>
</div>
<%
    }
%>



</body>
</html>