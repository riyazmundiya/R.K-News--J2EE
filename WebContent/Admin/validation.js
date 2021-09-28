//For Admin Login Validation

//For Add Category Validation
function validateform1(){  
  var cat_name=document.category.cat_name.value;  
  
    
  if (cat_name==null || cat_name==""){  
    alert("Category can't be blank");  
    return false;  
  } 
    
  } 
  //For Add SuBCategory Validation
function validateform(){  
  var subcat_name=document.subcat.subcat_name.value; 
   
  
    
  if (subcat_name==null || subcat_name==""){  
    alert("Sub-Category can't be blank");  
    return false;  
  }
  } 
   //For Add News Validation
function validateform(){  
  var news_title=document.news.news_title.value;  
  var news=document.news.news.value;  
  var news_img=document.news.news_img.value;  
    
  if (news_title==null || news_title==""){  
    alert("News can't be blank");  
    return false;  
  } else if(news==null || news=="" ){  
    alert("Please Enter News ");  
    return false;  
    }  else if(news_img==null || news_img=="" ){  
      alert("Please Choose News Image ");  
      return false;  
      }  
    
  } 


