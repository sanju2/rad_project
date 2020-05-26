package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("  <head>\n");
      out.write("\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("    <title>Zoom Cab Service</title>\n");
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
      out.write("        <a class=\"navbar-brand\">ZOOM CAB SERVICE</a>\n");
      out.write("        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarResponsive\" aria-controls=\"navbarResponsive\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("          <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("        </button>\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\n");
      out.write("          <ul class=\"navbar-nav ml-auto\">\n");
      out.write("            <li class=\"nav-item active\">\n");
      out.write("              <a class=\"nav-link\" href=\"index.html\">Home\n");
      out.write("                <span class=\"sr-only\">(current)</span>\n");
      out.write("              </a>\n");
      out.write("             </li>\n");
      out.write("         \n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link\" href=\"About.html\">About</a>\n");
      out.write("            </li>\n");
      out.write("            \n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link\" href=\"#\">Services</a>\n");
      out.write("            </li>\n");
      out.write("            \n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link\" href=\"contact.html\">Contact</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link\" href=\"feedback.html\">FeedBack</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              \n");
      out.write("              ");

                            if(session.getAttribute("uid") != null){
                                out.println("<a  class='nav-link' href='logout.jsp'>Logout</a>");
                            } else {
                                out.println("<a class='nav-link' href='login.html'>Login</a>");
                            }
                        
      out.write("</a>\n");
      out.write("            </li>\n");
      out.write("            \n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("    <!-- Page Content -->\n");
      out.write("    <div class=\"container\">\n");
      out.write("\n");
      out.write("      <!-- Heading Row -->\n");
      out.write("      <div class=\"row my-4\">\n");
      out.write("        <div class=\"col-lg-8\">\n");
      out.write("          <img class=\"img-fluid rounded\" src=\"img/car1.jpg\" alt=\"img\">\n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("        <!-- /.col-lg-8 -->\n");
      out.write("        <div class=\"col-lg-4\">\n");
      out.write("          <h1>Zoom Cab Service</h1>\n");
      out.write("          ");

                    if(session.getAttribute("uid") != null){
                        String firstname = request.getParameter("fname");
                        out.println("<h1>Hello " + firstname + "</h1>");
                        
                        out.println("<form action='payment.html' method='POST'><button type='submit' class='btn btn-success' name='payment'>Payment</button></form>");
                    
                    } else {
                        out.println("<h1>Hello!</h1>");
                    }
                    
                    
                
      out.write("\n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("        <!-- /.col-md-4 -->\n");
      out.write("      </div>\n");
      out.write("      <!-- /.row -->\n");
      out.write("\n");
      out.write("      <!-- Call to Action Well -->\n");
      out.write("      <div class=\"card text-white bg-secondary my-4 text-center\">\n");
      out.write("        <div class=\"card-body\">\n");
      out.write("          <p class=\"text-white m-0\"> celebrating 20 years , with customer satisfaction </p>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("      <!-- Content Row -->\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"col-md-6 mb-6\">\n");
      out.write("          <div class=\"card h-100\">\n");
      out.write("            <div class=\"card-body\">\n");
      out.write("              <h2 class=\"card-title\">Select cabs</h2>\n");
      out.write("              <p class=\"card-text\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"card-footer\">\n");
      out.write("              <a href=\"#\" class=\"btn btn-primary\">More Info</a>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- /.col-md-4 -->\n");
      out.write("        <div class=\"col-md-6 mb-6\">\n");
      out.write("          <div class=\"card h-100\">\n");
      out.write("            <div class=\"card-body\">\n");
      out.write("              <h2 class=\"card-title\">Login</h2>\n");
      out.write("              <p class=\"card-text\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod tenetur ex natus at dolorem enim! Nesciunt pariatur voluptatem sunt quam eaque, vel, non in id dolore voluptates quos eligendi labore.</p>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"card-footer\">\n");
      out.write("              <a href=\"login.html\" class=\"btn btn-primary\">More Info</a>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("      \n");
      out.write("        <!-- /.col-md-4 -->\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("      <!-- /.row -->\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    <!-- /.container -->\n");
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
