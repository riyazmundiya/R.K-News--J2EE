<head>
<script src="val.js"></script>
</head>
    <form class="login" action="login.php" method="post"  name="myform" onsubmit="return validateform()">
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


        
<?php
$con = mysqli_connect('localhost','root','','rk_news');
session_start();

if (isset($_POST['submit']))
 {
    
    $email=$_POST['email'];
    $password=$_POST['password'];

    $query=mysqli_query($con,"select * from registration where email='$email' AND password='$password'");

    
       
    if ($query)
    if (mysqli_num_rows($query)>0)
     {
      $_SESSION['email']=$_POST['email']; 
       header('location:livenews.php');
     } 
    else
    {
        echo "<script> alert('Invalid Details Please Cheack')</script>";
    }
}


?>