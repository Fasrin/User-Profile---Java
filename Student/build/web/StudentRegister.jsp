<%-- 
    Document   : newjsp
    Created on : Jul 23, 2018, 11:45:52 AM
    Author     : IT17097420
--%>
<%@page import="java.util.Date"%>
<%@page import="java.text.*"%>
<%@page import="java.util.Locale"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.DBConnection" %>
<%@page import="java.util.Calendar"%>
<%@page import="java.time.LocalDate"%>
<%@page import="javax.servlet.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="St.css">
        <script src="validation.js"> </script>
        <title>Student Register</title>        
         <table border="0" style="width: 100%; margin-left: 5px; column-width: auto;">
            <tbody>
                <tr>
                    <td>
                        <div>
                            <img src="IMG/CaptureNew.PNG" width="500" height="200" > 
                        </div>
                            <jsp:include page="/WEB-INF/views/navigation.jsp"></jsp:include>
                    </td>
                    <td></td>
                    <td></td>
                    <td>
                    </td>
                </tr>
            </tbody>
        </table>

    </head>
    <body> 
        <article>
         
                <%
  			String NIC = request.getParameter("nic");
                        Date dnow = new Date();
                        SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
                        
		 	Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
		%>
		
		
<article>
         	        		
    <aside class="h">
       <form onsubmit="return validate()" action="AddStudentServlet" method="post" name="account">
            <table cellpadding="5">   
                
                <tr>
                    <td style="font-size: 20px; text-align:center "> <b> Student Registration form </b> </td>
                </tr>
                
                <tr>
                    <td> First Name </td> 
                    <td> <input type="text" name="fname" required> </td>
                </tr>
                <tr>
                    <td> Address </td> 
                    <td> <input type="text" name="address" required> </td>
                </tr>
                <tr>
                    <td> Gender </td>
                    <td>  <input type="radio" name="gender" value ="Male" checked> Male
                          <input type="radio" name="gender" value="Female"> Female<br>
                    </td>
                </tr>
                <tr>
                    <td> DoB </td>
                    <td> <input type="date" name="dob" required></td>
                </tr>
                <tr>
                    <td> Contact no </td>
                    <td> <input type="text" name="contactno" required> </td>
                    <td> Username </td>
                    <td> <input type="text" name="uname" required></td>
                </tr>
                <tr>
                    <td> Email </td>
                    <td> <input type="email" name="email" required> </td>
                    <td> Password </td>
                    <td> <input type="password" name="password" required></td>
                </tr>
                <tr>
                    <td> NIC </td>
                    <td> <input type="text" name="nic" value="<%=NIC%>" readonly> </td>
                    <td> Confirm Password </td>
                    <td> <input type="password" name="password1" required></td>
                </tr>
                <tr>
                    <td> Special Achievement </td>
                    <td> <input type="text" name="special"></td>
                    <td>Date</td>
                    <td><input type="text" name="date" value="<%=ft.format(dnow)%>" readonly></td>
                </tr>
               <tr>
                    <td> <b> Educational Details </b> </td>
                </tr>
                <tr>
                    <td> OL Year </td>
                    <td> <input type="text" name="olyear" value="" required> </td>
                    <td> Index number </td>
                    <td> <input type="text" name="indexnumber" required></td>
                </tr>
                <tr>
                    <td> Results </td>
                    <td><textarea rows="4" cols="21" name="result" required></textarea> </td>
                </tr>
                
               <tr>
                    <td> <b> Parent/Guardian Details </b> </td>
                </tr>
                <tr>
                    <td> Name </td>
                    <td> <input type="text" name="pname" required> </td>
                    <td> Contact number </td>
                    <td> <input type="text" name="pcontactno" required></td>
                </tr>
                <tr>
                    <td> Occupation </td>
                    <td> <input type="text" name="occupation" required> </td>
                    <td> Working place address </td>
                    <td> <input type="text" name="wpaddress" required></td>
                </tr>
                <tr>
                    <td> <b> Course Details </b> </td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td><b>Course Code</b></td>
                    <td><b>Course Name</b></td>
                    <td><b>Fee</b></td>
                </tr>
                    <%     try{ 
				
					con = DBConnection.createConnection();
					statement=con.createStatement();
					String sql ="SELECT *  FROM course" ;

					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>
                                        
                <tr>
                    <td></td>
                    <td><%=resultSet.getString("courseCode") %> </td>
                    <td><%=resultSet.getString("courseName") %></td>
                    <td><%=resultSet.getString("coursefee") %></td>
				    <%
						}
				
					}
						catch (Exception e) {
					
						e.printStackTrace();
					}
					%>
                </tr>
                <tr>
                    <td> Choose your course </td>
                    <td>
                        <select name="Course" required>
                        	<option value="please select"></option>
                 <%     try{ 
				
					con = DBConnection.createConnection();
					statement=con.createStatement();
					String sql ="SELECT courseCode  FROM course" ;

					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>
                       <option value="<%=resultSet.getString("courseCode") %>"><%=resultSet.getString("courseCode") %></option>
	    
				    <%
						}
				
					}
						catch (Exception e) {
					
						e.printStackTrace();
					}
					%>
	    </select>
                </td>
                </tr>
                <tr>
                    <td></td>
                    <td> <input type="submit" value="Submit"></td>
                   
                </tr>
                <tr>
                    <td></td>
                     <td> <input type="submit" value="Reset"></td>
                </tr>
            </table>
        </form> 
            <br><br>
        </aside>
        </article>
       <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
    </body>
</html>
