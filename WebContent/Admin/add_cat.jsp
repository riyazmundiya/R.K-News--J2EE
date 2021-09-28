<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>R.K News Agency Project</title>
    
    <script src="${pageContext.request.contextPath}/Admin/validation.js"></script>  
</head>
<body>



<%
String cat_name=request.getParameter("cat_name");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rk_news", "root", "");
Statement st=conn.createStatement();

if(cat_name!=null)
{

	
int i=st.executeUpdate("insert into category(cat_name)values('"+cat_name+"')");
response.sendRedirect("Category.jsp");
	
}

	
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</body>
</html>
</body>
</html>