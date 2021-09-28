<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:include page="head.jsp"></jsp:include>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

      
</head>
<body>
  
 <script>
    function validateform(){  
  var cat_name=document.category.cat_name.value;  
  
    
  if (cat_name==null || cat_name==""){  
    alert("Category can't be blank");  
    return false;  
  } 
    }
   </script>  
   
<div class="cat_logo">
<h1>RK News Agency</h1>
<h2>Add Category Page</h2>
</div>
<form class="box" action="add_cat.jsp" method="POST" name="category" onsubmit="return validateform()">
    
    <input type="text" name="cat_name" placeholder="Category Name" >
   
   <input type="submit" name="submit" value="Submit" >
   
    </form>

</body>
</html>