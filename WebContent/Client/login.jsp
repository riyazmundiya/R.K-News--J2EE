
<!DOCTYPE html>
<html>
<head>
    
    <title>R.K News Agency Project</title>
   
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    
</head>
<body>
    <!--Header-->
  <jsp:include page="head.jsp"></jsp:include>

   <form class="login" action="l.jsp" method="post"  name="myform" onsubmit="return validateform()">
    <div class="l_rk">
    <h3 class="logo">R.K News Agency Login From</h3>
    
    <img src="images/login.png" alt="">
    <div class="l">
    
    <input type="email" name="email" placeholder="Email" >
   <input type="password" name="password" placeholder="Password" >
   <input type="submit" name="submit" value="Submit" >
   </div>   
</div>
    </form>


<!--Footer-->

 


</body>
</html>