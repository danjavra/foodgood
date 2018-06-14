<%-- 
    Document   : listaTodosUsers
    Created on : 14-jun-2018, 11:25:08
    Author     : Anjo
--%>

<%@page import="java.util.List"%>
<%@page import="entities.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body>
        <h1>Lista de todas las Incidencias</h1>
        <%
            List<User> users = (List<User>) request.getAttribute("foodgood");
            if(users.isEmpty()){                     
        %>
        <h2>No hay usuarios registradas</h2>
        <%
        }else{
        %>
            <div>
            <table>
                <tr>
                      <th>Username</th>
                      <th>Password</th>
                      <th>City</th>
                      <th>Name</th>
                      <th>Surname</th>
                      <th>Type</th>
                </tr>
                  <%
                  for(User i: users){
                  %>
                <tr>
                      <td><%=i.getUsername() %></td>
                      <td><%=i.getPassword()%></td>
                      <td><%=i.getCity()%></td>
                      <td><%=i.getName()%></td>
                      <td><%=i.getSurname()%></td>
                      <td><%=i.getType()%></td>
                </tr>
                  <%}%>
            </table>
        </div>
            <form action="adminPage.jsp">
                <input type="submit" value="Volver">
            </form>
        <%
        }
        %>
    </body>
</html>
