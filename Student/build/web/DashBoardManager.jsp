<%-- 
    Document   : DashBoardManager
    Created on : Aug 25, 2018, 4:12:26 PM
    Author     : Hiruni Dep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link rel="stylesheet" type="text/css" href="Style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IMS</title>
    </head>
    
    <body>

        <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
       
        <jsp:include page="/WEB-INF/views/stuNAV.jsp"></jsp:include>
        
        
    <center>
        <table border="0" style="width: 80%; margin-left: 50px;" class="dashboard">
         <tbody>
                <tr>
                    <td><img src="IMG/StudentIcon.png" width="209" height="223" /></td> &nbsp&nbsp&nbsp&nbsp
                    <td><img src="IMG/Employee.png" width="209" height="223" /></td> &nbsp&nbsp&nbsp&nbsp
                    <td><img src="IMG/Finance.png" width="209" height="223" /></td> &nbsp&nbsp&nbsp&nbsp
                </tr>
                <tr class="tText">
                     <td> <a href="studentView.jsp"> Student </a> </td>
                     <td> <a href="Employee.jsp"> Employee </a> </td>
                    <td> <a href=""> Finance </a> </td>
                </tr>
        </table>
        
        <table border="0" style="width:80%; margin-left: 50px;" class="dashboard">
        <tbody>
                <tr>
                    <td><img src="IMG/course.png" width="209" height="223" /></td> &nbsp&nbsp&nbsp&nbsp
                    <td><img src="IMG/time.jpg" width="209" height="223" /></td> &nbsp&nbsp&nbsp&nbsp
                    <td><img src="IMG/money.jpg" width="209" height="223" /></td> &nbsp&nbsp&nbsp&nbsp
                </tr>
                <tr class="tText">
                    <td> <a href="">  Course </a> </td>
                    <td> <a href=""> Time Table </a> </td>
                    <td> <a href=""> Salary </a> </td>
                </tr>
        </table>

    </center>
    <br>
    <br>
    
 <footer class="socialMedia">
	<div style="float:left">
            MINDRICH College of Management Studies </br>
            Second Lane</br>
            Dehiwala </br>
            011 2 301904 
	</div>
        
       
	<div style="float:right">
            <a href="https://www.facebook.com/" style="text-decoration:none"> <img src="IMG/facebook-5-xxl.png" width="40px"> </a>
            <a href="https://www.instagram.com/" style="text-decoration:none"> <img src="IMG/instagram-5-xxl.png" width="40px"> </a>
            <a href="https://plus.google.com/" style="text-decoration:none"> <img src="IMG/google-plus-5-xxl.png" width="40px"> </a>
	</div>
    </footer>
    
    </body>
</html>

