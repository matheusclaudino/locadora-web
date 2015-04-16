<%@ include file="import/head.jsp" %>

<%@ include file="import/navbar.jsp" %>

	<div class="jumbotrom">
		<div class="container">
			<h1><span class="fa fa-bullhorn"></span> Incluir Diretor</h1>
		</div>
	</div><!-- fim jumbotrom -->
	
	<div class="container">
		<form action="../ctrlCadastrarDiretor" method="POST">
			<div class="row">
				<fieldset class="col-md-12">
					<legend>Dados diretor</legend>
				</fieldset>
				<fieldset class="col-sm-6 col-md-6 ">
					<div class="form-group">
						<input type="hidden" name="operacao" value="inscreverNovoDiretor" />
						<label for="nome">Nome</label>
						<input type="text" class="form-control" id="nome" name="nome" autofocus>
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
			
		</form><!-- fim form -->
		
	</div><!-- fim container -->

</body>
</html>