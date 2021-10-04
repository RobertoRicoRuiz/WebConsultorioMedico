<%-- 
    Document   : actualizar.jsp
    Created on : 3/10/2021, 03:59:59 PM
    Author     : rober
--%>

<%@page import="Controladores.ControlPacientes"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelos.Pacientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/estilos/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
         <header>
            <div class="container bg-success text-center bg-opacity-25 margen" >
                <h1>CRUD WEB Misión TIC 2021 JSP + JAVA + BOOTSTRAP</h1>
            </div>
        </header>
        <%
            String codigoStr = request.getParameter("idPaciente"); 
            int codigoInt = Integer.parseInt(codigoStr.toString()); 
            ControlPacientes ctrPacientes = new ControlPacientes(); 
            ArrayList<Pacientes> consultarPaciente = new ArrayList<>(); 
            consultarPaciente = ctrPacientes.consultar(codigoInt); 
        %>
        
         <section class="container">
            <form method="POST" action="ControlPacientes">
                <h3>Actualizar Pacientes</h3>
                <div class="row">
                    <div class="col">
                        <div class="form-floating mb-3">
                            <label for="floatingInput">Identificación: </label>
                            <input type="text" class="form-control" id="floatingInput" placeholder="Identificacion" name="idPaciente" readonly="" value="<%out.println(consultarPaciente.get(0).getIdPaciente());%>">
                        </div>
                        
                        <div class=""form-floating mb-3"">
                            <label for="nombre" class="form-label">Nombre</label>
                            <input type="nombre" class="form-control" id="nombre" placeholder="Nombre" name="nombre" required="" value="<%out.println(consultarPaciente.get(0).getNombre());%>">
                        </div>
                        
                        <div class=""form-floating mb-3"">
                                <label for="apellido" class="form-label">Apellido</label>
                                <input type="apellido" class="form-control" id="apellido" placeholder="Apellido" name="apellido" required="" value="<%out.println(consultarPaciente.get(0).getApellido());%>">
                        </div>
                        
                        <div class=""form-floating mb-3"">
                            <label for="email" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com" name="email" required="" value="<%out.println(consultarPaciente.get(0).getEmail());%>">
                        </div>
                        
                        <div class"form-floating mb-3"">
                            <label for="Celular" class="form-label">Numero Celular</label>
                            <input type="Celular" class="form-control" id="exampleFormControlInput1" placeholder="XXX XXX XXXX" name="celular" required="" value="<%out.println(consultarPaciente.get(0).getCelular());%>">
                        </div>
                    
                        <div class="form-floating mb-3">
                            <label for="floatingSelect ">Sexo</label>
                            <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" name ="sexo"  value="<%out.println(consultarPaciente.get(0).getSexo());%>">
                                <option selected></option>
                                <option value="1">Masculino</option>
                                <option value="2">Femenino</option>
                            </select>
                         </div>
                    </div>
                    <div class="col">
                        <div class="form-floating mb-3">
                            <label for="Telefono" class="form-label">Numero Telefono</label>
                            <input type="Telefono" class="form-control" id="exampleFormControlInput1" placeholder="60 X XXX XXXXX" name="telefono" required="" value="<%out.println(consultarPaciente.get(0).getTelefono());%>">
                        </div>  
                    
                        <div class="form-floating mb-3">
                            <label for="Ocupacion " class="form-label">Ocupacion</label>
                            <input type="Ocupacion" class="form-control" id="ocupacion" placeholder="Defina el Tipo de Ocupacion" name="ocupacion" required="" value="<%out.println(consultarPaciente.get(0).getOcupacion());%>">
                        </div>                        
                    
                        <div class="form-floating mb-3">
                            <label for="Direccion " class="form-label">Direccion</label>
                            <input type="Direccion" class="form-control" id="direccion" placeholder="Direccion" name="direccion" required="" value="<%out.println(consultarPaciente.get(0).getDireccion());%>">
                        </div>   
                    
                        <div class="form-floating mb-3">
                            <label for="floatingSelect ">Tipo de Sangre</label>
                            <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" name="tipoSangre" value="<%out.println(consultarPaciente.get(0).getTipoSangre());%>">
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
                    
                        <div class="form-floating mb-3">
                            <label for="Profesion " class="form-label">Profesion</label>
                            <input type="Profesion" class="form-control" id="direccion" placeholder="Profesion" name="profesion" required="" value="<%out.println(consultarPaciente.get(0).getProfesion());%>">
                        </div>
                    
                        <div class="form-floating mb-3">
                            <label for="id_EPS" class="form-label">Código EPS</label>
                            <input type="id_EPS" class="form-control" id="profesion" placeholder="Código EPS" name="id_EPS" value="<%out.println(consultarPaciente.get(0).getId_EPS());%>">
                        </div>   
                    </div>
                </div>
 
                <div class="row">
                    <center>
                        <button class="btn btn-success btnSize" name="btnAccion" value="Actualizar">Actualizar Paciente</button>
                    </center>
                </div>
            </form>
         </section>
        
        <footer>
            <div class="container bg-success text-center bg-opacity-25 margen" >
               <h5>Grupo 7 - Consultorio Médico Virtual, Mision TIC 2021, Todos los derechos reservados</h5>
            </div>
        </footer>
        <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>      
    </body>
</html>
