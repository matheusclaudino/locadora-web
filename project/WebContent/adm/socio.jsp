<%@ include file="import/head.jsp"%>

<%@ include file="import/navbar.jsp"%>

	<div class="jumbotrom">
		<div class="container">

			<h1><span class="fa fa-users"></span> Incluir S�cio</h1>
		
		</div>
	</div><!--fim jumbotrom-->
	
	<div class="container">
		<form action="../ctrlCadastrarCliente">
			<div class="row">
				<fieldset class="col-md-12">
					<legend>Dados s�cio</legend>
				</fieldset>
				
				<fieldset class="col-sm-6 col-md-6">
					
					<div class="form-group">
						<label for="nome">Nome</label>
						<input type="text" id="nome" name="nome" class="form-control">
					</div>
					
					<div class="form-group">
						<label for="endereco">Endere�o</label>
						<input type="text" id="endereco" name="endereco" class="form-control">
					</div>
					
					<div class="form-group">
						<label for="telefone">Telefone</label>
						<input type="tel" id="telefone" name="telefone" class="form-control">
					</div>
					
					
				</fieldset><!-- fim fieldset -->
				
				<fieldset class="col-sm-6 col-md-6">
					<div class="form-group">
						<label for="sexo">Sexo</label>
						<select id="sexo" name="sexo" class="form-control">
							<option value="m">Masculino</option>
							<option value="f">Feminino</option>
						</select>
					</div>
					
					<div class="form-group">
						<label for="cpf">CPF</label>
						<input type="text" id="cpf" name="cpf" class="form-control" placeholder="000.000.000-00">
					</div>
					
					<div>
						<label for="data-nascimento">Data nascimento</label>
						<input type="date" id="data-nascimento" name="data-nascimento" class="form-control" placeholder="dd/mm/aaaa">
					</div>
				</fieldset>
			</div><!-- fim row -->
			
			<div class="row">
				<fieldset class="col-md-12">
					<legend>Dados dependente</legend>
				</fieldset>
				<fieldset class="col-sm-6 col-md-6">
					<div class="form-group">
						<label for="nome-dependente">Nome dependente</label>
						<input type="text" id="nome-dependente" name="nome-dependente" class="form-control">
					</div>
					
					<div class="form-group">
						<label for="sexo-dependente">Sexo</label>
						<select id="sexo-dependente" name="sexo-dependente" class="form-control">
							<option value="f">Feminino</option>
							<option value="m">Masculino</option>
						</select>
					</div>
					
					<div class="form-group">
						<label for="data-dependente">Data nascimento</label>
						<input type="date" id="data-dependente" name="data-dependente" class="form-control" placeholder="dd/mm/aaaa">
					</div>
				</fieldset>
			</div>
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
		</form>
	</div><!-- fim container -->
	
	<div class="container">
		<form action="">
			<div class="row">
				<fieldset class="col-sm-12 col-md-12">
					<legend>Dados da dependente</legend>
				</fieldset>
				
					<table class="table table-striped table-bordered col-sm-6 col-md-6" >
						<tr>
							<th>NOME</th>
							<th>SEXO</th>
							<th>DATA NASCIMENTO</th>
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
			</div><!-- fim row -->
		</form>
	</div><!-- fim container -->
</body>
</html>