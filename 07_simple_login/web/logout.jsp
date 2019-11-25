<%-- 
    Document   : logout
    Created on : 25/nov/2019, 12:08:24
    Author     : EFA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Refresh" content="3; url=index.jsp" />
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
        <div class="headbar">
            <div class="sitelogo">
                    <h1>A nice site name</h1>
            </div>

            <div class="login">
                <% 
                    out.println("A terminar sessão... <br>Será redirecionado automaticamente para a página inicial.");
                    session.setAttribute("username", null);
                    session.setAttribute("passwd", null);
                    session.invalidate();

                %>
            </div>
        </div>
    </body>
</html>
