<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>R.K News Agency Project</title>
    <link rel="stylesheet" href="css/n.css" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
</head>
<body>



<%
String username=request.getParameter("username");
String password=request.getParameter("password");
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String email=request.getParameter("email");
String city=request.getParameter("city");
String country=request.getParameter("country");
String dob=request.getParameter("dob");
String gender=request.getParameter("gender");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rk_news", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into registration(username,password,firstname,lastname,email,city,country,dob,gender)values('"+username+"','"+password+"','"+firstname+"','"+lastname+"','"+email+"','"+city+"','"+country+"','"+dob+"','"+gender+"')");
response.sendRedirect("reg.jsp");
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