<%-- 
    Document   : admin
    Created on : 12-jun-2017, 0:56:09
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
        <c:if test="${not empty vendedor}">
            <c:import url="menu.jsp"/>
            <div class="row">
                <div class="col s6 offset-s3">
                    <div class="card-panel">
                        <h5 class="center-align">Buscar Cliente</h5>
                        <form action="control.do" method="post">
                            <button class="btn-floating right" value="buscarcliente" name="bt" type="submit">
                                <i class="material-icons">search</i>
                            </button>
                            <input type="text" name="rut" placeholder="Ingrese rut del cliente" value="${param.rut}"/>
                            <br><br>
                            <c:if test="${not empty customer}">
                                <h4><i>${customer.nombre} ${customer.apellido}</i></h4>
                                <br>
                                
                                <c:forEach items="${customer.ventaList}" var="v" >
                                    <b><u>Fecha: ${v.fecha}</u></b>
                                    <table class="bordered">
                                        <tr class="blue-grey lighten-5">
                                            <td>Producto</td>
                                            <td>Unidad</td>
                                            <td>Precio</td>
                                            <td>Total</td>
                                        </tr>
                                        <c:forEach items="${v.detalleList}" var="d">
                                            <tr>
                                                <td>${d.codigoproducto.nombre}</td>
                                                <td>${d.stock}</td>
                                                <td>${d.precio}</td>
                                                 <td>${d.precio*d.stock}</td>
                                            </tr>

                                        </c:forEach>
                                              
                                    </table> 
                                    <br>
                                    <h5 class="right-align"><i>TOTAL $${v.total}</i></h5>
                                    <hr>
                                </c:forEach>

                            </c:if>
                            ${msg}   
                        </form>
                    </div>
                </div>
            </div>
        </c:if>

        <c:if test="${ empty vendedor}">
            Error, seras redireccionado en 5 segundos
            <meta http-equiv="refresh" content="5;url=index.jsp">
        </c:if>



        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
</html>
