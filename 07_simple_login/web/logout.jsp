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
        <meta http-equiv="Refresh" content="2; url=index.jsp" />
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
                    out.println("Sessão terminada.");
                    session.setAttribute("username", null);
                    session.invalidate();
                    
                %>
            </div>
            <div class="content">
                <% 
                    out.println("<p>&nbsp;</p><p align=\"center\">A redirecionar para a página inicial...");
                %>
                
            </div>
        </div>
    </body>
</html>
