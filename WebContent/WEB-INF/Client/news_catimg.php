<?php 


$con = mysqli_connect('localhost','root','','rk_news');

function showData(){

    global $con;

    $query = " SELECT * FROM `news`  ";
    $run = mysqli_query($con , $query);
    $data = mysqli_fetch_array($run, MYSQLI_ASSOC) ;
    
    if(!$data)
{
 echo $row['news_img']; 
}
else
{
    while ($data = mysqli_fetch_array($run))
    {
    echo $data['news_img'];
    ?><img src="../Admin/dataimg/<?php echo $data['news_img']; ?>"><?php
    }
}
}

?>
 <?php showData(); ?>  
