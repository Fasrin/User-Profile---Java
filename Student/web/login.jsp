<%-- 
    Document   : login
    Created on : 11-Aug-2018, 18:25:36
    Author     : Fasrin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="formstyle.css"> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
        </script>
        <title>Login Page</title>
    </head>
    <body>
        <div>
            <img src="IMG/CaptureNew.PNG" width="500" height="200" > 
        </div>
        <jsp:include page="/WEB-INF/views/navigation.jsp"></jsp:include>
    <div>    
    <center>
        <h1> Login </h1>
        <form method="post"   action="loginServlet" name="lgnform">
            <table>
		<tr> 
                    <td> Select User Type </td>
                    <td> 
                        <select name="utype" required>
                            <option value="please select"> Please Select </option>
                            <option value="student"> Student </option>
                            <option value="lecturer"> Lecturer </option>
                            <option value="manager"> Manager </option>
                        </select>
                    </td>
		</tr>
                <tr>
                    <td> Enter Username </td>
                    <td> <input type="text" name="uname" style="width: 250px;">   </td>
                </tr>
                <br/>
                <tr>
                    <td> Enter Password </td>
                    <td> <input type="password" name="pass" style="width: 250px;" > </td>
                </tr>
                <tr> 
                    <td>
                    </td>    
                    <td>
                        <input type="submit" value="Submit"  name= "butteninsert" style="width: 150px;">
                    </td>
                </tr>    
            </table>
        </form>
    </center>
    </div>
</body>
</html>
