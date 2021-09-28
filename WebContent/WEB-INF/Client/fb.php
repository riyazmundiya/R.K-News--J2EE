<head> 
<script src="val.js"> 
</script> 
</head>

<div class="f-l"><img src="images/giphy.gif" alt=""></div>
<div class="feedback-logo">
<img src="images/fb.png" alt="">
</div>

    <form class="box" action="feedback.php" method="post" name="feedback" onsubmit="return fd()">
    
    <input type="text" name="username" placeholder="UserName" >
   <textarea name="feedback"  cols="30" rows="10" placeholder="FeedBack"></textarea>
   <input type="submit" name="submit" value="Submit" >
   
    </form>
    <?php
error_reporting(0);
$con = mysqli_connect('localhost','root','');

mysqli_select_db($con, 'rk_news');
if (isset($_POST['submit']))
 {
$username = $_POST['username'];
$feedback = $_POST['feedback'];

$qry = " insert into feedback_form( username , feedback) values ('$username' , '$feedback')";

if(mysqli_query($con , $qry))
{

       
        
}
else
{
        echo "data inserted";

}
 }


?>