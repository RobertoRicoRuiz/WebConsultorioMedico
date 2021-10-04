<%-- 
    Document   : Crearcitas
    Created on : 3/10/2021, 07:52:26 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!--Link Bootstrap-->        
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <link href="assest3/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <!--Link CSS -->
        <link href="assest3/css/unioncss.css" rel="stylesheet" type="text/css"/>
        <!--estilo de letra -->
        <link rel = "preconnect" href = "https://fonts.googleapis.com">
        <link rel = "preconnect" href = "https://fonts.gstatic.com" crossorigin>
        <link href = "https: //fonts.googleapis.com/css2? family = Open + Sans: ital @ 1 & display = swap " rel =" stylesheet ">
        
        <!--scrollreveal -->
        <script src="https://unpkg.com/scrollreveal"></script>   
        
        <!-- font- awesone -->
        <script src="https://kit.fontawesome.com/e96e462752.js" crossorigin="anonymous"></script>
        
        <!--style--->
        <style>
            
            body{
                background-image: url(assest3/img/17545.jpg)
            }
            
            header{
                margin-top: 130px;    
            }        
           
            .bg{
                background-image: url(assest3/img/Inicio.png);
                background-position: right;               
            }
                        
            .enca{
                background: #fc4a1a;  /* fallback for old browsers */
                background: -webkit-linear-gradient(to right, #f7b733, #fc4a1a);  /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to right, #f7b733, #fc4a1a); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            }
            
            .contenido-textos{
                padding: 0px 0px 30px 15px;
                font-weight: 300;
                text-align: justify;    
            }

            footer{
                background: #0c4128;
                padding: 60px 0 30px 0;
                margin: auto;
                overflow: hidden;
            }

            .contenedor-footer{
                display: flex;
                width: 90%;
                justify-content: space-between;
                margin: auto;
                padding-bottom: 50px;     
                border-bottom: 1px solid #fdfdfe;
            }
            .content-foo{
                text-align: center;
            }

            .content-foo h4{
                color: white;
                border-bottom: 3px solid #92FE9D;
                padding-bottom: 5px;
                margin-bottom: 10px;     
            }

            .content-foo{
                color: white;
            }
            .titulo-final{
                text-align: center;
                font-size: 24px;
                margin: 20px 0 0 0;
                color: #d3d3d4 ;
            }
        </style>
    </head>
    <body>
        
        
        <!-- Barra de navegacion -->
        <nav class="navbar navbar-expand-lg navbar-dark enca shadow fixed-top">
            <div class="container">
                <div>
                    <img src="assest3/img/Logo.png" style="width: 70%" >
                </div>
                <a class="navbar-brand" href="#"><h1>Consultorio Medico Virtual</h1></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link h5" href="index.html">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link h5" href="index.html">Informacion</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link h5" href="index.html">Citas</a>
                        </li>                                             
                    </ul>
                </div>
            </div>
        </nav>
        
        
         <!-- formulario creacion de citas -->
      <header >
          <div class="container ">
          <div class="row justify-content-center">
            <div class="card w-50" style="width: 18rem;">
              <img src="assest3/img/img1.png" class="card-img-top">
              <h3 class="font-weight-bold text-center">Crear citas</h3>
              <div class="card-body">
                  <form action="action">
                      <div class="row">
                          <div class="col-sm-7">
                              <div class="form-group">
                                  <span class="form-label">Fecha</span>
                                  <input class="form-control" type="date" name="Fecha"required>
                              </div>
                          </div>
                          <div class="col-sm-6">
                              <div class="form-group">
                                  <span class="form-label">Hora</span>
                                  <input class="form-control" type="time" name="Hora"required>
                              </div>
                          </div>
                          <div class="col-sm-6">
                          <div class="form-group">
                              <span class="form-label">Tipo de cita</span>
                              <select class="form-control" name="Tipodecita">
                                  <option>Presencial</option>
                                  <option>Virtual</option>
                              </select>
                              <span class="select-arrow"></span>
                          </div>
                          </div>
                          <div class="col-sm-6">
                          <div class="form-group">
                              <span class="form-label">Codigo</span>
                              <select class="form-control" name="Codigo"> 
                                  <option>PC-1</option>
                                  <option>PC-2</option>
                                  <option>PC-3</option> 
                                  <option>PC-4</option> 
                                  <option>PC-5</option>
                                  <option>VR-1</option>
                                  <option>VR-2</option>
                                  <option>VR-3</option> 
                                  <option>VR-4</option>
                                  <option>VR-5</option>
                              </select>
                              <span class="select-arrow"></span>
                          </div>
                          </div>
                      </div>
                  </form>
                  <hr>
                  <button type="submit" class="btn btn-primary btn btn-block">Crear citas</button>
              </div>
          </div>  
          </div>
      </div>
      </header>
      
      
         
        
        
        
         <!-- tabla creacion de citas -->
         <section class=" my-5 ">
             <div class="container bg-white w-100">
                 <div class="  mx-5 p-3 font-weight-bolder"><h3 class="text-center">Citas</h3></div>
                 <div class="row p-3">
                     <table class="table table-striped w-100">
                         <thead>
                             <tr>
                                 <th scope="col">#</th>
                                 <th scope="col">Codigo</th>
                                 <th scope="col">Fecha</th>
                                 <th scope="col">Hora</th>
                                 <th scope="col">tipo de cita</th>
                                 <th scope="col" class="text-center">Modificar</th>
                                 <th scope="col" class="text-center">Eliminar</th>
                             </tr>
                         </thead>
                         <tbody>
                             <tr>
                                 <th scope="row">1</th>
                                 <td>----</td>
                                 <td>----</td>
                                 <td>----</td>
                                 <td>----</td>
                                 <td><button type="submit" class="btn btn-success btn btn-block">modificar</button></td>
                                 <td><button type="submit" class="btn btn-danger btn btn-block">Eliminar</button></td>                             
                             </tr>
                             <tr>
                                 <th scope="row">2</th>
                                 <td>-----</td>
                                 <td>------</td>
                                 <td>------</td>
                                 <td>----</td>
                                 <td><button type="submit" class="btn btn-success btn btn-block">modificar</button></td>
                                 <td><button type="submit" class="btn btn-danger btn btn-block">Eliminar</button></td>                             
                             
                             </tr>
                             <tr>
                                 <th scope="row">3</th>
                                 <td>-----</td>
                                 <td>-----</td>
                                 <td>-----</td>
                                 <td>----</td>
                                 <td><button type="submit" class="btn btn-success btn btn-block">modificar</button></td>
                                 <td><button type="submit" class="btn btn-danger btn btn-block">Eliminar</button></td>                             
                             
                             </tr>
                         </tbody>
                     </table>
                 </div>
             </div>
         </section>
         
         <!-- Tabla consultar citas -->
         <section class=" my-5 ">
             <div class="container bg-white">
                 <div class="  mx-5 p-3 font-weight-bolder"><h3 class="text-center">Consultar Citas Asignadas</h3></div>
                 <div class="row p-2">
                     <table class="table table-striped w-100">
                         <thead>
                             <tr>
                                 <th scope="col">#</th>
                                 <th scope="col">Codigo</th>
                                 <th scope="col">Fecha</th>
                                 <th scope="col">Hora</th>
                                 <th scope="col">tipo de cita</th>
                                 <th scope="col">Paciente</th> 
                                 <th scope="col">Telefono</th>
                                 <th scope="col">Disponibilidad</th>
                                 <th scope="col" class="text-center">Modificar</th>
                                 <th scope="col" class="text-center">Eliminar</th>
                             </tr>
                         </thead>
                         <tbody>
                             <tr>
                                 <th scope="row">1</th>
                                 <td>----</td>
                                 <td>----</td>
                                 <td>----</td>
                                 <td>-----</td>
                                 <td>----</td>
                                 <td>----</td>
                                 <td>----</td>
                                 <td><button type="submit" class="btn btn-success btn btn-block">modificar</button></td>
                                 <td><button type="submit" class="btn btn-danger btn btn-block">Eliminar</button></td>                             
                             </tr>
                             <tr>
                                 <th scope="row">2</th>
                                 <td>-----</td>
                                 <td>------</td>
                                 <td>------</td>
                                 <td>----</td>
                                 <td>----</td>
                                 <td>----</td>
                                 <td>----</td>
                                 <td><button type="submit" class="btn btn-success btn btn-block">modificar</button></td>
                                 <td><button type="submit" class="btn btn-danger btn btn-block">Eliminar</button></td>                             
                             
                             </tr>
                             <tr>
                                 <th scope="row">3</th>
                                 <td>-----</td>
                                 <td>-----</td>
                                 <td>-----</td>
                                 <td>----</td>
                                 <td>----</td>
                                 <td>----</td>
                                 <td>----</td>
                                 <td><button type="submit" class="btn btn-success btn btn-block">modificar</button></td>
                                 <td><button type="submit" class="btn btn-danger btn btn-block">Eliminar</button></td>                             
                             
                             </tr>
                         </tbody>
                     </table>
                 </div>
             </div>
         </section>
        
        
        <!---footer--->
        <footer>
            <div class="contenedor-footer">
                <div class="content-foo">
                    <h4>Telefonos</h4>
                    <p>123456789</p>                    
                </div>
                <div class="content-foo">
                    <h4>E-mail</h4>
                    <p>consultoriomedicovirtual@gmail.com</p>                    
                </div>
                <div class="content-foo">
                    <h4>Direccion</h4>
                    <p>diagonal 64b # 10 la florida Nariño</p>                    
                </div>
            </div>
            <h2 class="titulo-final">&copy; Design consultorio medico virtual | grupo 7</h2>
        </footer>
        
    
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <script src="assest3/js/jquery-3.5.1.slim.min.js" type="text/javascript"></script>
        <script src="assest3/js/popper.min.js" type="text/javascript"></script>
        <script src="assest3/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
        
    </body>
</html>

