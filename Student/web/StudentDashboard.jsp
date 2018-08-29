<%-- 
    Document   : StudentDashboard
    Created on : 26-Aug-2018, 15:08:12
    Author     : Fasrin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
       
        <jsp:include page="/WEB-INF/views/stuNAV.jsp"></jsp:include>
 
        
            <center>
        <table border="0" style="width: 80%; margin-left: 50px;" class="dashboard">
         <tbody>
                <tr>
                    <td><img src="IMG/StudentIcon.png" width="209" height="223" /></td> &nbsp&nbsp&nbsp&nbsp
                    <td><img src="IMG/course.png" width="209" height="223" /></td> &nbsp&nbsp&nbsp&nbsp
                    <td><img src="IMG/time.jpg" width="209" height="223" /></td> &nbsp&nbsp&nbsp&nbsp
                     <td><img src="IMG/timetable.png" width="209" height="223" /></td> &nbsp&nbsp&nbsp&nbsp
                </tr>
                <tr class="tText">
                     <td> <a href="profile.jsp"> Profile </a> </td>
                     <td> <a href="Employee.jsp"> Course </a> </td>
                    <td> <a href=""> TimeTable</a> </td>

                 <td> <a href=""> Results</a> </td>                </tr>
        </table>
        
    

    </center>
    <br>
    <br>
        
        
        
    </body>
</html>
