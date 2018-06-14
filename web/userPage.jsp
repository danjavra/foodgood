<%-- 
    Document   : userPage
    Created on : 12-jun-2018, 17:14:44
    Author     : Anjo
--%>

<%@page import="entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página de usuario</title>
    </head>
    <body>
        <%
            User user = (User) session.getAttribute("user");
            if (user != null) {
        %>
        <h1>Hola <%=user.getUsername()%></h1>
         <br/>
        <form action="AltaPlato"  method="POST">
            <input type="hidden" value="<%=user.getUsername()%>" name="username">
            <input type="submit" value="Dar de alta un plato">
        </form>
            <br/>
        <form action="DatosPassword" method="POST">
            <input type="hidden" value="<%=user.getUsername()%>" name="username">
            <input type="submit" value="Ver todas las valoraciones de un plato">
        </form>
             <br/>
        <form action="NewIncidencia"  method="POST">
                <input type="hidden" value="<%=user.getUsername()%>" name="nombreUsuario">
                <input type="submit" value="Ver todos los platos de una especialidad indicada">
        </form>
              <br/>  
        <form action="ValorarPlatos" method="POST">
         <input type="hidden" value="<%=user.getUsername()%>" name="username">
         <input type="submit" value="Valorar un plato">
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