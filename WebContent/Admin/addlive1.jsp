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
    function caat(){  
  var news_name=document.live.news_name.value; 
  var youtube_code=document.live.youtube_code.value; 

    
  if (news_name==null || news_name==""){  
    alert("News Can't Be Blank");  
    return false;  
  }
  else if (yutube_code==null || youtube_code==""){  
	    alert("Youtube Code Can't Be Blank");  
	    return false;  
	  }


    }
   </script>  
   
<div class="cat_logo">
<div class="live">
<h1>RK News </h1>
<h2>Add Live-News Page</h2>
</div></div>
<form class="box" action="add_live.jsp" method="POST" name="live" onsubmit="return caat()">
    
    <input type="text" name="news_name" placeholder="News-Channel Name" >
    <img src="dataimg/Untitled-3.png" alt="">
    https://www.youtube.com/embed/<input type="text" name="youtube_code" placeholder="News-Channel Code" >
    
   
   <input type="submit" name="submit" value="Submit" >
   
    </form>

  </body>
  </html>