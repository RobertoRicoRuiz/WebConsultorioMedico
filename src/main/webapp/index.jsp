<%-- 
    Document   : index
    Created on : 28/09/2021, 08:16:16 PM
    Author     : Roberto Rico Ruiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <table style="width: 100%">
            <tr>
                <td style="width:70%;">
                    <section style="text-align: center">
                        <h1 style="font-size: 50px; color: darkslateblue; ">Consultorio Medico Virtual</h1>
                    </section>
                </td>
                <td style="width:30%;"><div align="center"><img src="assets/img/Logo.png"></div></td>
            </tr>
        </table>

        <table style="width: 100%">
            <td style="width:20%;">
                <section style="background-color: buttonhighlight; text-align: center; font-weight: Bold;">
                    <a href="#vinculo">IR AL INICIO</a>
                </section>
            </td>
            
            <td style="width:20%;">
                <section style="background-color: buttonhighlight; text-align: center; font-weight: Bold;">
                    <a href="paginainfo.html">INFORMACIÓN GENERAL</a>
                </section>
            </td>
            
            <td style="width:20%;">
                <section style="background-color: buttonhighlight; text-align: center; font-weight: Bold;">
                    <a href="citas2.html">RESERVAR CITAS</a>
                </section>
            </td>
                
            <td style="width:20%;">
                <section style="background-color: buttonhighlight; text-align: center; font-weight: Bold;">
                    <a href="tablas.html">IR A AGENDA</a>
                </section>
            </td>
            <td style="width:20%;">
                <section style="background-color: buttonhighlight; text-align: center; font-weight: Bold;">
                    <a href="tablas.html">SALIR</a>
                </section>
            </td>
        </table>
        <table>
            <tr>
                <td>
                    <div>
                        <a href="index.html"><img src="assets/img/Inicio.png"> </a>
                    </div>
                </td>
            
                <td style="width: 80%; text-align: center; color: darkslateblue"> <h2>Bienvenidos </h2> 
                    <form method="GET" action="pagina2.html">
                        <div style="align-content: left">
                            <br>
                            <label> Usuario </label>
                            <input type="text" placeholder="Ingrese su Nombre de Usuario" name="nombre">
                            <br>
                            <br>
                            <label> Password </label>
                            <input type="password" name="contra">
                            <br>
                            <br>
                        </div>    
                    </form>
                    
                    <button onclick="location.href='tablas.html'"> Enviar </button>
                    <button onclick="location.href='paciente.html'"> Registrar </button>
                </td>
            </tr>
        </table>    
    </body>
</html>

