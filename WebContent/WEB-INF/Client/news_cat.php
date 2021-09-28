
<?php 


$con = mysqli_connect('localhost','root','','rk_news');

function showData(){

    global $con;

    $query = " SELECT * FROM `category` ";
    $run = mysqli_query($con , $query);
    
    if($run == TRUE)
{?>
<table border="2px" class="cat">
    
    <td>Category Name</td>
  
        <?php
    while ($data = mysqli_fetch_assoc($run))
     {
       ?>
       <tr>
      
           <td class="cat_name"> <a href="sc.php?cat_name=<?php echo htmlentities($data['cat_name'])?>"><?php echo htmlentities($data['cat_name']);?></a></td>
          
       </tr> <?php
    }
    ?>
    </table>
    <?php
}
    else
    {
        echo "Error";
    }
}

?>
<body>
    
<div class="dis"><h1> News  Category</h1></div>

<div class="cat">

    <?php showData(); ?> </div>
  </body>
