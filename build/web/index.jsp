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
    
    <%@ page import="controller.Consultar" %>
    <br>
    
    <h1 style="text-align: center" >¡Bienvenido!</h1>
    <h1 style="text-align: center" >Login</h1>
    <form action="Consultar" method="post" style="text-align: center">
        <div style="text-align: center">
            <table style="margin: 0 auto" class="table-success" cellspacing="3" cellpadding="3" border="1" >
                <tr>
                    <td align="right"> Usuario: </td>
                    <td><input type="text" name="usuario" class="form-control" id="validationDefaultUsername"  aria-describedby="inputGroupPrepend2" required></td>
                </tr>
                <tr>
                    <td align="right"> Contraseña: </td>
                    <td><input type="password" name="contra" class="form-control" id="validationDefaultUsername"  aria-describedby="inputGroupPrepend2" required></td>
                </tr>
            </table>
            <br>
            <input class="btn btn-primary" type="submit" value="Iniciar">
            <br>
        </div>
    </form>
                  
            
</body>

</html>
