<%-- 
    Document   : misventas
    Created on : 14-jun-2017, 20:03:04
    Author     : roman
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--Import Google Icon Font-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>

    <body>
        <c:if test="${not empty cliente}">
            <c:import url="menu.jsp"/>
            <h4>Mis Ventas</h4>
            <ul class="collapsible" data-collapsible="accordion">
                <c:forEach items="${cliente.ventaList}" var="v">
                    <li>
                        <div class="collapsible-header"><i class="material-icons">shopping_basket</i><p>Fecha:${v.fecha} Total $${v.total}</p></div>
                        <div class="collapsible-body">
                            <c:forEach items="${v.detalleList}" var="d">
                                <p>Producto:${d.codigoproducto.nombre}<br>
                                    Unidades:${d.stock}  <br>
                                    Precio:$${d.precio}<br>
                                </p>
                            </c:forEach>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </c:if>



        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
</html>
