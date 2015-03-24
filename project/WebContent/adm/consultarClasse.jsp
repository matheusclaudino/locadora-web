<%@include file="import/head.jsp" %>
	
<%@ include file="import/navbar.jsp"%>

	<div class="jumbotrom">
		<div class="container">

			<h1><span class="glyphicon glyphicon-search "></span> Consultar Classe</h1>

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
							<th>VALOR LOCAÇÃO</th>
							<th>PRAZO DEVOLUÇÃO</th>
							<th>ALTERAR</th>
							<th>EXCLUIR</th>
						</tr>
						<tr>
							<td ></td>
							<td></td>
							<td></td>
							<td ><span class="btn btn-primary glyphicon glyphicon-refresh"></span></td>
							<td><span class="btn btn-danger glyphicon glyphicon-trash"></span></td>	
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td><span class="btn btn-primary glyphicon glyphicon-refresh"></span></td>
							<td><span class="btn btn-danger glyphicon glyphicon-trash"></span></td>	
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td><span class="btn btn-primary glyphicon glyphicon-refresh"></span></td>
							<td><span class="btn btn-danger glyphicon glyphicon-trash"></span></td>	
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td><span class="btn btn-primary glyphicon glyphicon-refresh"></span></td>
							<td><span class="btn btn-danger glyphicon glyphicon-trash"></span></td>	
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td><span class="btn btn-primary glyphicon glyphicon-refresh"></span></td>
							<td><span class="btn btn-danger glyphicon glyphicon-trash"></span></td>	
						</tr>
					</table>
				
			</div>
		</form>
	</div>

</body>
</html>