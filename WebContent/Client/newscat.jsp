<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String cat_name = request.getParameter("cat_name");
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
<link href="Client/css/n.css" rel="stylesheet" type="text/css">
</head>
<body>
    
<div class="dis"><h1> News  Category</h1></div>

<div class="cat">
<table border="2px" class="cat">
<td>Category Name</td>
<tr>




<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from category";
resultSet = statement.executeQuery(sql);

	while(resultSet.next()){
		
		%>
		<tr>
		      
		           <td class="cat_name"> <a href="sc.jsp?cat_id=<%=resultSet.getString("cat_name") %>"><%=resultSet.getString("cat_name") %></a></td>

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