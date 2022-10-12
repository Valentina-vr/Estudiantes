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
    

    <%@ page import="controller.ModificarAutor" %>
    <h2 style="text-align: center">Modificar Autor</h2>
    <form action="ModificarAutor" method="post" style="text-align: center">
        <div style="text-align: center">
            <table cellspacing="3" cellpadding="3" border="1" style="margin: 0 auto">
                <tr>
                    <td align="right"> Cedula Autor: </td>
                    <td><input type="text" name="cedula" class="form-control" id="validationDefaultUsername"  aria-describedby="inputGroupPrepend2" required></td>
                </tr>
                <tr>
                    <td align="right"> Nombre: </td>
                    <td><input type="text" name="nombre" value="" class="form-control" id="validationDefaultUsername"  aria-describedby="inputGroupPrepend2" required></td>
                </tr>
                <tr>
                    <td align="right"> Nacionalidad: </td>
                    <td> <input type="text" name="nacio" value="" class="form-control" id="validationDefaultUsername"  aria-describedby="inputGroupPrepend2" required> </td>
                </tr>
            </table>
            <br>
            <input class="btn btn-primary" type="submit" value="Actualizar Autor">
        </div>
    </form>
    <form action="InicioAdminAutor.jsp" method="post" style="text-align: center">
            <br>
            <input class="btn btn-primary" type="submit" value="Regresar">
    </form>
</body>

</html>
