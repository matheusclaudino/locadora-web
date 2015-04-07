<%@ include file="import/head.jsp"%>

<%@ include file="import/navbar.jsp"%>


<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.SessionFactory"%>
<%@ page import="org.hibernate.Query"%>
<%@ page import="org.hibernate.cfg.AnnotationConfiguration"%>
<%@ page import="model.domain.Cliente"%>
<%@ page import="model.domain.Socio"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>

	<div class="jumbotrom">
		<div class="container">

			<h1><span class="fa fa-users"></span> Incluir Dependente</h1>
		
		</div>
	</div><!--fim jumbotrom-->
	
	<div class="container">
		<form action="../ctrlCadastrarCliente" method="POST">
	 	<div class="row">
				<fieldset class="col-md-12">
					<legend>Dados dependente</legend>
				</fieldset>
				<fieldset class="col-sm-6 col-md-6">
				
					<input type="hidden" name="operacao" value="inscreverNovoDependente">
				
					<div class="form-group">
						<label for="nome">Nome dependente</label>
						<input type="text" id="nome" name="nome" class="form-control">
					</div>
					
					<div class="form-group">
						<label for="sexo">Sexo</label>
						<select id="sexo" name="sexo" class="form-control">
							<option value="f">Feminino</option>
							<option value="m">Masculino</option>
						</select>
					</div>
					
					<div class="form-group">
						<label for="data">Data nascimento</label>
						<input type="date" id="data" name="data" class="form-control" placeholder="dd/mm/aaaa">
					</div>
				</fieldset>
				<fieldset class="col-sm-6 col-md-6">
					<table class="table table-striped table-bordered " >
						<tr>
							<th>NOME</th>
							<th>SEXO</th>
							<th>DATA NASCIMENTO</th>
							<th>ALTERAR</th>
							<th>EXCLUIR</th>
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
				
				</fieldset>
			</div><!-- fim row -->
			<button type="submit" class="btn btn-default btn-lg pull-left">
				<span class="glyphicon glyphicon-floppy-disk"></span>
				Salvar
			</button>
			
			<a href="../index.jsp">
				<button type="button" class="btn btn-default btn-lg pull-left">
					<span class="glyphicon glyphicon-remove"></span>
					Cancelar
				</button>
			</a>
		</form><!-- fim form -->
	</div><!-- fim container dependente -->
</body>
</html>