


<head>
<script src="val.js"> 
</script>
</head>
    <form class="login" action="contact.php" method="post" name="contact" onsubmit="return cont()">
    <div class="l_rk">
    <h3 class="logo">R.K News Agency Contact Us</h3>
    
    <img src="images/login.png" alt="">
    <div class="l">
    <input type="text" name="username" placeholder="UserName">
    <input type="email" name="email" placeholder="Email">
    <textarea name="message" cols="30" rows="10" placeholder="Message"></textarea>
    <input type="submit" name="submit" value="Submit" >
   </div>   
</div>
    </form>


    <?php

$con = mysqli_connect('localhost','root','');

mysqli_select_db($con, 'rk_news');



if (isset($_POST['submit']))
 {
    $username=$_POST['username'];
    $email=$_POST['email'];
    $message=$_POST['message'];

    $query=mysqli_query($con,"insert into contact( username , email , message) values ('$username' , '$email' , '$message')");

    if ($query)
    if (mysqli_num_rows($query)>0)
     {
      $_SESSION['username']=$username; 
      echo "<script> alert('Message Not Sent')</script>"; 
    } 
    else
    {
      
        echo "<script> alert('Message Sent Succesfully')</script>"; 
       
    }
    
}
?>