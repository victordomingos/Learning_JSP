<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <% 
                String[] cores = {"red", "blue", "green", "pink", "brown", "black", "darkblue"};
                for (int i = 0; i < cores.length; i++) {
                    String s = String.format("<h2 style=\"color:%s;\">Good morning!</h2>", cores[i]);
                    out.println(s);
                }
            %>
        </div>
    </body>
</html>
