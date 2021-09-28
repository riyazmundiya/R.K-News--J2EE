<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:include page="head.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

    
   
<div class="live"><h1><marquee behavior=Alternate> Live-News </marquee></h1></div>

<div class="news">
     
    

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



try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from livenews";
resultSet = statement.executeQuery(sql);
    while(resultSet.next()){

   %>
<div class="re"><label ><%=resultSet.getString("news_name") %></label></div>
<div class="live">

<iframe width="800" height="515"
autoplay src="https://www.youtube.com/embed/<%=resultSet.getString("youtube_code") %>">
</iframe></div>
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