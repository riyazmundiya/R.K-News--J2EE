<?jsp
error_reporting(null);
session_start();
if (isset($_SESSION["email"])) {
   echo "you are alredy login";
   
}
else
{
    header('location:login.jsp');
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


   

<!--Login-Page-->
<jsp:include page="live.jsp"></jsp:include>


<!--Footer-->

 


</body>
</html>