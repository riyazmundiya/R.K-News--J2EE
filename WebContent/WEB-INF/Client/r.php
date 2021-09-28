<head>
<script src="val.js"> 
</script></head>
    <form class="login" action="reg.php" method="post"  name="reg" onsubmit="return validateform()">
    <div class="l_rk">
    <h3 class="logo">R.K News Agency Registartion From</h3>
    
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


    <?php
error_reporting(0);
$con = mysqli_connect('localhost','root','');

mysqli_select_db($con, 'rk_news');

$username = $_POST['username'];
$password = $_POST['password'];
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$email = $_POST['email'];
$city = $_POST['city'];
$country = $_POST['country'];
$dob = $_POST['dob'];
$gender = $_POST['gender'];

$qry = " insert into registration( username , password , firstname , lastname , email , city , country , dob ,gender) values ('$username' , '$password' , '$firstname' , '$lastname' , '$email' , '$city' , '$country' , '$dob' ,'$gender')";

if(mysqli_query($con , $qry))
{

    header('Location: login.php');
    
       
        
}
else
{
      

}


?>