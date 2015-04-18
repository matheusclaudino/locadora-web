<%@ include file="import/head.jsp" %>

<%@ include file="import/navbar.jsp" %>

	<div class="jumbotrom">
		<div class="container">
			<h1><span class="fa fa-cubes"></span> Incuir tipo item</h1>
		</div>
	</div>
	
	<div class="container">
		<form active="../ctrlCadastrarItemTitulo" method="POST">
			<div class="row">
				<fieldset class="col-md-12">
					<legend>Dados tipo item</legend>
				</fieldset>
				<fieldset class="col-sm-6 col-md-6">
					<div class="form-group">
						<input type="hidden" name="operacao" value="inscreverNovoItemTitulo">
						<label for="nome">Nome</label>
						<input type="text" id="nome" name="nome" class="form-control" autofocus">
					</div>
				</fieldset>
			</div><!-- fim row -->
			<button class="btn btn-primary btn-lg pull-left">
				<span class="glyphicon glyphicon-floppy-disk"></span>
				Salvar
			</button>
			<a href="../index.jsp">
				<button class="btn btn-danger btn-lg pull left">
					<span class="glyphicon glyphicon-remove"></span>
					Cancelar
				</button>
			</a>
		</form><!-- fim form -->
	</div><!-- fim container -->

</body>
</html>