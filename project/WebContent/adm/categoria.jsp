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
						<label for="nome">Nome</label>
						<input type="text" id="nome" name="nome" autofocus>
					</div>
				
				</fieldset><!-- fim fieldset -->
				
			</div><!-- fim row -->
		</form><!-- fim form -->
	</div><!-- fim container -->

</body>
</html>