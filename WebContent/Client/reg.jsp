
<!DOCTYPE html>
<html>
<head>


    <title>R.K News Agency Project</title>
    <link rel="stylesheet" href="css/n.css" >
    
</head>
<body>
    <!--Header-->
  <jsp:include page="head.jsp"></jsp:include>

 <form class="login" action="r.jsp" method="post"  name="reg" onsubmit="return validateform()">
    <div class="l_rk">
    <h3 class="logo">R.K News User Registartion From</h3>
    
    <img src="images/login.png" alt="">
    <div class="l">
    <input type="text" name="username" placeholder="UserName" >
   <input type="password" name="password" placeholder="Password">
   <input type="text" name="firstname" placeholder="FirstName" >
   <input type="text" name="lastname" placeholder="LastName" >
   <input type="email" name="email" placeholder="Email" >
   <input type="text" name="city" placeholder="City">
   <input type="text" name="country" placeholder="Country">
   <input type="date" name="dob" placeholder="Date OF Birth" >
   Gender:
   <input type="radio" id="male" name="gender" value="male">
  <label for="male">Male</label><br>
  <input type="radio" id="female" name="gender" value="female">
  <label for="female">Female</label><br>
  <input type="radio" id="other" name="gender" value="other">
  <label for="other">Other</label>

   <input type="submit" name="submit" value="Submit" >
   </div>   
</div>
    </form>



</body>
</html>