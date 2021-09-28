


<?php
error_reporting(null);


?>







<link rel="stylesheet" href="css/n.css">
<div class="date">
    <h5 >Today:-<?php echo date("d/m/Y"); ?></h5>
    </div>
<?php 



$con = mysqli_connect('localhost','root','','rk_news');

function showData(){

    global $con;
  



    $query = " SELECT * FROM `livenews` ";
    $run = mysqli_query($con , $query);
    $row = mysqli_num_rows($run);
 
    if(!$row)
     {
        ?><div class="norecord"><?php
        echo "No record found";?></div><?php
}
     else{?>
      <?php
  while ($data = mysqli_fetch_array($run, MYSQLI_ASSOC))
     {
       ?>



<div class="re"><label ><?php echo $data['news_name'];?></label></div>
<div class="live">

<iframe width="800" height="515"
autoplay src="https://www.youtube.com/embed/<?php echo $data['youtube_code'];?>">
</iframe></div>
   
       
    <?php
}
     }
    }
?>

<body>
    
<div class="live"><h1><marquee behavior=Alternate> Live-News </marquee></h1></div>

<div class="news">

    <?php showData(); ?> </div>
  </body>


