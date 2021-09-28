<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 
 <script>
    function validateform(){  
  var subcat_name=document.news.subcat_name.value; 
  var news_title=document.news.news_title.value;
  var news=document.news.news.value;
  var news_img=document.news.news_img.value;
  
    
  if (subcat_name==null || subcat_name==""){  
    alert("Choose Sub-Category");  
    return false;  
  }
  else if(news_title==null || news_title=="")
	  {
	  alert("Enter News Title");  
	    return false;
	  }

  else if(news==null || news=="")
	  {
	  alert("Enter News");  
	    return false;
	  }

  else if(news_img==null || news_img=="")
	  {
	  alert("Select Image For Directory");  
	    return false;
	  }
    }
   </script>  
<div class="cat_logo">
<h1>RK News Agency</h1>
<h2>Add Category Page</h2>
</div>
<form  class="news" name="news" action="add_news.jsp" method="POST" enctype="multipart/form-data" onsubmit="return validateform()">
 
<select name="subcat_name"  class="subcat_select">
      <option disabled selected>-- Select Sub-Category --</option>
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
    <input type="text" name="news_title" placeholder="News-Title" >
    <textarea name="news" cols="30" rows="10" placeholder="News"></textarea>
    <input type="file"  name="news_img" placeholder="News Image">
   <input type="submit" name="submit" value="Submit" >
   </form>
   
</body>
</html>