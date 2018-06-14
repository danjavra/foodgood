<%-- 
    Document   : listaPlatosRestaurante
    Created on : 14-jun-2018, 21:19:39
    Author     : Anjo
--%>

<%@page import="java.util.List"%>
<%@page import="entities.Restaurant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <h1>Seleccionar restaurante</h1>
        <%
        List<Restaurant> restaurantes = (List<Restaurant>) request.getAttribute("restaurantes");
        if(restaurantes.isEmpty()){
        %>
        <h2>No hay platos registrados</h2>
        <%
        }else{
        %>
         <div>
            <form action="PlatosRestaurante2" method="POST">
                <label>Seleciona el restaurante:</label>
                <select name="restaurantes">
                <% for(Restaurant e: restaurantes){ %>
                <option><%=e.getName()%></option>
                <% }%>
                </select>
                <span class="btn_submit"><input type="submit" value="Get"></span>
            </form>
        </div>
        <%      
        }
        %>
       <form action="adminPage.jsp">
                <input type="submit" value="Volver">
       </form>
    </body>
</html>
