<%-- 
    Document   : index
    Created on : Aug 11, 2018, 11:16:03 AM
    Author     : Rashmini Perera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="formstyle.css">
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Add books </title>
          <script>
                function resourceValidate(){
                    var ISBN_num  =document.forms["resourceForm"]["ISBN_num"].value;
                    var name =document.forms["resourceForm"] ["name"].value;
                    var authorName = document.forms["resourceForm"]["authorName"].value;
                    var price =document.forms["resourceForm"] ["price"].value;
                    var edition =document.forms["resourceForm"] ["edition"].value;
                    var subject  =document.forms["resourceForm"] ["subject"].value;
            
                    
                    if (name=== null || name===""){
                        alert("Please enter the name of the book");
                        return false;
                    }
                    else
                        return true;
                    
                    if (ISBN_num=== null || ISBN_num===""){
                        alert("Please enter the ISBN Number");
                        return false;
                    }
                    else
                        return true;
                    
                    if(authorName=== null || authorName===""){
                        alert("Please enter the author's name");
                        return false;
                    }
                    else
                        return true;
                    
                    if(price=== null || price===""){
                        alert("Please enter the price of the book");
                        return false;
                    }
                    else
                        return true;
                    
                    if (edition===null || edition===""){
                        alert("Please enter the edition of the book");
                        return false;
                    }
                    else
                        return true;
                    
                    if(subject=== null || subject===""){
                        alert("Please enter the subject");
                        return false;
                    }
                    else
                        return true;
                }
             </script>
  
    </head>
    <body>
        
        <div>
            <form name="resourceForm" action="" method="POST" >
                <h1> <center> Add Books </center> </h1>
           
           
                        <label> Name of the book: </label>
                        <input type="text" name="name" >
                   
                        <label> ISBN Number: </label>
                        <input type="text" name="ISBN_num" >
                    
                        <label>Author's Name: </label> 
                        <input type="text" name="authorName" >
                
                        <label> Price of the book: </label>
                        <input type="text" name="price" >
                
                        <label> Edition: </label>
                        <input type="text" name="edition" >
                    
                        <label>Subject: </label>
                        <input type="text" name="subject" >               
                
                <input type="submit" value="submit" name="buttoninsert" onclick="return resourceValidate()"> 
            </form>
            </div>
 </body>
 </html>