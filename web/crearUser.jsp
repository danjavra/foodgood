<%-- 
    Document   : crearUser
    Created on : 13-jun-2018, 19:53:24
    Author     : Anjo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Dar de alta un usuario nuevo</title>
    </head>
    <body>
        <h1>Registrar nuevo Usuario</h1>
        <form method="POST" action="NewUser">
            <p>Nombre Usuario: <input type="text" name="username" required></p>
            <p>Password: <input type="text" name="password" required></p>
            <p>Nombre: <input type="text" name="name" required></p>
            <p>Apellido: <input type="text" name="surname" ></p>
            <p>Ciudad: <input type="text" name="city" required></p>
            <p>Tipo de usuario: </p>
            <input type="radio" name="type" value="0" checked> User
            <input type="radio" name="type" value="1" checked> Admin
            <br/>
            <br/>
            <p><input type="submit" value="Alta"></p>
        </form>
    </body>
</html>
