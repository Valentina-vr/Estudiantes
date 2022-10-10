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
    <br>
    <form action="index.jsp" style="text-align: center">
        <input class="btn btn-danger" type="submit" value="Salir">
    </form>

    <%@ page import="controller.LosLibros" %>
    <h2 style="text-align: center">Hola! Proporciona los datos</h2>
    <form action="LosLibros" method="post" style="text-align: center">
        <div style="text-align: center">
        <table cellspacing="3" cellpadding="3" border="1" style="margin: 0 auto" >
            <tr>
                <td align="right"> Cedula del Autor: </td>
                <td><input type="text" name="cedu" class="form-control" id="validationDefaultUsername"  aria-describedby="inputGroupPrepend2" required></td>
            </tr>
        </table>
            <br>
        <input class="btn btn-primary" type="reset" value="Borrar">
        <input class="btn btn-primary" type="submit" value="Consultar">
        </div>
    </form>


</body>

</html>
