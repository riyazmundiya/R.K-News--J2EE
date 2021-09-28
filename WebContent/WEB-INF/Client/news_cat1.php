<!DOCTYPE html>
<html>
<head>
    <title>NewsPapers</title>
    <link rel="stylesheet" href="css/n.css">
</head>
<body>
  <?php 
  include ('head.php');
  ?>


  <?php 


$con = mysqli_connect('localhost','root','','rk_news');

function showData(){

    global $con;

    $query = " SELECT * FROM `news` ";
    $run = mysqli_query($con , $query);
    
    if($run == TRUE)
?>
    <div class="newspaper"><h2>Languages</h2>
    <?php  {
  while ($data = mysqli_fetch_assoc($run))
  {
?>
    <div class="flip-card">
      <div class="flip-card-inner">
        <div class="flip-card-front">

       
        
          <img src="../Admin/dataimg/<?php echo $data['news_img'];?>" alt="Avatar" style="width:300px;height:200px;">
        </div>
        <div class="flip-card-back">
          <h1><?php echo $data['news_title'];?></h1>
          <p>Newspaper</p>
        </div>
      </div>
    </div>
    </div>
    <?php } 
?>
  <?php
}
    
}

?>
<?php showData(); ?>
<?php 
include('footer.php');
?>