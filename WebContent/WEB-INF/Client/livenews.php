<?php
error_reporting(null);
session_start();
if (isset($_SESSION["email"])) {
   echo "you are alredy login";
   
}
else
{
    header('location:login.php');
}



?>

<!DOCTYPE html>
<html>
<head>
    
    <title>R.K News Agency Project</title>
    <link rel="stylesheet" href="css/n.css" >
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    
</head>
<body>
    <!--Header-->

  <header>
        <h3 class="logo">R.K News Agency</h3>
        <ul>
            <li><a href="index.php">Home</a></li>
            <li><a href="news.php">Newspaper</a></li>
            <li><a href="contact.php">Contact</a></li>
            <li><a href="feedback.php">FeedBack</a></li>
			<li><a href="livenews.php">Live-News</a></li>
            <li><a href="logout.php">Logout</a></li>

            

        </ul>
     
        
    </header>
   

<!--Login-Page-->
<?php 
include ('live.php');
?>


<!--Footer-->

 


</body>
</html>