<%-- 
    Document   : index
    Author     : Tomas Isaza Montenegro y Valentina Villada Rendon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca</title>
    </head>
    <%@ page import="Service.Autor, java.util.ArrayList" %>
        <h2 style="text-align: center">Los Autores que están registrados son: </h2>
        <%
            ArrayList<Autor> autor = null;
            autor = (ArrayList<Autor>) request.getAttribute("Autor");
        %>
        <table class="table table-dark table-striped" border="1">
            <tr>
                <th>Cedula</th>
                <th>Nombre</th>
                <th>Nacionalidad</th>
            </tr>
            <%
                for (Autor autors : autor) {
            %>
            <tr valign="top">
                <td><%=autors.getCedula()%></td>
                <td><%=autors.getNombre()%></td>
                <td><%=autors.getNacionalidad()%></td>
            </tr>
            <% }%>
        </table>
        <p> Numero de registros : <%= autor.size()%></p>
        <% autor.clear();%>
        <br>
        <form action="InicioAdminAutor.jsp" method="post">
            <input class="btn btn-primary" type="submit" value="Regresar">
        </form>
    </body>
</html>
