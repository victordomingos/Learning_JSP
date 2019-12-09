<%-- 
    Document   : draw_table
    Created on : 22/nov/2019, 14:13:24
    Author     : EFA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            <%
                int t_width = 200;
                String border_color = "black";
                String use_border;
    
                use_border = request.getParameter("border")!= null? "1": "0";
                
                String req_width = request.getParameter("twidth");
                if (req_width != null && !req_width.isEmpty()) {
                    t_width = new Integer(req_width);
                }
                
                String req_border_color = request.getParameter("bordercolor");
                if (req_border_color != null && !req_border_color.isEmpty()) {
                    border_color = req_border_color;
                }
            %>
            
            table, th, td {
                border: <%=use_border%>px solid <%=border_color%>;
                width: <%=t_width%>px;
                border-spacing: 0;
            }
            
        </style>
    </head>
    <body>
        <h1>Ta-daaaaa!</h1>
        
        <table>
        <%
            int rows = 1;
            int cols = 1;
         
            String req_rows = request.getParameter("rows");
            if (req_rows != null && !req_rows.isEmpty()) {
                rows = new Integer(req_rows);
            }
            
            String req_cols = request.getParameter("cols");
            if (req_cols != null && !req_cols.isEmpty()) {
                cols = new Integer(req_cols);
            }
                
            
            for (int r = 0; r < rows; r++) {
                out.println("    <tr>");
                for (int c = 0; c < cols; c++) {
                    out.println("        <td>");
                    out.println("            " + r + " - " + c);
                    out.println("        </td>");
                }
                out.println("    </tr>");
            }
        %>
        </table>
    </body>
</html>
