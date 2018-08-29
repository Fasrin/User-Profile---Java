<%-- 
    Document   : studentUpdate
    Created on : 25-Aug-2018, 23:01:14
    Author     : Fasrin
--%>

<%@page import="util.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="St.css">
        <title> Update Student </title>
        <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
        <table border="0" style="width: 100%; margin-left: 5px; column-width: auto;">
            <tbody>
                <tr>
                    <td>
                            <jsp:include page="/WEB-INF/views/navigation.jsp"></jsp:include>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </head>
    <body>
        <center>
<h><b> UPDATE THE STUDENT </b></h>
<br><br>
         
                <%
  			String userID = request.getParameter("userID");
                        
			Connection connection = null;
			Statement statement = null;
			ResultSet resultSet = null;
		%>
		
			<%
			try{ 
				connection = DBConnection.createConnection();
					statement=connection.createStatement();
					String sql ="SELECT * FROM  student where userID='"+userID+"'";

					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>
		<form method="post" action="updateProfile">
		<table>
		<tr><br>
                <td> UserID </td>
                <td> <input type="text" name="user" style="width: 250px;" value="<%=resultSet.getString("userID") %>"readonly> </td>
		
               <!-- <td> <input type="text" name="user" style="width: 250px;" value="<%=userID%>"readonly> </td>
                -->
               <br>
                </tr>
                
                <tr>
                    <td> Full Name </td>
                    <td> <input type="text" name="fullName" style="width: 250px;" value="<%=resultSet.getString("fullname") %>" > </td>
                </tr>
                
                <tr>
                    <td> Address </td>
                    <td> <input type="text" name="address" style="width: 250px;" value="<%=resultSet.getString("address") %>"> </td>
                </tr>
                
                <tr>
                    <td> Contact Number </td>
                    <td> <input type="text" name="contactNumber" style="width: 250px;" value="<%=resultSet.getString("contactNum") %>" > </td>
                </tr>
                
                <tr>
                    <td> Email </td>
                    <td> <input type="email" name="email" style="width: 270px;" value="<%=resultSet.getString("email") %>">
                </tr>
               
                <tr>
                    <td> O/L Year </td>
                    <td> <input type="text" name="olyear" style="width: 250px;" value="<%=resultSet.getString("OL_year") %>"> </td>
                </tr>
                
                <tr>
                    <td> O/L Results </td>
                    <td> <input type="text" name="olresults" style="width: 250px;" value="<%=resultSet.getString("OL_Result") %>"> </td>
                </tr>
                
                <tr>
                    <td> Index No </td>
                    <td> <input type="text" name="indexno" style="width: 250px;" value="<%=resultSet.getString("indexNo") %>"> </td>
                </tr>
                
                <tr>
                    <td> Special </td>
                    <td> <input type="text" name="special" style="width: 250px;" value="<%=resultSet.getString("Special") %>"> </td>
		</tr>
                
                <tr>
                    <td> UserName </td>
                    <td> <input type="text" name="username" style="width: 250px;" value="<%=resultSet.getString("s_username") %>"> </td>
                </tr>
               
                <tr>
                    <td> ParentName </td>
                    <td> <input type="text" name="pname" style="width: 250px;" value="<%=resultSet.getString("parentName") %>"> </td>
                </tr>
                
                <tr>
                    <td> Working Place </td>
                    <td> <input type="text" name="wpaddress" style="width:250px;" value="<%=resultSet.getString("p_WorkingPlace") %>"> </td>
                </tr>    
 
                <tr>
                    <td> Working Place Telephone </td>
                    <td> <input type="text" name="pcontactno" style="width:250px;" value="<%=resultSet.getString("w_Telphone") %>"> </td>
                </tr>
        
                <tr>
                    <td> </td>
                    <td> <input type="submit" value="update"> </td>
                </tr>
        
	<%
			}
		connection.close();
		} catch (Exception e) {
		
			e.printStackTrace();
		}
	%>
                </table>
                </form>
        </center>
    </body>
</html>
