<%-- 
    Document   : Signup
    Created on : Nov 30, 2018, 11:38:26 PM
    Author     : Niwanthi Dilupama
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Sign up</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/zoomCab.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">ZOOM CAB SERVICE</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="index.html">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            
          </ul>
        </div>
       
        </nav>
    
    <!-- Page Content -->
    <div class="container">
         <div class="row my-4">
        <div class="col-lg-7">
          <img class="img-fluid rounded" src="img/car2.jpg" alt="img">
           
        </div>
          
        <!-- /.col-lg-8 -->
        <div class="col-lg-5">
             <h1>Register</h1>
             
              <%
                    String fname = request.getParameter("fname");
                    String lname = request.getParameter("lname");
                    String nic = request.getParameter("nic");
                    String tele = request.getParameter("tn");
                    String address = request.getParameter("address");
                    String uname = request.getParameter("uname");
                    String password= request.getParameter("pwd");
                    
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/zoom_cab_service", "root", "");
                        Statement stmt = con.createStatement();
                        String query = "INSERT INTO customer(firstname,lastname,nic,telephone,address,username,password) VALUES ('"+fname+"', '"+lname+"','"+nic+"','"+tele+"', '"+address+"', '"+uname+"', '"+password+"')";
                        int n = stmt.executeUpdate(query);
                        if (n!=0){
                            out.println("<h4>Registration Successfull... Now you can login to <a href='login.html'>Zoom cabs</a></h4>");
                        }else{
                            out.println("<h4>Error while registering the user.</h4>");
                        }
                        
                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }
                %>
                
      </div>
       
        </div>
        </div>
    

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Zoom Cabs 2018</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>


    </body>
</html>
