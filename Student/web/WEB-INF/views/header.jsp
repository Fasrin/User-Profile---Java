<%-- 
    Document   : header
    Created on : Aug 12, 2018, 1:42:33 PM
    Author     : Ganeesha
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

        <title>JSP Page</title>
      
	

    </head>
    <body>
        
            <table border="0" style="width: 100%; margin-left: 5px; column-width: auto;">
            <tbody>
                <tr>
                    <td>
                        <div>
                            <img src="IMG/CaptureNew.PNG" width="500" height="200" > 
                        </div>
                    </td>
                    <td></td>
                    <td>
                        <div>
                            <a href="profile.jsp"> <img src="IMG/1.png" width="80px"></a>
                            <br>
                            
				<br>Welcome <b><%=session.getAttribute("username") %> </b> (<%=session.getAttribute("id") %>)<br>
                               <form action="logout" method="post">
			 	<input type="submit"  value="Logout">
                                </form>
                       </div>
                    </td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
