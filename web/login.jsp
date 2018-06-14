<%-- 
    Document   : login
    Created on : 12-jun-2018, 14:36:37
    Author     : Anjo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <form action="Login" method="POST">
            <p>Nombre de Usuario: <input type="text" name="user"></p>
            <p>Password: <input type="text" name="pass"></p>
            <p><input type="submit" value="Login"></p>
        </form>
    </body>
</html>
