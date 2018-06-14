<%-- 
    Document   : altaPlato
    Created on : 14-jun-2018, 12:37:05
    Author     : Anjo
--%>

<%@page import="java.util.List"%>
<%@page import="entities.Restaurant"%>
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
        if(restaurantes.isEmpty()){
        %>
         <h2>No se puede dar de alta al plato: No existe este restaurante</h2>
        <%
        }else{
        %>
        <form method="POST" action="NewPlato">
            <p>Nombre: <input type="text" name="name" required></p>
            <p>Tipo: <input type="text" name="type" required></p>
            <p>Restaurant:  <select name="restaurant">
                <% for(Restaurant e: restaurantes){ %>
                
                <option><%=e.getName()%></option>
                <% } %> 
                </select></p>
            <p>Price: <input type="text" name="price" required></p>
            <br/>
            <br/>
            <p><input type="submit" value="Alta"></p>
        </form>
    </body>
</html>
