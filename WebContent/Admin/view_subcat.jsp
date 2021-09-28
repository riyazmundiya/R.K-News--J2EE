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
    
<div class="dis_sub"><h1>R.K News (SubCategory-Section)</h1></div>
  <div class="subcat">
  
      <form action="addsubcat1.jsp" method="post" enctype="multipart/form-data">
       <input type="submit" name="subcategory" value="Add Sub-Category"> 
       </form>
      
       <div class="select_cat">
       <form action="view_subcat1.jsp" method="post" >
  
  
  
       <select name="cat_name" class="catname_select" id="cat">
        <option disabled selected >-- Select Category --</option>
       <%
       connection = DriverManager.getConnection(connectionUrl+database, userid, password);
       statement=connection.createStatement();
       String sql ="SELECT cat_name From  category";
       resultSet = statement.executeQuery(sql);
     
   	while(resultSet.next()){
     %>
     <option value="<%=resultSet.getString("cat_name") %>"><%=resultSet.getString("cat_name") %>	</option>  
        <%   }%>	
      
      
      </select>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script>
  
  $(function() {
      $("#cat").change(function() {
          var id=this.value;
          window.location.href='view_subcat.jsp?cat_name='+id;
      });
  });
  
  </script></div>



<%
String cat_name=request.getParameter("cat_name");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rk_news", "root", "");
Statement st=conn.createStatement();

String sqll =" SELECT * FROM `subcategory` where cat_name = '" + cat_name + "' ";
resultSet = statement.executeQuery(sqll);
%>
<table border="2px" class="subcat">

<td>Category Name</td>
    <td>Sub-Category Name</td>
    <td>Edit</td>
    <td>Delete</td>
<% 
	while(resultSet.next()){
		
		%>
		<tr>
      

       <td class="cat_name"><%=resultSet.getString("cat_name") %></td>
       <td class="subcat_name"><%=resultSet.getString("subcat_name") %></td>
       <td class="edit_button"><a href="edit_subcat.jsp?cat_id=<%=resultSet.getString("s_id") %>"><input type="button"   name="submit1" value="Edit"></a></td>
       <td class="delete_button"><a href="delete_subcat.jsp?cat_id=<%=resultSet.getString("s_id") %>"><input type="button"   name="submit1" value="Delete"></a></td>

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
