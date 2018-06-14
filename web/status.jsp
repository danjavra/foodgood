<%-- 
    Document   : status
    Created on : 13-jun-2018, 18:45:58
    Author     : Anjo
--%>

<%@page import="entities.User"%>
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
            User user = (User) session.getAttribute("user");
            Integer tipo = user.getType();
            String status = (String) request.getAttribute("status");
            // Por si llaman al jsp sin pasar por el servlet
            if (status != null) {
                // Mostramos el msg por pantalla
        %>
        <h1><%= status %></h1>
        <%
            }

        %>
            <%
        if(tipo==1){
        %>
         <form action="adminPage.jsp">
            <input type="submit" value="Volver">
        </form>
        <%}else{%>
        <form action="userPage.jsp">
            <input type="submit" value="Volver">
        </form>
        <%}%>
    </body>
</html>
