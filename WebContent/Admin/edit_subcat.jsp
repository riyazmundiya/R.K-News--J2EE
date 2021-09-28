



<%@page import="java.sql.PreparedStatement"%>
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
PreparedStatement pstmt = null;
ResultSet resultSet = null;


try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
String subcat_name=request.getParameter("subcat_name");
pstmt = connection.prepareStatement("select * from subcategory where subcat_name='"+subcat_name+"'");
resultSet=pstmt.executeQuery();
if(resultSet.next())
{
	

%>
 <script>
    function caat(){  
  var subcat_name=document.subcat.subcat_name.value; 


    
  if (subcat_name==null || subcat_name==""){  
    alert("Sub-Category Can't Be Blank");  
    return false;  
  }
  
    }
</script>
<div class="cat_logo">
<h1>RK News Agency</h1>
<h2>Add Category Page</h2>
</div>
<form class="box" name="subcat" action="update_subcat.jsp" method="POST" onsubmit="return caat()">


    <input type="text" name="subcat_name" placeholder="Sub-Category Name" >
    <input type="hidden" name="s_id" value="<%= resultSet.getInt("s_id") %>">
    
  
   <input type="submit" name="submit" value="Submit" >
   
    </form>
	<%
	
} 
}catch (Exception e) {
e.printStackTrace();
}
%>
</table>

</body>
</html>