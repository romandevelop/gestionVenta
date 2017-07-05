<%-- 
    Document   : index
    Created on : 10-jun-2017, 23:53:30
    Author     : roman
--%>

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

        <div class="row">
            <div class="col s6 offset-s3">
                <div class="card-panel">
                    <h4>INICIAR SESION</h4>
                    <form action="control.do" method="post">
                        <div class="input-field">
                            <input id="rut" type="text" name="rut">
                            <label for="rut">Rut</label>
                        </div>
                        <div class="input-field">
                            <input id="clave" type="password" name="clave">
                            <label for="clave">Clave</label>
                        </div>
                        <button class="btn right" name="bt" value="iniciar" type="submit">
                            Aceptar
                        </button>
                        <br><br>
                    </form>
                    ${msg}
                </div>
            </div>
        </div>


        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
</html>