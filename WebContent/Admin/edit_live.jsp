



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

int id=Integer.parseInt(request.getParameter("id"));
pstmt = connection.prepareStatement("select * from livenews where id='"+id+"'");
resultSet=pstmt.executeQuery();
while(resultSet.next())
{
	

%>
 <script>
    function caat(){  
  var news_name=document.live.news_name.value; 
  var youtube_code=document.live.youtube_code.value; 

    
  if (news_name==null || news_name==""){  
    alert("News Can't Be Blank");  
    return false;  
  }
  else if (yutube_code==null || youtube_code==""){  
	    alert("Youtube Code Can't Be Blank");  
	    return false;  
	  }


    }
   </script>  
	
<form class="box" action="update_live.jsp" method="POST" name="live" onsubmit="return caat()">
    
    <input type="text" name="news_name" placeholder="News Name" value="<%=resultSet.getString("news_name") %>" required>
    <input type="text" name="youtube_code" placeholder="Live-News Code" value="<%=resultSet.getString("youtube_code") %>"  required>
   
  
   <input type="submit" name="submit" value="Submit" >
     <input type="hidden" name="id" value="<%=resultSet.getInt("id") %>">
   
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