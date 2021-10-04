<%-- 
    Document   : citas2
    Created on : 30/09/2021, 04:53:40 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
	

<head>
    
    
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>Agendar Cita</title>
        <link href="assets/img/favicon.png" rel="icon">
	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/style.css" />

         
    		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		
		<!-- Favicons -->

	
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">
		
		<!-- Main CSS -->
		<link rel="stylesheet" href="assets/css/style.css">
		
		
	
	</head>
	<body>

		<!-- Main Wrapper -->
		<div class="main-wrapper">
		
			
			<!-- /Header -->
			<td style="width:70%;">
                    <section style="text-align: center">
                        <h1 style="font-size: 50px; color: darkslateblue; ">Reserva de citas</h1>
                        <br/>
                    </section>
			<!-- Breadcrumb -->
			
			
                       
                        
                     <div id="booking" class="section">
		<div class="section-center">
		<br/>
                <br/>
                <br/>
                    
                    <div class="container">
                        
                        <br/>
				<div class="row">
                                    <br/>
					<div class="col-md-7 col-md-push-5">
                                            <br/>
						<div class="booking-cta">
                                                    <br/>
							<h1>Seleccione la fecha y hora de la cita</h1>
                                                        <br/>
							<p>Recuerde el horario de atencion es de 8am a 6pm de lunes a Viernes
							</p>
						</div>
					</div>
					<div class="col-md-4 col-md-pull-7">
						<div class="booking-form">
							<form>
								
                                                             <form method="POST" action="ControladorCitasMedicas">
                                                                
                                                            <div class="form-group">
											<span class="form-label">Tipo de cita</span>
											<select class="form-control" name="consultorio">
												<option>Presencial</option>
												<option>Virtual</option>
												
											</select>
											<span class="select-arrow"></span>
										</div>
                                                            
                                                            
                                                            
								<div class="row">
									<div class="col-sm-5">
										<div class="form-group">
											<span class="form-label">Fecha</span>
											<input class="form-control" type="date" name="fecha_consulta" required >
										</div>
									</div>
									<div class="col-sm-5">
										<div class="form-group">
											<span class="form-label">Hora</span>
											<input class="form-control" type="time" name="hora_consulta" required>
										</div>
									</div>
                                                                    <div class="col-sm-5">
										<div class="form-group">
											<span class="form-label">Paciente</span>
											<input class="form-control" type="int" name="ID_paciente" required>
										</div>
									</div>
                                                                    <div class="col-sm-6">
										<div class="form-group">
											<span class="form-label">Medico</span>
											<input class="form-control" type="int" name="	ID_medico" required>
										</div>
                                                                    </div>
                                                                    <div class="col-sm-10">
										<div class="form-group">
											<span class="form-label">Direccion</span>
											<input class="form-control" type="text" name="direccion" required>
										</div>
									</div>
                                                                    <div class="col-sm-10">
										<div class="form-group">
											<span class="form-label">Observaciones</span>
											<input class="form-control" type="text" name="piso" required>
										</div>
									</div>
                                                                    <!-- comment -->
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
                                                                    
								</div>
								
															
								<div class="row">
									
									<div class="col-sm-4">
										
									</div>
									<div class="form-group">
									<span class="form-label">Observaciones</span>
									<input class="form-control" type="text" placeholder="Escriba datos adicionales de su cita">
                                                                        </div>
								</div>
								<div class="form-btn">
									<button class="submit-btn">Verificar Disponibilidad</button>
                                                                        
                                                                </div>
                                                                <div class="form-btn">
									<br/>
                                                                        <button class="submit-btn" name="btnAccion" value="Insertar">Agendar</button>
                                                                </div>  
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
                         
                         
                         
                         
                         
	</div>                           
                                                    
                                                    
   
	</body>


</html>