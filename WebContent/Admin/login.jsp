<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Admin/css/style.css" /> 
<title>Insert title here</title>
</head>
<body>

 <form class="login" action="lc.jsp" method="post"  name="myform" onsubmit="return validateform()">
    <div class="l_rk">
    <h3 class="logo">R.K News Agency Admin Login From</h3>
    
    <img src="dataimg/login.png" alt="">
    <div class="l">
    <input type="text" name="username" placeholder="UserName" >
   <input type="password" name="password" placeholder="Password" >
   <input type="submit" name="submit" value="Submit" >
   </div>   
</div>
    </form>
</body>
</html>