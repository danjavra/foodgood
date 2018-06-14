<%-- 
    Document   : valorar
    Created on : 14-jun-2018, 18:02:51
    Author     : Anjo
--%>


<%@page import="entities.Dish"%>
<%@page import="entities.User"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <title>Valorar plato</title>
    </head>
    <body>
        <h1>Valorar un Plato</h1>
        <%
        User usuario = (User) request.getAttribute("usuario");
        List<Dish> platos = (List<Dish>)request.getAttribute("platos");
        %>
        <form method="POST" action="NewRate">
            <input type="hidden" name="user" value="<%=usuario.getUsername()%>">
            <p>Fecha:  <input  type="date" name="date"></p> 
            <p>Plato:  <select name="dish">
                <% for(Dish e: platos){ %>
                
                <option><%=e.getName()%></option>
                <% } %> 
                </select></p> 
            <p>Puntuación: <input type="number" required name="mark" min="0" max="10" value="0" ></p>
            <label>Comentario:</label>
                <input type="text" name="comment">
            <br/>
            <br/>
            <p><input type="submit" value="Alta"></p>
        </form>
    </body>
</html>
