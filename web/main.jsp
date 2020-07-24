<%-- 
    Document   : main
    Created on : Jul 23, 2020, 2:40:49 PM
    Author     : Simran
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logged In</title>
        <link rel="stylesheet" href="mainStyle.css">
      
    </head>
    <body>
        
        <%
            String uname=(String)session.getAttribute("username");
            String initials=uname.substring(0, 1);
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","ram");
            String get_email= "SELECT * FROM MEMBERS WHERE USER_NAME=?";
            PreparedStatement pstmt=con.prepareStatement(get_email);
            pstmt.setString(1,uname);
            ResultSet rs;
            rs=pstmt.executeQuery();
            String email="";
            if(rs.next()){
            email=rs.getString(2);
            }
            String title=uname+"..."+email;
            %>
            <h3 style="text-align: center; position: absolute;top: 10%;left: 40%">
                Present Viewers
            </h3>
            <div class="avatar-circle" title=<%=title%>>
                <span class="initials"><%=initials%></span>  
            </div>
     
            
        <div class="container">
            
            
            <div  class="past_visit">
            <button onclick="document.getElementById('table1').style.display='block'">Show Past Visitors</button>
        </div> 
            

        
        
            
        <%
        
        Date createTime=new Date(session.getCreationTime());
        Date endTime=new Date(session.getLastAccessedTime());
        DateFormat dateFormat = new SimpleDateFormat("E, dd MMM yyyy HH:mm:ss z");  
        String creationTime = dateFormat.format(createTime); 
       
        String endingTime = dateFormat.format(endTime);
         
         String retrieveData="SELECT * from PAST_VIEWERS where UNAME=?";
         PreparedStatement stmt=con.prepareStatement(retrieveData);
         stmt.setString(1,uname);
        
         rs=stmt.executeQuery();
        
         if(rs.next()){
             String update_data="UPDATE PAST_VIEWERS SET LOGIN_TIME=?, LAST_ACCESSED_TIME=? WHERE UNAME=?";
             PreparedStatement update=con.prepareStatement(update_data);
             update.setString(1, creationTime);
             update.setString(2, endingTime);
             update.setString(3, uname);
             
             update.executeUpdate();
                update.close();
                rs.close();

         }else{
             
            
         String insertData="insert into PAST_VIEWERS values('"+uname+"','"+creationTime+"','"+endingTime+"')";
         Statement st=con.createStatement();
         st.executeUpdate(insertData); 
         st.close();
         
         }
         

         
         
         
         %>
        
         
          <div class="logout">
             <form action="logoutServlet">
            <input type="submit" value="Logout">
             </form>
         </div>
        
   </div>
         <div class="table" id="table1">
   <%
   String data_query="SELECT * FROM PAST_VIEWERS";    
   Statement visitor_data=con.createStatement();
   rs=visitor_data.executeQuery(data_query);
   
   %>    
       
   <TABLE id="t1">
        <tr> 
            <th><b>USERNAME</b></th>
            <th><b>LOGIN TIME</b></th>
            <th><b>LAST ACCESSED TIME</b></th>
        </tr>
         <%   while(rs.next())
           {  
%>       
        <tr>
            <td><%=rs.getString("UNAME")%></td>
            <td><%=rs.getString("LOGIN_TIME")%></td>
            <td><%=rs.getString("LAST_ACCESSED_TIME")%></td>
        </tr>
                                           <%     } %>
    </TABLE>
   </div>

    </body>
</html>
