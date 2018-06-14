<%-- 
    Document   : selectPlato
    Created on : 14-jun-2018, 22:03:57
    Author     : Anjo
--%>

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
      <h1>Seleccionar plato</h1>
        <%
        List<Dish> platos = (List<Dish>) request.getAttribute("platos");
        if(platos.isEmpty()){
        %>
        <h2>No hay platos registrados</h2>
        <%
        }else{
        %>
         <div>
            <form action="ModPrecio" method="POST">
                <label>Seleciona el plato:</label>
                <select name="platos">
                <% for(Dish e: platos){ %>
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
