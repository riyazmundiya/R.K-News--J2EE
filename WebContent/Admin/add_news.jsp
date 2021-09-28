<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.util.*, java.io.*" %>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.File"%>
<%@ page contentType="text/html;charset=UTF-8" %>
 <%@page import="javax.servlet.annotation.MultipartConfig"%>

    <%@page import="java.sql.*,java.util.*"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>R.K News Agency Project</title>
</head>
<body>
<%


try
{

	String subcat_name=request.getParameter("subcat_name");
	String news_title=request.getParameter("news_title");
	String news=request.getParameter("news");
	String news_img=request.getParameter("news_img");
		
String itemName = "";
boolean isMultipart = ServletFileUpload.isMultipartContent(request);
if (!isMultipart)
{
}
else
{
FileItemFactory factory = new DiskFileItemFactory();
ServletFileUpload upload = new ServletFileUpload(factory);
List items = null;
try
{
items = upload.parseRequest(request);
}
catch (FileUploadException e)
{
e.getMessage();
}
 
Iterator itr = items.iterator();
while (itr.hasNext())
{
FileItem item = (FileItem) itr.next();
if (item.isFormField())
{
String name = item.getFieldName();
String value = item.getString();
if(name.equals("news_img"))
{
news_img=value;
}
 
}
else
{
try
{
itemName = item.getName();
File savedFile = new File(config.getServletContext().getRealPath("/")+"\\Admin/dataimg/"+itemName);
item.write(savedFile);
}
catch (Exception e)
{
out.println("Error"+e.getMessage());
}
}
}
try
{ 
	Class.forName("com.mysql.jdbc.Driver");
Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rk_news", "root", "");
PreparedStatement ps;	
Statement st=cn.createStatement();
	ps=cn.prepareStatement("insert into news (subcat_name,news_title,news,news_img) values ('"+subcat_name+"','"+news_title+"','"+news+"','"+itemName+"') ");
	int count = ps.executeUpdate();
    if(count>0)
    {
    	response.sendRedirect("news.jsp");

    }
    else
    {
    System.out.println("not successfully");
    }

	
	
 
}
catch(Exception el)
{
out.println("Inserting error"+el.getMessage());
}
}
}
catch (Exception e){
out.println(e.getMessage());
}
%>
</body>
</html>