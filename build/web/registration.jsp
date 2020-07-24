<%-- 
    Document   : registration
    Created on : Jul 22, 2020, 9:42:28 PM
    Author     : Simran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Account</title>
          <link href="registrationStyle.css" rel="stylesheet">
    </head>
    <body>
        <div class="btn">
            <button class="registerbtn" onclick="document.getElementById('register').style.display='block'">Register Here</button>
            <form action="index.html">
                <input class="logoutbtn" type="submit" value="Move to Login Page">
            </form>
            
        </div> 
        <div class="modal" id="register">
            <span onclick="document.getElementById('register').style.display='none'" class="close" title="Close Form">&times;</span>
            <form class="modal-content" action="savedata.jsp" method="get">
      <h1>Sign Up</h1>
      <p>Please fill in this form to create an account.</p>
      <hr>
      <label for="username"><b>User Name</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>
      
      <label for="email"><b>Email</b></label>
      <input type="email" placeholder="name@example.com" name="email" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="pass" required>

      <label for="psw-repeat"><b>Repeat Password</b></label>
      <input type="password" placeholder="Repeat Password" name="rpass" required>
      

      <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

      <div class="clearfix">
      
        <button type="submit" class="signupbtn">Sign Up</button>
      </div>
  </form>
</div>
    </body>
</html>
