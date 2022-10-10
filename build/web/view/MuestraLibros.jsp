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
    <body>
        <%@ page import="Service.Libros" %>
        <%
            Libros producto = (Libros) request.getAttribute("atribProd");
        %>
        <h3 style="text-align: center">Registrado</h3>
        <p style="text-align: center"> Se guardaron los siguientes datos del libro: </p>
        <table class="table table-dark table-striped" cellspacing="3" cellpadding="3" border="1" >
            <tr>
                <td align="right"> Nombre del Libro: </td>
                <td> <%= producto.getNombre()%> </td>
            </tr>
            <tr>
                <td align="right"> ISBN: </td>
                <td> <%= producto.getIsbn()%> </td>
            </tr>
            <tr>
                <td align="right"> Editorial: </td>
                <td> <%= producto.getEditorial()%> </td>
            </tr>
            <tr>
                <td align="right"> Genero: </td>
                <td> <%= producto.getGenero()%> </td>
            </tr>
            <tr>
                <td align="right"> Año de Publicacion: </td>
                <td> <%= producto.getPublicacion()%> </td>
            </tr>
            <tr>
                <td align="right"> Autor: </td>
                <td> <%= producto.getAutor()%> </td>
            </tr>
        </table>
        <form action="InicioAdminLibro.jsp" method="post">
            <input class="btn btn-primary" type="submit" value="Regresar">
        </form>
    </body>
</html>
