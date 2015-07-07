<%@include file="import/head.jsp" %>
	
<%@ include file="import/navbar.jsp"%>

	<div class="jumbotrom">
		<div class="container">

			<h1><span class="fa fa-cubes"></span> Excluir Tipo Item</h1>
		
		</div>
	</div><!--fim jumbotrom-->
	
	<div class="container">
				<form action="../ctrlCadastrarTipoItem" method="POST">
					<div class="row">
						<fieldset class="col-md-12">
							<legend>Dados Tipo Item</legend>
						</fieldset>
						<p> ID: ${param.id}</p>
						<fieldset class="col-md-6">
							<div class="form-group">
								<input type="hidden" name="id" value="${param.id}">
								<input type="hidden" name="operacao" value="excluir">
								<label for="nome">Nome</label>
								<input type="text" class="form-control" id="nome" name="nome" value="${param.nome}" autofocus readonly="readonly">	
							</div>

						</fieldset>	<!--fim fieldset-->
					</div><!--fim row-->
					
					<button type="submit" class="btn btn-primary btn-lg pull-left">
						<span class="fa fa-trash-o"></span>
						Excluir
					</button>
					<a href="../index.jsp">
						<button type="button" class="btn btn-danger btn-lg pull-left">
							<span class="glyphicon glyphicon-remove"></span>
							Cancelar
						</button>
					</a>
				</form><!--fim form-->
		</div><!--fim container-->

</body>
</html>