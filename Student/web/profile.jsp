<%-- 
    Document   : profile
    Created on : 26-Aug-2018, 14:32:33
    Author     : Fasrin
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="util.DBConnection" %>
<%@page import="java.io.PrintWriter"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="St.css">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
        <jsp:include page="/WEB-INF/views/stuNAV.jsp"></jsp:include>
                        <%
			
			Connection con = null;
			Statement statement = null;
			ResultSet resultSet = null;
			
			%>	
			<%
		try{ 
					con = DBConnection.createConnection();
					statement=con.createStatement();
					String sql ="SELECT * FROM  student where userID="+session.getAttribute("id");

					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>
                        
        <center>
                                <table>
                                <tr>
                                    <td> </td>
                                    <td> <img src="IMG/edit_1.png"> </td>
                                    <td> </td>
                                    <td> </td>
                                </tr>
				<tr>
                                    <td> <b> ID  </b> </td>
                                    <td> <%=resultSet.getString("userID") %></td>
				
                                    <td> <b> Full Name  </b> </td>
                                    <td> <%=resultSet.getString("fullname") %></td>
				</tr>
				<tr>
                                    <td> <b> Address  </b> </td>
                                    <td> <%=resultSet.getString("address") %></td>
                                    <td> <b> Contact No  </b> </td>
                                    <td> <%=resultSet.getString("contactNum") %></td>
				</tr>
				<tr>
                                    <td> <b> Email  </b> </td>
                                    <td><%=resultSet.getString("email") %></td>
				
                                    <td> <b> O/L Year  </b> </td>
                                    <td> <%=resultSet.getString("OL_year") %> </td>
                                </tr>
                                <tr>
                                    <td> <b> O/L Result  </b> </td>
                                    <td> <%=resultSet.getString("OL_Result") %> </td>
                                
                                    <td> <b> IndexNo  </b> </td>
                                    <td> <%=resultSet.getString("indexNo") %> </td>
                                </tr>
                                <tr>
                                    <td> <b> Special  </b> </td>
                                    <td> <%=resultSet.getString("Special") %> </td>
                                
                                    <td> <b> UserName  </b> </td>
                                    <td> <%=resultSet.getString("s_username") %> </td>
                                </tr>
                                <tr>
                                    <td> <b> Parent Name  </b> </td>
                                    <td> <%=resultSet.getString("parentName") %> </td>
                                
                                    <td> <b> Working Place Address </b> </td>
                                    <td> <%=resultSet.getString("p_WorkingPlace") %> </td>
                                </tr>
                                <tr>
                                    <td> <b> Working Place Telphone  </b> </td>
                                    <td> <%=resultSet.getString("w_Telphone") %> </td>
                                </tr>
						
	<tr>
           <td> </td>
           <td> </td>
           <td> </td>
           <td> <input type="submit" value="update" style="length:100px" onclick="location.href='profileUpdate.jsp?userID=<%=session.getAttribute("id")%>'"/> </td>
        </tr>		
		
			</table>
</center>			
			<% }
			} catch (Exception e) {
				e.printStackTrace();
			}
			%>
	<br><br>
</aside>
</article>
  <jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
			
</body>
</html>
    </body>
</html>
