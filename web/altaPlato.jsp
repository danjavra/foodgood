<%-- 
    Document   : altaPlato
    Created on : 14-jun-2018, 12:37:05
    Author     : Anjo
--%>


<%@page import="entities.Restaurant"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>Alta plato</title>
    </head>
    <body>
        <h1>Dar de alta un Plato</h1>
        <%
        List<Restaurant> restaurantes = (List<Restaurant>)request.getAttribute("restaurantes");
        %>
        <form method="POST" action="NewPlato">
            <p>Nombre: <input type="text" name="name" required></p>
            <p>Tipo: </p>
            <input type="radio" name="type" value="entrante" checked> Entrante
            <input type="radio" name="type" value="primer plato" checked> Primer plato
            <input type="radio" name="type" value="plato principal" checked> Plato principal
            <input type="radio" name="type" value="postre" checked> Postre
            <p>Restaurant:  <select name="restaurant">
                <% for(Restaurant e: restaurantes){ %>
                
                <option><%=e.getName()%></option>
                <% } %> 
                </select></p> 
            <p>Price: <input type="number" required name="price" min="0" value="0" step="0.01"></p>
            <br/>
            <br/>
            <p><input type="submit" value="Alta"></p>
        </form>
    </body>
</html>
