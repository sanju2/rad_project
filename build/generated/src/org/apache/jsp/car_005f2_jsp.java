package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class car_005f2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("   <head>\n");
      out.write("    \n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("    <title>Sign up</title>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core CSS -->\n");
      out.write("    <link href=\"vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom styles for this template -->\n");
      out.write("    <link href=\"css/zoomCab.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  <body>\n");
      out.write("\n");
      out.write("    <!-- Navigation -->\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar-dark bg-dark fixed-top\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <a class=\"navbar-brand\" href=\"#\">ZOOM CAB SERVICE</a>\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarResponsive\" aria-controls=\"navbarResponsive\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("          <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("        </button>\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\n");
      out.write("          <ul class=\"navbar-nav ml-auto\">\n");
      out.write("            <li class=\"nav-item active\">\n");
      out.write("              <a class=\"nav-link\" href=\"index.html\">Home\n");
      out.write("                <span class=\"sr-only\">(current)</span>\n");
      out.write("              </a>\n");
      out.write("            </li>\n");
      out.write("            \n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("       \n");
      out.write("        </nav>\n");
      out.write("    \n");
      out.write("    <!-- Page Content -->\n");
      out.write("    \n");
      out.write("          \n");
      out.write("        <!-- /.col-lg-8 -->\n");
      out.write("        <div class=\"col-lg-5\">\n");
      out.write("             <h1>Your Car</h1>\n");
      out.write("             \n");
      out.write("              ");

                  
                    String car=request.getParameter("cartype");
                    
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/zoom_cab_service", "root", "");
                        Statement stmt = con.createStatement();
                       
                      
                        
                        String query = "SELECT * FROM vehical where Model='"+car+"'";                
                         ResultSet rs = stmt.executeQuery(query);
                         
               
                        while (rs.next()) {
                           
                         
                               out.println("plateNo");
                               out.println("<tr><td><input type='text' name='vehical' value='"+rs.getString("Plate_No")+"'/></td></tr><br/>"); 
                               out.println("model");
                               out.println("<tr><td><input type='text' name='vehical' value='"+rs.getString("Model")+"'/></td></tr><br/>"); 
                               out.println("Status");
                               out.println("<tr><td><input type='text' name='vehical' value='"+rs.getString("Status")+"'/></td></tr><br/>"); 
                               out.println("ChassyNo");
                               out.println("<tr><td><input type='text' name='vehical' value='"+rs.getString("Chassy_No")+"'/></td></tr><br/>"); 
                               out.println("seating capacity");
                               out.println("<tr><td><input type='text' name='vehical' value='"+rs.getString("Seating_capacity")+"'/></td></tr><br/>"); 
                               out.println("No of km run");
                               out.println("<tr><td><input type='text' name='vehical' value='"+rs.getString("No_of_Km_Run")+"'/></td></tr><br/>"); 
                               out.println("Fuel");
                               out.println("<tr><td><input type='text' name='vehical' value='"+rs.getString("fuel")+"'/></td></tr><br/>");     
                                  
                        }
                                
                       
                        
                       
                        
                        
                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }
                   
                
      out.write("\n");
      out.write("                \n");
      out.write("      </div>\n");
      out.write("       \n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("    \n");
      out.write("\n");
      out.write("    <!-- Footer -->\n");
      out.write("    <footer class=\"py-5 bg-dark\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <p class=\"m-0 text-center text-white\">Copyright &copy; Zoom Cabs 2018</p>\n");
      out.write("      </div>\n");
      out.write("      <!-- /.container -->\n");
      out.write("    </footer>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core JavaScript -->\n");
      out.write("    <script src=\"vendor/jquery/jquery.min.js\"></script>\n");
      out.write("    <script src=\"vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("  </body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
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
