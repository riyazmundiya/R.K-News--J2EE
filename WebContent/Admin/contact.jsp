<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>

<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "rk_news";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<body>
 
<div class="dis"><h1>R.K News User Contact Data</h1></div>

<div class="user_data">



<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from contact";
resultSet = statement.executeQuery(sql);
%>
<table border="2px" class="user_contact">
<tr>
    <td>Id</td>
    <td>Username</td>
    <td>Email</td>
    <td>Message</td>
<% 
	while(resultSet.next()){
		
		%>
		<tr>
      


       <td class="id"><%=resultSet.getString("id") %></td>
       <td class="username"><%=resultSet.getString("username") %></td>
       <td class="email"><%=resultSet.getString("email") %></td>
       <td class="message"><%=resultSet.getString("message") %></td>

		</tr>
		<%
	}



connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>


</body>
</html>
 