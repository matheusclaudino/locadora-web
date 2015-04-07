<%@ include file="import/head.jsp"%>

<%@ include file="import/navbar.jsp"%>

	<div class="jumbotrom">
		<div class="container">

			<h1><span class="fa fa-users"></span> Incluir Sócio</h1>
		
		</div>
	</div><!--fim jumbotrom-->
	
	<div class="container">
		<form action="../ctrlCadastrarCliente" method="POST">
			<div class="row">
				<fieldset class="col-md-12">
					<legend>Dados sócio</legend>
				</fieldset>
				
				<fieldset class="col-sm-6 col-md-6">
					<input type="hidden" name="operacao" value="inscreverNovoSocio">
					
					<div class="form-group">
						<label for="nome">Nome</label>
						<input type="text" id="nome" name="nome" class="form-control">
					</div>
					
					<div class="form-group">
						<label for="endereco">Endereço</label>
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
	</div><!-- fim container sócio -->
</body>
</html>