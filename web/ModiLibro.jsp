<%-- 
    Document   : index
    Author     : Tomas Isaza Montenegro y Valentina Villada Rendon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
        <link rel="stylesheet" href="Css.css" media="all">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca</title>
    </head>
    
<body>    
    
    <br>
    <form action="index.jsp" style="text-align: center">
        <input class="btn btn-danger" type="submit" value="Salir">
    </form>
    <br>
    <%@ page import="controller.ModificarLibro" %>
    <h2 style="text-align: center">Modificar Libro</h2>
    <form action="ModificarLibro" method="post" style="text-align: center">
        <div style="text-align: center">
            <table cellspacing="3" cellpadding="3" border="1" style="margin: 0 auto">
                <tr>
                    <td align="right"> ISBN: </td>
                    <td> <input type="text" name="isbn" class="form-control" id="validationDefaultUsername"  aria-describedby="inputGroupPrepend2" required> </td>
                </tr>
                <tr>
                    <td align="right"> Nombre: </td>
                    <td> <input type="text" name="Nlibro" class="form-control" id="validationDefaultUsername"  aria-describedby="inputGroupPrepend2" required> </td>
                </tr>
                <tr>
                    <td align="right"> Editorial: </td>
                    <td> <input type="text" name="editorial" class="form-control" id="validationDefaultUsername"  aria-describedby="inputGroupPrepend2" required> </td>
                </tr>
                <tr>
                    <td align="right"> Genero: </td>
                    <td> <input type="text" name="genero" class="form-control" id="validationDefaultUsername"  aria-describedby="inputGroupPrepend2" required> </td>
                </tr>
                <tr>
                    <td align="right"> Año de Publicacion: </td>
                    <td> <input type="text" name="Apubli" class="form-control" id="validationDefaultUsername"  aria-describedby="inputGroupPrepend2" required> </td>
                </tr>
                <tr>
                    <td align="right"> Autor: </td>
                    <td> <input type="text" name="autor" class="form-control" id="validationDefaultUsername"  aria-describedby="inputGroupPrepend2" required> </td>
                </tr>
            </table>
            <br>
            <input class="btn btn-primary" type="submit" value="Actualizar Libro">
        </div>
    </form>
    <form action="InicioAdminLibro.jsp" method="post" style="text-align: center">
            <br>
            <input class="btn btn-primary" type="submit" value="Regresar">
    </form>
</body>

</html>
