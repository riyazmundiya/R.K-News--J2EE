<jsp:include page="head.jsp"></jsp:include>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String subcat_name = request.getParameter("subcat_name");
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
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="css/n.css">
</head>
<body>
<div class="dis"><h1> News </h1></div>

<div class="news">

<table class="news" >
<tr>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from news where subcat_name='"+subcat_name+"'";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
	
%>
<table class="news" >
<tr>


      
          <td><img src="../Admin/dataimg/<%=resultSet.getString("news_img") %>"></td>
       
       </tr><tr>
        <td class="title">NewsTitle:-<%=resultSet.getString("news_title") %></td></tr><tr >
           <td class="desc"><h4 style="color:wheat;">News:-</h4><%=resultSet.getString("news")%></td>
          
          
       </tr>
</table>
      
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>


</div>
</body>
</html>