<%@include file="import/head.jsp" %>
	
<%@ include file="import/navbar.jsp"%>

	<div class="jumbotrom">
		<div class="container">
			<h1><span class="fa fa-child"></span> Incluir Ator</h1>
		</div>
	</div><!--fim jumbotrom-->
	
<div class="container">
	<form action="../ctrlCadastrarAtor" method="POST">
		<div class="row">
				<fieldset class="col-md-12">
					<legend>Dados ator</legend>
				</fieldset>
				<fieldset class="col-md-6">
					<input type="hidden" name="operacao" value="inscreverNovoAtor">
					<div class="form-group">
						<label for="nome">Nome</label>
						<input type="text" class="form-control" id="nome" name="nome" autofocus>
					</div>
				</fieldset>
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