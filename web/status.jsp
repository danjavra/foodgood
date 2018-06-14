<%-- 
    Document   : status
    Created on : 13-jun-2018, 18:45:58
    Author     : Anjo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FoodGood Status</title>
    </head>
    <body>
          <%
            // Recogemos la variable status que nos han pasado
            String status = (String) request.getAttribute("status");
            // Por si llaman al jsp sin pasar por el servlet
            if (status != null) {
                // Mostramos el msg por pantalla
        %>
        <h1><%= status %></h1>
        <%
            }

        %>
        <form action="index.jsp">
            <input type="submit" value="Menú Principal">
        </form>
    </body>
</html>
