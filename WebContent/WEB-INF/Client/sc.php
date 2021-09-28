<link rel="stylesheet" href="css/n.css">
<?php 
include('head.php');


$con = mysqli_connect('localhost','root','','rk_news');

function showData(){

    global $con;
  
$cat_name = $_GET['cat_name'];


    $query = " SELECT * FROM `subcategory` where cat_name = '$cat_name' ";
    $run = mysqli_query($con , $query);
    $row = mysqli_num_rows($run);
 
    if(!$row)
     {?><div class="norecord"><?php
        echo "No record found";?></div><?php
}
     else{?>
<table border="2px" class="subcat">

   
    <td>Sub-Category Name</td>
   
    <?php
  while ($data = mysqli_fetch_array($run, MYSQLI_ASSOC))
     {
       ?>
       <tr>

           
           <td><a href="news_post.php?subcat_name=<?php echo htmlentities($data['subcat_name'])?>"><?php echo htmlentities($data['subcat_name']);?></a></td>
       
       </tr> <?php
    }
    ?>
    </table>
    <?php
}


}

?>

<body>
    
<div class="dis"><h1> News Sub-Category</h1></div>

<div class="subcat">

    <?php showData(); ?> </div>
  </body>


