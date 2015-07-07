<%@include file="import/head.jsp" %>
	
<%@ include file="import/navbar.jsp"%>

	<%@page import="model.application.applicationTitulo"%>

	
	<%@page import="model.domain.Titulo"%>
	<%@page import="java.util.List"%>>
<%@ include file="import/erro.jsp"%>
<%
	List<Titulo> titulos = applicationTitulo.getTitulos();

 %>
	<div class="jumbotrom">
		<div class="container">

			<h1><span class="glyphicon glyphicon-search "></span> Consultar títulos</h1>

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
						<input type="text" id="nome" name="nome" class="form-control" placeholder="Nome do título">
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
                           	<th>CATEGORIA</th>
                            <th>DIRETOR</th>
                            <th>CLASSE</th>
                            <th>ANO</th>
							<th>ALTERAR</th>
							<th>EXCLUIR</th>
						</tr>
						<tr>
							<% for(Titulo ti: titulos){
									out.println("<tr>"
													+ "<td>" + ti.getNome() + "</td>"
													+ "<td>" + ti.getCategoria().getNome() + "</td>"
													+ "<td>" + ti.getDiretor().getNome() + "</td>"
													+ "<td>" + ti.getClasse().getNome() + "</td>"
													+ "<td>" + ti.getAno() + "</td>"
													+ "<td ><a href=\"alterarTitulo.jsp?id="+ ti.getId() +"\"><span class=\"btn btn-primary glyphicon glyphicon-refresh\"></span></a></td>"
													+ "<td><a href=\"excluirTitulo.jsp?id="+ ti.getId() +"\"><span class=\"btn btn-danger glyphicon glyphicon-trash\"></a></span></td>"
											+ "</tr>");
								}
							%>	
						</tr>
					</table>
			</div>
		</form>
	</div>

</body>
</html>