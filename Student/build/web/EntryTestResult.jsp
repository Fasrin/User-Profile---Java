
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.DBConnection" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" type="text/css" href="St.css">
        <title>Entry Test Results</title>
        <table border="0" style="width: 100%; margin-left: 5px; column-width: auto;">
            <tbody>
                <tr>
                    <td>
                        <div>
                            <img src="IMG/CaptureNew.PNG" width="500" height="200" > 
                        </div>        
                        <jsp:include page="/WEB-INF/views/navigation.jsp"></jsp:include>
                    </td>
                    <td>
                        <img src="IMG/1.png" width="100" height="100" >
                        <br>
                        <a href="login.jsp"> Login </a>
                    </td>
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
            Connection con = null;
            Statement statement = null;
            ResultSet resultSet = null;
	%>
        
   <article>
       <aside class="h">
           
           <form name="form" action="SearchResultServlet" method="post">
	<table>
	<th>View Entry Test Result</th>
        <tr></tr>
        <tr></tr>
	<tr>
		<td> Candidate NIC</td>
		<td><input type="text" name="cnic" required></td>
		<td><input type="submit" value="Find"/> </td>
	</tr>
        </table>
           </form>
           <br><br>
           <div align="left">
	
		<table border="1" cellpadding="10">
		 
            <tr>
                <th>Name</th>
                <th>NIC</th>
                <th>Result</th>
                <th>Register</th>
            </tr>
                <%
			try{ 
					con = DBConnection.createConnection();
					statement= con.createStatement();
					String sql ="SELECT * FROM entrytest";

					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
		%>
                
                                        <td><%=resultSet.getString("name") %></td>
                                        <td><%=resultSet.getString("NIC") %></td>
                                        <td><%=resultSet.getString("test_Result") %></td>
               
                                        <td><a href="StudentRegister.jsp?nic=<%=resultSet.getString("NIC")%>">Register</a></td>
                                        </tr>
                                       
                <%
					}

                        } catch (Exception e) {
                            e.printStackTrace();
					}
		%>
		</table>
           </div>
                <br><br><br>
       </aside>
           
        </article>
                 <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
    </body>
</html>
