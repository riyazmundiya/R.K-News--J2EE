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
<!DOCTYPE html>
<html>
<head>

</head>
<body>
 <div class="dis"><h1>R.K News (News-Section)</h1></div>
<div class="add_news">

    <form action="add_news1.jsp" method="post" enctype="multipart/form-data">
     <input type="submit" name="category" value="Add news"> 
    
     </form>
  
</div>
</div>
<div class="select_cat">
     <form action="view_subcat1.jsp" method="post" >



     <select name="cat_name" class="catname_select" id="cat">
      <option disabled selected >-- Select SubCategory --</option>
    <%
       connection = DriverManager.getConnection(connectionUrl+database, userid, password);
       statement=connection.createStatement();
       String sql ="SELECT subcat_name From  subcategory";
       resultSet = statement.executeQuery(sql);
     
   	while(resultSet.next()){
     %>
     <option value="<%=resultSet.getString("subcat_name") %>"><%=resultSet.getString("subcat_name") %>	</option>  
        <%   }%>	
      
      
      </select>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script>
  
  $(function() {
      $("#cat").change(function() {
          var id=this.value;
          window.location.href='view_news1.jsp?subcat_name='+id;
      });
  });
  
  </script></div>





<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sqll ="select * from news";
resultSet = statement.executeQuery(sqll);
%>
<div class="news_view">
<table border="2px">

    
    <td>Sub-Category Name</td>
    <td>Title</td>
    <td>News</td>
    <td>Image</td>
    <td>Edit</td>
    <td>Delete</td>
<% 
	while(resultSet.next()){
		
		%>
		<tr>
      

       
       <td class="subcat_name"><%=resultSet.getString("subcat_name") %></td>
       <td ><%=resultSet.getString("news_title") %></td>       
       <td ><%=resultSet.getString("news") %></td>
       <td ><img src="dataimg/<%=resultSet.getString("news_img") %>"></td>
       <td ><a href="edit_news.jsp?n_id=<%=resultSet.getString("n_id") %>"><input type="button" id="edit" name="submit1" value="Edit"></a></td>
       <td ><a href="delete_news.jsp?n_id=<%=resultSet.getString("n_id") %>"><input type="button" name="submit1" value="Delete"></td>

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
