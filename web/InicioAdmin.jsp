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
    
    <h1 style="text-align: center" >¡Bienvenido a la biblioteca!</h1>
    <h3 style="text-align: center" >dele click sobre la accion a la que desea ingrear</h3>
    
    <br>
   
    <form action="InicioAdminAutor.jsp" style="text-align: center">
         <h1 style="text-align: center" >Autores</h1>
       <input type="image" src="Autores.jpg" style="border: double;" height="80" width="170"/>
    </form>
    
    <br>
    
    <form action="InicioAdminLibro.jsp" style="text-align: center">
        <h1 style="text-align: center" >Libros</h1>
       <input type="image" src="Libros.jpg" style="border: double;" height="80" width="170"/>
    </form>
    
    <br>
    
    <form action="index.jsp" style="text-align: center">
        <input class="btn btn-danger" type="submit" value="Salir">
    </form>
    
    <br>
</body>

</html>
