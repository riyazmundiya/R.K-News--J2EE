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
    function caat(){  
  var cat_name=document.subcat.cat_name.value; 
  var subcat_name=document.subcat.subcat_name.value; 


    
  if (cat_name==null || cat_name==""){  
    alert("Plese Select Category");  
    return false;  
  }
  else if (subcat_name==null || subcat_name==""){  
	    alert("Sub-Category Name Can't Be Blank");  
	    return false;  
	  }

    }
</script>

<div class="cat_logo">
<h1>RK News Agency</h1>
<h2>Add Category Page</h2>
</div>


<form class="box" action="add_subcat.jsp" method="POST" name="subcat" onsubmit="return caat()">


<select name="cat_name" class="cat_select" required>
      <option disabled selected>-- Select Category --</option>
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
 <input type="text" name="subcat_name" placeholder="Sub-Category Name">
  
   <input type="submit" name="submit" value="Submit" >
   
    </form>
    </form>
</body>
</html>