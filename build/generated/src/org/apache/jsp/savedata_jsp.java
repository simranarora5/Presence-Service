package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class savedata_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/registration.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Database</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       ");

            
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
                if(rows>0){
      out.write("\n");
      out.write("                <H2 style=\"text-align: center\">\n");
      out.write("                    Username Already Taken!!\n");
      out.write("                </H2>\n");
      out.write("                ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Create Account</title>\n");
      out.write("          <link href=\"registrationStyle.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div>\n");
      out.write("            <button class=\"registerbtn\"onclick=\"document.getElementById('register').style.display='block'\">Register Here</button>\n");
      out.write("        </div> \n");
      out.write("        <div class=\"modal\" id=\"register\">\n");
      out.write("            <span onclick=\"document.getElementById('register').style.display='none'\" class=\"close\" title=\"Close Form\">&times;</span>\n");
      out.write("            <form class=\"modal-content\" action=\"savedata.jsp\" method=\"get\">\n");
      out.write("      <h1>Sign Up</h1>\n");
      out.write("      <p>Please fill in this form to create an account.</p>\n");
      out.write("      <hr>\n");
      out.write("      <label for=\"username\"><b>User Name</b></label>\n");
      out.write("      <input type=\"text\" placeholder=\"Enter Username\" name=\"uname\" required>\n");
      out.write("      \n");
      out.write("      <label for=\"email\"><b>Email</b></label>\n");
      out.write("      <input type=\"email\" placeholder=\"name@example.com\" name=\"email\" required>\n");
      out.write("\n");
      out.write("      <label for=\"psw\"><b>Password</b></label>\n");
      out.write("      <input type=\"password\" placeholder=\"Enter Password\" name=\"pass\" required>\n");
      out.write("\n");
      out.write("      <label for=\"psw-repeat\"><b>Repeat Password</b></label>\n");
      out.write("      <input type=\"password\" placeholder=\"Repeat Password\" name=\"rpass\" required>\n");
      out.write("      \n");
      out.write("\n");
      out.write("      <p>By creating an account you agree to our <a href=\"#\" style=\"color:dodgerblue\">Terms & Privacy</a>.</p>\n");
      out.write("\n");
      out.write("      <div class=\"clearfix\">\n");
      out.write("      \n");
      out.write("        <button type=\"submit\" class=\"signupbtn\">Sign Up</button>\n");
      out.write("      </div>\n");
      out.write("  </form>\n");
      out.write("</div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("               ");
 }else if(pass.compareTo(rpass)!=0){ 
      out.write("\n");
      out.write("\n");
      out.write("     <h2 style=\"text-align: center\">\n");
      out.write("         Password not Matched!!\n");
      out.write("     </h2>\n");
      out.write(" ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Create Account</title>\n");
      out.write("          <link href=\"registrationStyle.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div>\n");
      out.write("            <button class=\"registerbtn\"onclick=\"document.getElementById('register').style.display='block'\">Register Here</button>\n");
      out.write("        </div> \n");
      out.write("        <div class=\"modal\" id=\"register\">\n");
      out.write("            <span onclick=\"document.getElementById('register').style.display='none'\" class=\"close\" title=\"Close Form\">&times;</span>\n");
      out.write("            <form class=\"modal-content\" action=\"savedata.jsp\" method=\"get\">\n");
      out.write("      <h1>Sign Up</h1>\n");
      out.write("      <p>Please fill in this form to create an account.</p>\n");
      out.write("      <hr>\n");
      out.write("      <label for=\"username\"><b>User Name</b></label>\n");
      out.write("      <input type=\"text\" placeholder=\"Enter Username\" name=\"uname\" required>\n");
      out.write("      \n");
      out.write("      <label for=\"email\"><b>Email</b></label>\n");
      out.write("      <input type=\"email\" placeholder=\"name@example.com\" name=\"email\" required>\n");
      out.write("\n");
      out.write("      <label for=\"psw\"><b>Password</b></label>\n");
      out.write("      <input type=\"password\" placeholder=\"Enter Password\" name=\"pass\" required>\n");
      out.write("\n");
      out.write("      <label for=\"psw-repeat\"><b>Repeat Password</b></label>\n");
      out.write("      <input type=\"password\" placeholder=\"Repeat Password\" name=\"rpass\" required>\n");
      out.write("      \n");
      out.write("\n");
      out.write("      <p>By creating an account you agree to our <a href=\"#\" style=\"color:dodgerblue\">Terms & Privacy</a>.</p>\n");
      out.write("\n");
      out.write("      <div class=\"clearfix\">\n");
      out.write("      \n");
      out.write("        <button type=\"submit\" class=\"signupbtn\">Sign Up</button>\n");
      out.write("      </div>\n");
      out.write("  </form>\n");
      out.write("</div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write('\n');
}
else{

String str="insert into MEMBERS values('"+uname+"','"+email+"','"+pass+"')";
Statement st=con.createStatement();
st.executeUpdate(str);

      out.write("\n");
      out.write("\n");
      out.write("<h2 style=\"text-align: center\">CONGRATULATIONS!!!<BR> YOU HAVE SUCCESSFULLY REGISTERED.</h2>\n");
      out.write("<form action=\"index.html\">\n");
      out.write("    <input type=\"submit\" value=\"Bck to Login Page\">\n");
      out.write("</form>\n");

}

      out.write("  \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
