<%-- 
    Document   : mostrarPlatosEspecialidad
    Created on : 14-jun-2018, 19:43:33
    Author     : Anjo
--%>

<%@page import="entities.Restaurant"%>
<%@page import="java.util.List"%>
<%@page import="entities.Dish"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Platos según la especialidad</h1>
        <%
        List<Restaurant> restaurantes = (List<Restaurant>) request.getAttribute("restaurantes");
        if(restaurantes.isEmpty()){
        %>
        <h2>No hay platos registrados</h2>
        <%
        }else{
        %>
         <div>
            <form action="AllDishBySpeciality2" method="POST">
                <label>Seleciona el tipo de plato:</label>
                <select name="restaurantes">
                <% for(Restaurant e: restaurantes){ %>
                <option><%=e.getSpecialty()%></option>
                <% }%>
                </select>
                <span class="btn_submit"><input type="submit" value="Get"></span>
            </form>
        </div>
        <%      
        }
        %>
       <form action="userPage.jsp">
                <input type="submit" value="Volver">
       </form>
    </body>
</html>
