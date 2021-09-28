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
		
			int n_id;
			
			n_id=Integer.parseInt(request.getParameter("n_id"));
		
			
			PreparedStatement pstmt=null;
			pstmt=con.prepareStatement("DELETE FROM news WHERE n_id=?");
		   pstmt.setInt(1 , n_id);
			pstmt.executeUpdate();
			
			con.close();
			 
			response.sendRedirect("news.jsp");
			
	

		}
		catch(Exception e)
		{
			out.print(e);
			
		
		}
%>
	</body>
</html>