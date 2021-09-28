
      //For Contact Validation
function cont(){  
  var username=document.contact.username.value;  
  var email=document.contact.email.value;  
  var message=document.contact.message.value;  
    
  if (username==null || username==""){  
    alert("Name can't be blank");  
    return false;  
  }else if(email==null || email=="" ){  
    alert("Email can't be blank");  
    return false;  
    }else if(message==null || message=="" ){  
      alert("Message can't be blank");  
      return false;  
      } 
    
  } 
        //For FeedBack Validation
function fd(){  
  var username=document.feedback.username.value;  
  var feedback=document.feedback.feedback.value;  
 
    
  if (username==null || username==""){  
    alert("Name can't be blank");  
    return false;  
  }else if(feedback==null || feedback=="" ){  
    alert("FeedBack can't be blank");  
    return false;  
    }  
    
  } 

          //For Reg Validation
function validateform(){  
  var username=document.reg.username.value;  
  var password=document.reg.password.value;
  var firstname=document.reg.firstname.value;  
  var lastname=document.reg.lastname.value;
  var email=document.reg.email.value;
  var city=document.reg.city.value;
  var country=document.reg.country.value;
  
 
    
  if (username==null || username==""){  
    alert("Name can't be blank");  
    return false;  
  }else if(password==null || password=="" ){  
    alert("Password can't be blank");  
    return false;  
    }else if(firstname==null || firstname=="" ){  
      alert("FirstName can't be blank");  
      return false;  
      } else if(lastname==null || lastname=="" ){  
        alert("LastName can't be blank");  
        return false;  
        } else if(email==null || email=="" ){  
          alert("Email can't be blank");  
          return false;  
          } else if(city==null || city=="" ){  
            alert("City can't be blank");  
            return false;  
            } else if(country==null || country=="" ){  
              alert("Country can't be blank");  
              return false;  
              }    
    
  } 