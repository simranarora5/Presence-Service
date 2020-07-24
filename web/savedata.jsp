<%-- 
    Document   : savedata
    Created on : Jul 23, 2020, 12:03:40 PM
    Author     : Simran
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Database</title>
    </head>
    <body>
       <%
            
            String uname=request.getParameter("uname");
            String email=request.getParameter("email");
            String pass=request.getParameter("pass");
            String rpass=request.getParameter("rpass");
           
              Class.forName("oracle.jdbc.driver.OracleDriver");
              Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","ram");
              String query="select * from MEMBERS where USER_NAME=?";
                PreparedStatement stmt=con.prepareStatement(query);
                stmt.setString(1,uname);
               
                int rows=stmt.executeUpdate();
                if(rows>0){%>
                <H2 style="text-align: center">
                    Username Already Taken!!
                </H2>
                <%@ include file = "registration.jsp" %>
               <% }else if(pass.compareTo(rpass)!=0){ %>

     <h2 style="text-align: center">
         Password not Matched!!
     </h2>
 <%@ include file = "registration.jsp" %>
<%}
else{

String str="insert into MEMBERS values('"+uname+"','"+email+"','"+pass+"')";
Statement st=con.createStatement();
st.executeUpdate(str);
%>

<h2 style="text-align: center">CONGRATULATIONS!!!<BR> YOU HAVE SUCCESSFULLY REGISTERED.</h2>
<form action="index.html">
    <input type="submit" value="Back to Login Page" style="position: absolute;left: 50%;transform: translateX(-50%); border: none; border-radius: 5%; padding: 10px;color: white;background-color: black">
</form>
<%
}
%>  
    </body>
</html>
