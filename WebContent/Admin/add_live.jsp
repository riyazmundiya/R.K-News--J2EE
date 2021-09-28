<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>R.K News Agency Project</title>
    
</head>
<body>



<%
String news_name=request.getParameter("news_name");
String youtube_code=request.getParameter("youtube_code");



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rk_news", "root", "");
Statement st=conn.createStatement();

if(news_name!=null)
{

	
int i=st.executeUpdate("insert into livenews(news_name,youtube_code)values('"+news_name+"','"+youtube_code+"')");
response.sendRedirect("livenews.jsp");
	
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