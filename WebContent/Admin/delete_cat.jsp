<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
try
{
Class.forName("com.mysql.jdbc.Driver");
		Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/rk_news","root","");
		
			String cat_name;
			
			cat_name=request.getParameter("cat_name");
		
			
			PreparedStatement pstmt=null;
			pstmt=con.prepareStatement("DELETE FROM category WHERE cat_name=?");
		   pstmt.setString(1 , cat_name);
			pstmt.executeUpdate();
			
			con.close();
			 
			response.sendRedirect("Category.jsp");
			
	

		}
		catch(Exception e)
		{
			out.print(e);
			
		
		}
%>
	</body>
</html>