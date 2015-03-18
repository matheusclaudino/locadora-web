<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width">
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Locadora WEB</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.js"></script>	
</head>
<body>
	
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="navbar-header">
				<a class="navbar-brand" href="index.jsp">LOCADORA WEB</a>
				<button class="navbar-toggle" type="button"
	    			data-target=".navbar-collapse" data-toggle="collapse">
	  				<span class="glyphicon glyphicon-align-justify"></span>
				</button>
			</div>
				<ul class="nav navbar-nav collapse navbar-collapse">
				
				<li class="dropdown">
	          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Classe <span class="caret"></span></a>
	          		<ul class="dropdown-menu" role="menu">
						<li><a href="adm/classe.jsp"><span class="glyphicon glyphicon-plus"></span> Incluir Classe</a></li>
						<li class="divider"></li>
			            <li><a href="#">Consultar Classe</a></li>
					</ul>
				</li><!-- fim dropdown Classe -->
				
				<li class="dropdown">
	          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Distribuidor <span class="caret"></span></a>
	          		<ul class="dropdown-menu" role="menu">	
						<li><a href="adm/distribuidor.jsp">Incluir Distribuidor</a></li>
						<li class="divider"></li>
			            <li><a href="#">Consultar Distribuidor</a></li>
					</ul>
				</li><!-- fim dropdown Distribuidor -->
					
				<li class="dropdown">
	          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Item <span class="caret"></span></a>
	          		<ul class="dropdown-menu" role="menu">	
						<li><a href="adm/item.jsp">Incluir Item</a></li>
						<li class="divider"></li>
			            <li><a href="#">Consultar Item</a></li>
					</ul>
				</li><!-- fim dropdown Item -->
				
				<li class="dropdown">
	          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Título <span class="caret"></span></a>
	          		<ul class="dropdown-menu" role="menu">
						<li><a href="adm/titulo.jsp">Incluir Título</a></li>
						<li class="divider"></li>
			            <li><a href="#">Consultar Título</a></li>
					</ul>
				</li><!-- fim dropdown Título -->
				
				<li class="dropdown">
	          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Devolução <span class="caret"></span></a>
	          		<ul class="dropdown-menu" role="menu">
						<li><a href="adm/devolucao.jsp">Incluir Devolução</a></li>
						<li class="divider"></li>
			            <li><a href="#">Consultar Devolução</a></li>
					</ul>
				</li><!-- fim dropdown Devolução -->
				
				<li class="dropdown">
	          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Locação <span class="caret"></span></a>
	          		<ul class="dropdown-menu" role="menu">
						<li><a href="adm/locacao.jsp">Incluir Locação</a></li>
						<li class="divider"></li>
			            <li><a href="#">Consultar Locação</a></li>
					</ul>
				</li><!-- fim dropdown Locação -->	
				
				<li><a href="adm/pagamento.jsp">Efetuar Pagamento</a></li>
				
				<li class="dropdown">
	          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Reserva <span class="caret"></span></a>
	          		<ul class="dropdown-menu" role="menu">
						<li><a href="adm/reserva.jsp">Incluir Reserva</a></li>
					 	<li class="divider"></li>
			            <li><a href="#">Consultar Reserva</a></li>
					</ul>
				</li><!-- fim dropdown Reserva -->
				
				<li class="dropdown">
	          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Sócio <span class="caret"></span></a>
	          		<ul class="dropdown-menu" role="menu">
			            <li><a href="adm/socio.jsp">Incluir Sócio</a></li>
			            <li class="divider"></li>
			            <li><a href="#">Consultar Sócio</a></li>
	         		</ul>
	        	</li><!-- fim dropdown Sócio -->
	        	
	        	<li><a href="#">Consultar Título</a></li>
</body>
</html>