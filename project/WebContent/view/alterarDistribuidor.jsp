<%@include file="import/head.jsp" %>
	
<%@ include file="import/navbar.jsp"%>

	<div class="jumbotrom">
		<div class="container">

			<h1><span class="fa fa fa-truck"></span> Alterar Distribuidor</h1>
		
		</div>
	</div><!--fim jumbotrom-->
	
	<div class="container">
				<form action="../ctrlCadastrarDistribuidor" method="POST">
					<div class="row">
						<fieldset class="col-md-12">
							<legend>Dados classe</legend>
						</fieldset>
						<fieldset class="col-md-6">
							<div class="form-group">
								<input type="hidden" name="operacao" value="alterar">
								<label for="razao">Razão social</label>
								<input type="text" class="form-control" id="razao" name="razao" value="${param.razao}" autofocus>	
							</div>

							<div class="form-group">
								<div class="input-group">
								<label for="cnpj"> CNPJ</label>
								<input type="text" class="form-control" id="cnpj" name="cnpj"  value="${param.cnpj}"
										placeholder="00.000.000/0000-00">
								</div>
							</div>

						</fieldset>	<!--fim fieldset-->
					</div><!--fim row-->
					<button type="submit" class="btn btn-primary btn-lg pull-left">
						<span class="glyphicon glyphicon-floppy-disk"></span>
						Alterar
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