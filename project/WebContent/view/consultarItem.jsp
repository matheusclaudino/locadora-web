<%@include file="import/head.jsp" %>
	
<%@ include file="import/navbar.jsp"%>

	<%@page import="model.application.applicationItem"%>
	<%@page import="model.application.applicationTitulo"%>
	<%@page import="model.application.applicationTipoItem"%>
	
	
	<%@page import="model.domain.Item"%>
	<%@page import="java.util.List"%>>
<%@ include file="import/erro.jsp"%>
<%
	List<Item> itens = applicationItem.getItens();

 %>
	<div class="jumbotrom">
		<div class="container">

			<h1><span class="glyphicon glyphicon-search "></span> Consultar Item</h1>

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
						<input type="text" id="nome" name="nome" class="form-control" placeholder="Nome do item">
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
							<th>TÍTULO</th>
							<th>NÚMERO</th>
							<th>TIPO</th>
							<th>ALTERAR</th>
							<th>EXCLUIR</th>
						</tr>
						<tr>
							<% for(Item i: itens){
									out.println("<tr>"
													+ "<td>" + i.getTitulo().getNome() + "</td>"
													+ "<td>" + i.getNumeroSerie() + "</td>"
													+ "<td>" + i.getTipoItem().getNome() + "</td>"
													+ "<td ><a href=\"alterarItem.jsp?id="+ i.getId() +"&titulo="+i.getTitulo().getNome()+"&tipo="+i.getTipoItem().getNome()+"&numero="+i.getNumeroSerie()+"&data="+i.getData()+"\"><span class=\"btn btn-primary glyphicon glyphicon-refresh\"></span></a></td>"
													+ "<td><a href=\"excluirItem.jsp?id="+ i.getId() +"&titulo="+i.getTitulo().getNome()+"&tipo="+i.getTipoItem().getNome()+"&numero="+i.getNumeroSerie()+"&data="+i.getData()+"\"><span class=\"btn btn-danger glyphicon glyphicon-trash\"></a></span></td>"
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