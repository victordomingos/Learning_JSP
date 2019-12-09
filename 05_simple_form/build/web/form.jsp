<%-- 
    Document   : form
    Created on : 22/nov/2019, 12:06:13
    Author     : EFA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>A simple form</title>
    </head>
    <body>
        <h1>A simple form</h1>
        
        <form name="user_data" action="process_data.jsp" method="POST">
            Name: <input type="text" name="username" value="" size="15"/><br>
            Phone: <input type="text" name="phone" value="" size="15" /><br>
            <input type="submit" value="Submit" name="btn_submit" />
            
        </form>
       
        
    </body>
</html>
