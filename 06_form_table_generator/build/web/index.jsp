<%-- 
    Document   : index
    Created on : 22/nov/2019, 14:13:03
    Author     : EFA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>HTML Table Generator</h1>
        <p>Fill this form and press the button!</p>
        <form name="tableform" action="draw_table.jsp" method="GET">
            Rows: <input type="number" min="1" max="100000" name="rows" value="1" required/><br>
            Columns: <input type="number" min="1" max="100" name="cols" value="1" required/><br>
            Draw Border? <input type="checkbox" name="border" value="ON" checked="checked" /><br>
            Pick a border color: <input type="color" name="bordercolor" value="#000000">
            Table width (px): <input type="number" min="1" max="10000" name="twidth" value="1" required/><br>
            <input type="reset" value="Restore defaults" name="btn_reset" />
            <input type="submit" value="Generate a cool table!" name="btn_generate" />           
            
        </form>
        
    </body>
</html>
