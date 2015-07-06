<%@include file="import/head.jsp" %>
	
<%@ include file="import/navbar.jsp"%>

<script>
	retorno = ${param.retorno}
	if (retorno == 1)
		alert('Distribuidora cadastrada');
	else
		alert('Erro no cadastro');
</script>

	<div class="jumbotrom">
		<div class="container">

			<h1><span class="fa fa-truck"></span> Incluir Distribuidor</h1>
		
		</div>
	</div><!--fim jumbotrom-->
	
	<div class="container">
				<form action="../ctrlCadastrarDistribuidor" method="POST">
					<div class="row">
						<fieldset class="col-md-6">
							<legend>Dados empresa</legend>

							<div class="form-group">
								<input type="hidden" name="operacao" value="inscreverNovoDistribuidor">
								<label for="razao">Raz�o social</label>
								<input type="text" class="form-control" id="razao" name="razao" autofocus>	
							</div>

							<div class="form-group">
								<label for="cnpj"> CNPJ</label>
								<input type="text" class="form-control" id="cnpj" name="cnpj" 
										placeholder="00.000.000/0000-00">
							</div>
						</fieldset>	<!--fim fieldset-->
					</div><!--fim row-->
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
				</form><!--fim form-->
		</div><!--fim container-->
</body>
</html>