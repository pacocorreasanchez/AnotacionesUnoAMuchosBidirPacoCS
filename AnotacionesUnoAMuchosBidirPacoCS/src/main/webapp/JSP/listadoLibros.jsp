<%-- 
    Document   : listadoLibros
    Created on : 2 feb. 2019, 17:09:08
    Author     : paco
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="ROBOTS" content="NOARCHIVE"> 
        <meta name="generator" content="NetBeans"> 
        <meta name="referrer" content="always"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="${estilos}" />
        <title>Listado</title>
    </head>
    <body>
        <div id="principal">
            <center>
                <div class="contenedor">
                    <h2 class="me">Listado de libros.<span>&#160;</span></h2>
                </div>
            </center>
            <c:if test = "${listaLibros == null || listaLibros.size() < 0}">
                <h1>No hay registros en la tabla</h1>
            </c:if>
            <br />
            <ul>
                <c:forEach var="libro" items="${listaLibros}">
                    <pre>
                        Nombre: ${libro.persona.nombre}
                        Libros:
                        <c:forEach var="l" items="${libro.persona.libros}">
                            - ${l.titulo}
                        </c:forEach>
                    </pre>
                </c:forEach>
            </ul>
            <center>
                <p><a href="${contexto}/index.jsp" class="enlace">Menú inicial</a></p>
            </center>
        </div>
    </body>
</html>