<%-- 
    Document   : mostrarRestaurantesByEspecialidad
    Created on : 14-jun-2018, 20:37:07
    Author     : Anjo
--%>

<%@page import="entities.Dish"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body>
        <h1>Lista de todos los platos por especialidad</h1>
        <%
            List<Dish> platos = (List<Dish>) request.getAttribute("foodgood");
            if(platos.isEmpty()){                     
        %>
        <h2>No hay platos registrados</h2>
        <%
        }else{
        %>
            <div>
            <table>
                <tr>
                      <th>Name</th>
                      <th>Type</th>
                      <th>Restaurant</th>
                      <th>Price</th>
                    
                </tr>
                  <%
                  for(Dish i: platos){
                  %>
                <tr>
                      <td><%=i.getName() %></td>
                      <td><%=i.getType()%></td>
                      <td><%=i.getRestaurant()%></td>
                      <td><%=i.getPrice()%></td>
                      
                </tr>
                  <%}%>
            </table>
        </div>
            <form action="adminPage.jsp">
                <input type="submit" value="Volver">
            </form>
</html>
