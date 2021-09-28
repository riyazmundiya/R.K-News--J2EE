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
    
<div class="dis"><h1>R.K News (Category-Section)</h1></div>

<div class="cat">

    <form action="addcat1.jsp" method="post" ">
     <input type="submit" name="category" value="Add Category"> 
     </form>



<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from category";
resultSet = statement.executeQuery(sql);
%>
<table border="2px" class="cat">

<td>Category Name</td>
<td>Edit</td>
<td>Delete</td>
<% 
	while(resultSet.next()){
		
		%>
		<tr>
      

       <td class="cat_name"><%=resultSet.getString("cat_name") %></td>
       <td class="edit_button"><a href="edit_cat.jsp?cat_name=<%=resultSet.getString("cat_name") %>"><input type="button"   name="submit1" value="Edit"></a></td>
       <td class="delete_button"><a href="delete_cat.jsp?cat_name=<%=resultSet.getString("cat_name") %>"><input type="button"   name="submit1" value="Delete"></a></td>

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
