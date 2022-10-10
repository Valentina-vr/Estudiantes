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
    <%@ page import="Service.Libros, java.util.ArrayList" %>
        <h2 style="text-align: center">Los Libros que están registrados son: </h2>
        <%
            ArrayList<Libros> libros = null;
            libros = (ArrayList<Libros>) request.getAttribute("Libros");
        %>
        <table class="table table-dark table-striped" border="1">
            <tr>
                <th>Nombre del Libro</th>
                <th>ISBN</th>
                <th>Editorial</th>
                <th>Genero</th>
                <th>Año de Publicacion</th>
                <th>Autor</th>
            </tr>
            <%
                for (Libros libro : libros) {
            %>
            <tr valign="top">
                <td><%=libro.getNombre()%></td>
                <td><%=libro.getIsbn()%></td>
                <td><%=libro.getEditorial()%></td>
                <td><%=libro.getGenero()%></td>
                <td><%=libro.getPublicacion()%></td>
                <td><%=libro.getAutor()%></td>
            </tr>
            <% }%>
        </table>
        <p> Numero de registros : <%= libros.size()%></p>
        <% libros.clear();%>
        <br>
        <form action="InicioAdminLibros.jsp" method="post">
            <input class="btn btn-primary" type="submit" value="Regresar">
        </form>
    </body>
</html>
