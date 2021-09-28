<jsp:include page="head.jsp"></jsp:include>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String cat_id = request.getParameter("cat_id");
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
<link href="css/n.css" rel="stylesheet" type="text/css">
</head>
<body>
    
<div class="dis"><h1> News Sub-Category</h1></div>

<div class="subcat">
<table border="2px" class="subcat">
<td>Sub-Category Name</td>
<tr>




<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select subcat_name from subcategory where cat_name='"+cat_id+"'";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
	
%>
<tr>
      
          <td class="cat_name"> <a href="news_post.jsp?subcat_name=<%=resultSet.getString("subcat_name") %>"><%=resultSet.getString("subcat_name") %></a></td>


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