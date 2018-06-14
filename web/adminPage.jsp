<%-- 
    Document   : adminPage
    Created on : 12-jun-2018, 15:21:46
    Author     : Anjo
--%>

<%@page import="entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página de administrador</title>
    </head>
    <body>
        <%
            User user = (User) session.getAttribute("user");
            if (user != null) {
        %>
        <h1>Hola <%=user.getUsername()%></h1>
         <br/>
        <form action="AllUsers"  method="POST">
            <input type="hidden" value="<%=user.getUsername()%>" name="username">
            <input type="submit" value="Ver todos los usuarios">
            
        </form>
            <br/>
        <form action="CrearUser" method="POST">
            <input type="hidden" value="<%=user.getUsername()%>" name="username">
            <input type="submit" value="Dar de alta un usuario o administrador">
        </form>
             <br/>
        <form action="AltaRestaurante"  method="POST">
                <input type="hidden" value="<%=user.getUsername()%>" name="username">
                <input type="submit" value="Dar de alta restaurantes">
        </form>
              <br/>  
        <form action="PlatosRestaurante" method="POST">
         <input type="hidden" value="<%=user.getUsername()%>" name="username">
         <input type="submit" value="Ver todos los platos de un restaurante">
        </form>
              <br/>
        <form action="ModPrecioPlato" method="POST">
         <input type="hidden" value="<%=user.getUsername()%>" name="username">
         <input type="submit" value="Modificar el precio de un plato">
        </form>
              <br/>
        <form action="BorrarValoraciones" method="POST">
         <input type="hidden" value="<%=user.getUsername()%>" name="username">
         <input type="submit" value="Borrar Valoraciones">
        </form>
              <br/>
              <br/>
        
        <form action="Logout">
                <input type="submit" value="Logout">
        </form>     
        
        <% } else {
        %>
        <h1>No hay usuario validado.</h1>
        <form action="index.jsp">
            <input type="submit" value="Pag Inicio">
        </form>
        <%
    }%>
    </body>
</html>