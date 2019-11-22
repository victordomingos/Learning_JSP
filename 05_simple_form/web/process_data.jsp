<%-- 
    Document   : process_data
    Created on : 22/nov/2019, 12:43:06
    Author     : EFA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thanks for submiting your info!</title>
    </head>
    <body>
        <h1>Thanks for submiting your info!</h1>
        
        <%
            out.println("Hi, " + request.getParameter("username"));
        %>
            
    </body>
</html>
