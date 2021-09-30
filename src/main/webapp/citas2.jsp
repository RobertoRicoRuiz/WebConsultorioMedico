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
                        <h1 style="font-size: 50px; color: darkslateblue; ">Reserva, modificacion y eliminacion de citas</h1>
                    </section>
			<!-- Breadcrumb -->
			
			
                        
                        
                     <div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="col-md-7 col-md-push-5">
						<div class="booking-cta">
							<h1>Seleccione la fecha y hora de la cita</h1>
							<p>Recuerde el horario de atencion es de 8am a 6pm de lunes a Viernes
							</p>
						</div>
					</div>
					<div class="col-md-4 col-md-pull-7">
						<div class="booking-form">
							<form>
								
                                                                
                                                            <div class="form-group">
											<span class="form-label">Tipo de cita</span>
											<select class="form-control">
												<option>Presencial</option>
												<option>Virtual</option>
												
											</select>
											<span class="select-arrow"></span>
										</div>
                                                            
                                                            
                                                            
								<div class="row">
									<div class="col-sm-7">
										<div class="form-group">
											<span class="form-label">Fecha</span>
											<input class="form-control" type="date" required>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<span class="form-label">Hora</span>
											<input class="form-control" type="time" required>
										</div>
									</div>
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
									
                                                                        <button class="submit-btn">Agendar</button>
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