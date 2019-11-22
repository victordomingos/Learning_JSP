<%-- 
    Document   : index
    Created on : 22/nov/2019, 11:29:23
    Author     : EFA
--%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    ArrayList<String> nomes = new ArrayList<String>();
    nomes.add("Markoliniev");
    nomes.add("Georgevky");
    nomes.add("viktor dominikos");
    nomes.add("Bananevsky");
    nomes.add("Tomatevsky Godunov");
    Collections.shuffle(nomes);
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            for ( String nome : nomes) {
                out.println("<h2>Hello, " + nome + "!</h2>");
            }
        %>
        
    </body>
</html>
