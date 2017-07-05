<%-- 
    Document   : clientecambiaclave
    Created on : 14-jun-2017, 9:58:14
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

    <body class="darken-1">
        <c:if test="${not empty cliente}">
            <c:import url="menu.jsp"/>
            <div class="row">
                <div class="col s6 offset-s3">
                    <div class="card-panel">
                        <h5 class="center-align">Cambio de Clave</h5>
                        <form action="control.do" method="post">
                            <div class="input-field">
                                <input id="clave1" type="password" name="clave1">
                                <label for="clave1">Clave Actual</label>
                            </div>
                            <div class="input-field">
                                <input id="clave2" type="password" name="clave2">
                                <label for="clave2">Clave </label>
                            </div>
                            <div class="input-field">
                                <input id="clave3" type="password" name="clave3">
                                <label for="clave3">Confirmar Clave</label>
                            </div>
                            <button class="btn right" name="bt" value="changepass" type="submit">
                                Actualizar
                            </button>
                            <br>
                            ${msg}
                            <br><br>
                        </form>
                    </div>
                </div>
            </div>
        </c:if>


        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
</html>
