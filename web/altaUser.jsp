<%-- 
    Document   : altaUsuario
    Created on : 13-jun-2018, 18:02:32
    Author     : Anjo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alta usuario</title>
    </head>
    <body>
        <h1>Registro de nuevo Usuario</h1>
        <form method="POST" action="NewUser">
            <p>Nombre Usuario: <input type="text" name="username" required></p>
            <p>Password: <input type="text" name="password" required></p>
            <p>Nombre: <input type="text" name="name" required></p>
            <p>Apellido: <input type="text" name="surname" ></p>
            <p>Ciudad: <input type="text" name="city" required></p>
             <input type="hidden" value="0" name="type">
            <br/>
            <br/>
            <p><input type="submit" value="Alta"></p>
        </form>
    </body>
</html>
