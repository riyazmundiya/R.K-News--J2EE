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
		if(request.getParameter("submit")!=null)
		{
			int id;
			String news_name,youtube_code;
			
			id=Integer.parseInt(request.getParameter("id"));
			news_name=request.getParameter("news_name");

			youtube_code=request.getParameter("youtube_code");
			
			PreparedStatement pstmt=null;
			pstmt=con.prepareStatement("update livenews set news_name=? , youtube_code=? where id=?");
			pstmt.setString(1 , news_name);
			pstmt.setString(2 , youtube_code);
			pstmt.setInt(3 , id);
			pstmt.executeUpdate();
			
			con.close();
			 
			response.sendRedirect("livenews.jsp");
			
			
		}

		}
		catch(Exception e)
		{
			out.print(e);
			
		
		}
%>
	</body>
</html>