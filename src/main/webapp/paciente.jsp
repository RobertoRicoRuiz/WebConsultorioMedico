<%-- 
    Document   : paciente
    Created on : 29/09/2021, 06:21:43 PM
    Author     : rober
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/estilos/estilos.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    </head>
    <body>
        <section style="background-color: blue; text-align: center">
            <h1 style="font-size: 50px; color: #ffffff; ">FORMULARIO INGRESO DATOS DE PACIENTE  </h1>
        </section>
        
        <section>
            <form method="POST" action="ControlPacientes">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="mb-3">
                                <label for="idPaciente" class="form-label">Identificación</label>
                                <input type="idPaciente" class="form-control" id="idPaciente" placeholder="Identificación" name="idPaciente" required="">
                            </div>
                            <div class="mb-3">
                                <label for="nombre" class="form-label">Nombre</label>
                                <input type="nombre" class="form-control" id="nombre" placeholder="Nombre" name="nombre" required="">
                            </div>
                            <div class="mb-3">
                                <label for="apellido" class="form-label">Apellido</label>
                                <input type="apellido" class="form-control" id="apellido" placeholder="Apellido" name="apellido" required="">
                            </div>
                            <div class="mb-3">
                                <label for="exampleFormControlInput1" class="form-label">Email address</label>
                                <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com" name="email" required="">
                            </div>
                            <div class="mb-3">
                                <label for="Celular" class="form-label">Numero Celular</label>
                                <input type="Celular" class="form-control" id="exampleFormControlInput1" placeholder="XXX XXX XXXX" name="celular" required="">
                            </div>
                        </div> 
                        <div class="mb-3">
                            <label for="floatingSelect ">Sexo</label>
                            <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" name ="sexo">
                                <option selected></option>
                                <option value="1">Masculino</option>
                                <option value="2">Femenino</option>
                            </select>
                         </div>
                    </div>
                    <div class="mb-3">
                        <label for="Telefono" class="form-label">Numero Telefono</label>
                        <input type="Telefono" class="form-control" id="exampleFormControlInput1" placeholder="60 X XXX XXXXX" name="telefono" required="">
                    </div>  
                    <div class="mb-3">
                        <label for="Ocupacion " class="form-label">Ocupacion</label>
                        <input type="Ocupacion" class="form-control" id="ocupacion" placeholder="Defina el Tipo de Ocupacion" name="ocupacion" required="">
                    </div>                        
                    <div class="mb-3">
                        <label for="Direccion " class="form-label">Direccion</label>
                        <input type="Direccion" class="form-control" id="direccion" placeholder="Direccion" name="direccion" required="">
                    </div>                
                    <div class="mb-3">
                        <label for="floatingSelect ">Tipo de Sangre</label>
                        <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" name="tipoSangre">
                            <option selected></option>
                            <option value="1">RH O+</option>
                            <option value="2">RH O-</option>
                            <option value="3">RH A+</option>
                            <option value="3">RH A-</option>
                            <option value="3">RH B+</option>
                            <option value="3">RH B-</option>
                            <option value="3">RH AB+</option>
                            <option value="3">RH AB-</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="Profesion " class="form-label">Profesion</label>
                        <input type="Profesion" class="form-control" id="direccion" placeholder="Profesion" name="profesion" required="">
                    </div>
                    <div class="mb-3">
                        <label for="id_EPS" class="form-label">Código EPS</label>
                        <input type="id_EPS" class="form-control" id="profesion" placeholder="Código EPS" name="id_EPS">
                     </div>   
                </div>
                <div class="row">
                    <center>
                        <button class="btn btn-success btnSize" name="btnAccion" value="Insertar">Registrar Paciente</button>
                    </center>
                </div>                
            </form>
            <br>
        </section>
        <br>
        
        <section class="container">
                <table class="table table-striped table-hover">
                    <thead>
                      <tr>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">E-mail</th>
                        <th scope="col">Número Celular</th>
                        <th scope="col">Sexo</th>
                        <th scope="col">Número Teléfono</th>
                        <th scope="col">Ocupación</th>
                        <th scope="col">Dirección</th>
                        <th scope="col">Profesión</th>
                        <th scope="col">Tipo de Sangre</th>
                        <th scope="col">Número Teléfono</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>
                            <button class="btn btn-outline-success">Actualizar</button>
                            <button class="btn btn-danger"> Eliminar </button>
                        </td>
                      </tr>
              <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>
                            <button class="btn btn-outline-success">Actualizar</button>
                            <button class="btn btn-danger"> Eliminar </button>
                        </td>
                      </tr>
                      <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                        <td>@mdo</td>
                        <td>
                            <button class="btn btn-outline-success">Actualizar</button>
                            <button class="btn btn-danger"> Eliminar </button>
                        </td>
                      </tr>
                    </tbody>
                  </table>
            </section>

            <footer>
                <div class="container bg-success text-center bg-opacity-25 margen" >
                    <h5>Grupo 7 - Consultorio Médico Virtual, Mision TIC 2021, Todos los derechos reservados</h5>
                </div>
            </footer>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
            <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
        </body>
    </html>

