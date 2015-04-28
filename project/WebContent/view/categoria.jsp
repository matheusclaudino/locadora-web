<%@ include file="import/head.jsp" %>

<%@ include file="import/navbar.jsp" %>

	<div class="jumbotrom">
		<div class="container">
			<h1><span class="fa fa-th"></span> Incluir Categoria</h1>
		</div>
	</div>
	
	<div class="container">
		<form action="../ctrlCadastrarCategoria" method="POST">
			<div class="row">
				
				<fieldset class="col-md-12">
						<legend>Dados categora</legend>
				</fieldset>
				<fieldset class="col-sm-6 col-md-6">
					<div class="form-group">
						<input type="hidden" name="operacao" value="inscreverNovaCategoria">
						<label for="nome">Nome</label>
						<input type="text" class="form-control" id="nome" name="nome" autofocus>
					</div>
				</fieldset><!-- fim fieldset -->
			</div><!-- fim row -->
			
			<button type="submit" class="btn btn-primary btn-lg pull-left">
				<span class="glyphicon glyphicon-floppy-disk"></span>
				Salvar
			</button>
			<a href="../index.jsp">
				<button type="button" class="btn btn-danger btn-lg pull-left">
					<span class="glyphicon glyphicon-remove"></span>
					Cancelar
				</button>
			</a>
			
		</form><!-- fim form -->
	</div><!-- fim container -->

</body>
</html>