<%@include file="import/head.jsp" %>
	
<%@ include file="import/navbar.jsp"%>

	<%@ page import="org.hibernate.Session"%>
	<%@ page import="org.hibernate.SessionFactory"%>
	<%@ page import="org.hibernate.Query"%>
	<%@ page import="org.hibernate.cfg.AnnotationConfiguration"%>
	<%@ page import="model.domain.Cliente"%>
	<%@ page import="model.domain.Socio"%>
	<%@ page import="model.domain.Dependente"%>
	<%@ page import="java.util.Iterator"%>
	<%@ page import="java.util.List"%>
	
	<%
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session s = sessions.openSession();
		
		String strQuery = "from Cliente WHERE DTYPE = Socio";
		
		s.beginTransaction();
		Query qr = s.createQuery(strQuery);
		List socios = qr.list();
		
		
	%>
	
	<div class="jumbotrom">
		<div class="container">

			<h1><span class="glyphicon glyphicon-search "></span> Consultar Sócio</h1>

		</div>
	</div><!--fim jumbotrom-->
	
	<div class="container">
		<form>
			<div class="row">
				<fieldset class="col-sm-12 col-md-12">
					<legend></legend>
				</fieldset>
				<fieldset class="col-sm-6 col-md-6">
					<div class="form-group">
						<input type="text" id="nome" name="nome" class="form-control" placeholder="Nome da classe">
					</div>				
				</fieldset>
				<fieldset class="col-sm-1 col-md-1 input-append">
					<button  type="submit" class="btn btn-default form-control"> 
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</fieldset>
			</div>
		</form>
	</div>
	
	<div class="container">
		<form action="">
			<div class="row">
				<fieldset class="col-sm-12 col-md-12">
					<legend>Dados da consulta</legend>
				</fieldset>
				
					<table class="table table-striped table-bordered" >
						<tr>
							<th>NOME</th>
							<th>SEXO</th>
							<th>CPF</th>
							<th>TELEFONE</th>
							<th>ENDERECO</th>
							<th>ALTERAR</th>
							<th>EXCLUIR</th>
						</tr>
						<tr>
						<%
							Iterator<Socio> i = socios.iterator();
							while (i.hasNext()){
								Socio so = (Socio)i.next();
								out.println("<tr>"
												+ "<td>" + so.getNome() + "</td>"
												+ "<td>" + so.getSexo() + "</td>"
												+ "<td>" + so.getCpf() + "</td>"
												+ "<td>" + so.getTelefone() + "</td>"
												+ "<td>" + so.getEndereco() + "</td>"
												+ "<td>" 
														+ "<span class=\"btn btn-primary glyphicon glyphicon-refresh\"></span>"
												+ "</td>"
												+ "<td>"
														+ "<span class=\"btn btn-danger glyphicon glyphicon-trash\"></span>"
												+ "</td>"	
											+ "</tr>");
									
								}
							s.close();
						%>
					</table>
				
			</div>
		</form>
	</div>


</body>
</html>