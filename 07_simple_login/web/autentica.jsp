<%-- 
    Document   : autentica
    Created on : 25/nov/2019, 10:31:05
    Author     : EFA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="core.SessionValidation"%>
        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                    String user = (String)request.getParameter("txt_username");
                    String passwd = (String)request.getParameter("txt_password");
                    
                    if(user == null || passwd == null) {
                        out.println("Dados de acesso inválidos. Por favor preencha todos os campos.");
                    }
                    else if (SessionValidation.validateUser(user, passwd)){
                        session.setAttribute("username", user);
                        session.setAttribute("passwd", passwd); // replace this with hash or anything else
                        out.println("Olá, " + user + "! Bem-vindo(a) de volta!");
                        out.println("<br><a href=\"logout.jsp\">Sair</a>");
                    }
                    else {
                        out.println("Dados de acesso inválidos.");
                    }
    
                %>
                
                
            </div>
        </div>
    </body>
</html>
