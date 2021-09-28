<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/n.css" rel="stylesheet" type="text/css">
</head>
<body>

    
    <!--Header-->
 <jsp:include page="head.jsp"></jsp:include>
 <!--FeedBack-->


<div class="f-l"><img src="images/giphy.gif" alt=""></div>
<div class="feedback-logo">
<img src="images/fb.png" alt="">
</div>

    <form class="box" action="feedback.jsp" method="post" name="feedback" onsubmit="return fd()">
    
    <input type="text" name="username" placeholder="UserName" >
   <textarea name="feedback"  cols="30" rows="10" placeholder="FeedBack"></textarea>
   <input type="submit" name="submit" value="Submit" >
   
    </form>


<!--Footer-->

 <jsp:include page="fotter.jsp"></jsp:include>


</body>
</html>