<%-- 
    Document   : authenticate
    Created on : Jul 23, 2020, 2:24:24 PM
    Author     : Simran
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Authentication</title>
    </head>
    <body>
      <%  Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","ram");

            String uname=request.getParameter("uname");
            session.setAttribute("username", uname);
            String retrieved_pass=request.getParameter("pass");
          Statement st= con.createStatement();
                         ResultSet rs;
            rs = st.executeQuery("select * from MEMBERS where USER_NAME='"+uname+"' ");
            
            
                if(rs.next()){
                   
                String actual_pass=rs.getString(3);
                if(actual_pass.compareTo(retrieved_pass)!=0){
                    %>
                    <h2 style="text-align: center; position: absolute; top: 25%; left: 50%; transform: translateX(-50%)">
                        Incorrect Password!! <br> Try Again
                    </h2>
                     <%@ include file="index.html"%>
        <%
                }else{
response.sendRedirect("main.jsp");

}
                }
            else{
%>
<H2 style="text-align: center; position: absolute; top: 25%;left: 50%; transform: translateX(-50%)">
    You are not Registered!!
</H2>
<%@ include file="index.html"%>
        <%
}
            %>
          
    </body>
</html>
