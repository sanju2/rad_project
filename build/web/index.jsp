<%-- 
    Document   : index
    Created on : Dec 3, 2018, 8:06:04 PM
    Author     : Niwanthi Dilupama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Zoom Cab Service</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/zoomCab.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand">ZOOM CAB SERVICE</a>
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
         
            <li class="nav-item">
              <a class="nav-link" href="About.html">About</a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" href="#">Services</a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" href="contact.html">Contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="feedback.html">FeedBack</a>
            </li>
            <li class="nav-item">
              
              <%
                            if(session.getAttribute("uid") != null){
                                out.println("<a  class='nav-link' href='logout.jsp'>Logout</a>");
                            } else {
                                out.println("<a class='nav-link' href='login.html'>Login</a>");
                            }
                        %></a>
            </li>
            
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

      <!-- Heading Row -->
      <div class="row my-4">
        <div class="col-lg-8">
          <img class="img-fluid rounded" src="img/car1.jpg" alt="img">
           
        </div>
        <!-- /.col-lg-8 -->
        <div class="col-lg-4">
          <h1>Zoom Cab Service</h1>
          <%
                    if(session.getAttribute("uid") != null){
                        String firstname = request.getParameter("fname");
                        out.println("<h1>Hello " + firstname + "</h1>");
                        
                        out.println("<form action='payment.html' method='POST'><button type='submit' class='btn btn-success' name='payment'>Payment</button></form>");
                    
                    } else {
                        out.println("<h1>Hello!</h1>");
                    }
                    
                    
                %>
           
        </div>
        <!-- /.col-md-4 -->
      </div>
      <!-- /.row -->

      <!-- Call to Action Well -->
      <div class="card text-white bg-secondary my-4 text-center">
        <div class="card-body">
          <p class="text-white m-0"> celebrating 20 years , with customer satisfaction </p>
        </div>
      </div>

      <!-- Content Row -->
      <div class="row">
        <div class="col-md-6 mb-6">
          <div class="card h-100">
            <div class="card-body">
              <h2 class="card-title">Select cabs</h2>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem magni quas ex numquam, maxime minus quam molestias corporis quod, ea minima accusamus.</p>
            </div>
            <div class="card-footer">
              <a href="#" class="btn btn-primary">More Info</a>
            </div>
          </div>
        </div>
        <!-- /.col-md-4 -->
        <div class="col-md-6 mb-6">
          <div class="card h-100">
            <div class="card-body">
              <h2 class="card-title">Login</h2>
              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod tenetur ex natus at dolorem enim! Nesciunt pariatur voluptatem sunt quam eaque, vel, non in id dolore voluptates quos eligendi labore.</p>
            </div>
            <div class="card-footer">
              <a href="login.html" class="btn btn-primary">More Info</a>
            </div>
          </div>
        </div>
        
      
        <!-- /.col-md-4 -->

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

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

