<%-- 
    Document   : altaRestaurant
    Created on : 14-jun-2018, 11:55:58
    Author     : Anjo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Alta restaurante</title>
    </head>
    <body>
        <h1>Registro Restaurante</h1>
        <form method="POST" action="AltaRestaurantes">
            <p>Nombre Restaurante: <input type="text" name="name" required></p>
            <p>Ciudad: <input type="text" name="city" required></p>
            <p>Especialidad: <input type="text" name="speciality" required></p>
            <br/>
            <br/>
            <p><input type="submit" value="Alta"></p>
        </form>
    </body>
</html>
