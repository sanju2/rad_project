<%-- 
    Document   : logout
    Created on : Dec 3, 2018, 8:08:48 PM
    Author     : Niwanthi Dilupama
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.invalidate();
            response.sendRedirect("index.html");
        %>
    </body>
</html>
