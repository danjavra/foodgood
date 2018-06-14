<%-- 
    Document   : modificarPrecio
    Created on : 14-jun-2018, 22:19:47
    Author     : Anjo
--%>

<%@page import="entities.Dish"%>
<%@page import="java.math.BigDecimal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Dish plato = (Dish)session.getAttribute("platos");
             String p = (String)request.getAttribute("price");
             BigDecimal price = new BigDecimal(p);
            

        %>
        <h1>Modificar Precio</h1>
        <div>
            <form action="ModPrecio2" method="POST">
                <input type="hidden" name="name" value="<%=plato.getName()%>">  
                 <label>Nombre Completo</label>
                 <p>Price: <input type="number" required name="price" min="0" value="0" step="0.01"></p>
                
                 <span><input type="submit" value="Edit"></span>
             </form>
    </body>
</html>
