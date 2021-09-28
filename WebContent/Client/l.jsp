<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>R.K News Agency Project</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
</head>
<body>



<%
String email=request.getParameter("email");
String password=request.getParameter("password");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rk_news", "root", "");
Statement st=conn.createStatement();

ResultSet rs;
rs =st.executeQuery("select * from registration where email='" + email + "' and password='" + password + "'");
if (rs.next()) {
    session.setAttribute("email", email);
    //out.println("welcome " + userid);
    //out.println("<a href='logout.jsp'>Log out</a>");
    response.sendRedirect("index.jsp");
} else {
   // out.println("Invalid password <a href='adlogin.jsp'>try again</a>");
		 
		    response.sendRedirect("login.jsp");
		   out.println("invalid");
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