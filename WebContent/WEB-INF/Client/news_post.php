<link rel="stylesheet" href="css/n.css">
<?php 
include('head.php');


$con = mysqli_connect('localhost','root','','rk_news');

function showData(){

    global $con;
  
$subcat_name = $_GET['subcat_name'];


    $query = " SELECT * FROM `news` where  subcat_name = '$subcat_name' ";
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
<table class="news" >


   
   
       <tr>
       <td><img src="../Admin/dataimg/<?php echo $data['news_img']; ?>"></td>
       
       </tr><tr>
       <td class="title">NewsTitle:-<?php echo $data['news_title'];?></td>       </tr><tr >
           <td class="desc"><?php echo $data['news'];?></td>
          
          
       </tr> <?php
    }
    ?>
    </table>
    <?php
}


}

?>

<body>
    
<div class="dis"><h1> News </h1></div>

<div class="news">

    <?php showData(); ?> </div>
  </body>


