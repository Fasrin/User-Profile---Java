<%-- 
    Document   : studentView
    Created on : Aug 10, 2018, 9:37:55 PM
    Author     : Fasrin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" type="text/css" href="TableStyleSheet2.css">  
   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
    </head>
    <body>
        <div>
            <img src="IMG/CaptureNew.PNG" width="500" height="200" > 
        </div>
        <jsp:include page="/WEB-INF/views/navigation.jsp"></jsp:include>
        <%@ page import="java.sql.*" %>
        <table    id="student">
                <tr>
                    <th> studentid </th>
                    <th>  studentName</th> 
                    <th> Address </th>
                    <th>  ContactNumber </th>
                    <th> Email  </th>
                    <th>  NIC </th>
                    <th>  O/L Year </th>
                    <th> Course Code </th>
                    <th> Action </th>
                </tr>
        
<%
  try{
	  
	
          
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ims","root","root");
     
    
   
    
    Statement st =  con.createStatement();
    String sql = "Select * from student";
    ResultSet rs = st.executeQuery(sql);
    
    while(rs.next()){

%>

 
    <tr>
      
        <td> <%=rs.getString("userID") %>  </td>
        <td> <%=rs.getString("fullname")%></td>
        <td> <%= rs.getString("address")%></td>
        <td> <%= rs.getString("contactNum")%></td>
        <td> <%=rs.getString("email")%></td>
        <td> <%=rs.getString("NIC")%></td>
        <td> <%=rs.getString("OL_year")%></td>
        <td> <%=rs.getString("courseCode")%></td>

       
           <td><a href="studentUpdate.jsp?userID=<%=rs.getString("userID")%>">Update</a></td>
            
      
                <form action="deleteProfileServlet" method="post">
                    <td>
                     <input type="hidden"  name="userID"   hidden value="<%=rs.getString("userID") %>">
                    <input type="submit"  value="delete">
                  </td>

                </form>



     </tr>
  
  
   
<%
    }
    con.close();
  }
    catch(Exception e){
    	System.out.println("error");
    	
    }
  

%>
  </table


        
    </body>
</html>
