<%-- 
    Document   : index
    Created on : 11-jun-2018, 20:00:51
    Author     : Anjo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Food Good</title>
    </head>
    <body>
        <h1>Menú principal de la aplicación</h1>
        <br/>
        <form action="altaUser.jsp">
            <input type="submit" value="Registrarse"/>
        </form>
        <br/>
        <form action="login.jsp">
            <input type="submit" value="Login"/>
        </form>
        <%
            String status = (String) request.getAttribute("status");
            if (status != null) {
        %>
        <script type="text/javascript">
            alert("<%= status%>");
        </script>
        <%
            }
        %>
    </body>
</html>
