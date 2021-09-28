
<?php
error_reporting(null);
?>
<!DOCTYPE html>
<html>
<head>
    
    <title>R.K News Agency Project</title>
    <link rel="stylesheet" href="css/n.css" >
    
</head>
<body>
    <!--Header-->
     
  <jsp:include page="head.jsp"></jsp:include>
    <form class="login" action="cont.jsp" method="post" name="contact" onsubmit="return cont()">
    <div class="l_rk">
    <h3 class="logo">R.K News Contact Us</h3>
    
    <img src="images/login.png" alt="">
    <div class="l">
    <input type="text" name="username" placeholder="UserName">
    <input type="email" name="email" placeholder="Email">
    <textarea name="message" cols="30" rows="10" placeholder="Message"></textarea>
    <input type="submit" name="submit" value="Submit" >
   </div>   
</div>
    </form>



</body>
</html>