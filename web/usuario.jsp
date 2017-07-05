<%-- 
    Document   : usuario
    Created on : 11-jun-2017, 0:52:54
    Author     : roman
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="cl.entities.*"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="cl.model.ServicioLocal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%! ServicioLocal servicio;%>
<%
    InitialContext ctx = new InitialContext();
    servicio = (ServicioLocal) ctx.lookup("java:global/GestionVenta/Servicio!cl.model.ServicioLocal");
    List<Usuario> lista = servicio.getUsuarios();
%>
<c:set scope="page" var="lista" value="<%=lista%>"/>
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
        <c:if test="${not empty admin}">
            <c:import url="menu.jsp"/>
            <div class="row">
                <div class="col s6">
                    <h3>USUARIOS</h3>
                    <form action="control.do" method="POST">
                        <div class="input-field">
                            <input id="rut" type="text" name="rut">
                            <label for="rut">Rut</label>
                        </div>
                        <div class="input-field">
                            <input id="nombre" type="text" name="nombre">
                            <label for="nombre">Nombre</label>
                        </div>
                        <div class="input-field">
                            <input id="desc" type="text" name="apellido">
                            <label for="apellido">Apellido</label>
                        </div>
                        <div class="input-field">
                            <input id="email" type="email" name="email">
                            <label for="email">Email</label>
                        </div>
                        <div class="input-field">
                            <input id="clave" type="password" name="clave">
                            <label for="clave">Clave</label>
                        </div>

                        <select name="tipo">
                            <option >vendedor</option>
                            <option  >cliente</option>
                            <option value="admin">administrador</option>
                        </select>

                        <button class="btn right" name="bt" value="adduser" type="submit">
                            Guardar
                        </button>

                    </form>
                    <br>
                    ${msg}
                    <br><br>
                </div>
                <div class="col s6">
                    <table class="bordered">
                        <tr>
                            <td>RUT</td>
                            <td>NOMBRE</td>
                            <td>APELLIDO</td>
                            <td>EMAIL</td>
                            <td>CLAVE</td>
                            <td>TIPO</td>
                        </tr>

                        <c:forEach items="${lista}" var="u">
                            <tr>
                                <td>${u.rut}</td>
                                <td>${u.nombre}</td>
                                <td>${u.apellido}</td>
                                <td>${u.email}</td>
                                <td>${u.clave}</td>
                                <td>${u.tipo}</td>
                            </tr>
                        </c:forEach>

                    </table>
                    <br>

                </div>



            </div>
        </c:if>
        <c:if test="${ empty admin}">
            Error, seras redireccionado en 5 segundos
            <meta http-equiv="refresh" content="5">
        </c:if>




        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <script type="text/javascript" >
            $(document).ready(function () {
                $('select').material_select();
            });

        </script>
    </body>
</html>