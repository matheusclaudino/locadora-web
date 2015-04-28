<%@ include file="import/head.jsp" %>

<%@ unclude file="import/navbar.jsp" %>

	<div class="jumbotrom">
		<div class="container">

			<h1><span class="fa fa-list-ol"></span> Alterar Classe</h1>
		
		</div>
	</div><!--fim jumbotrom-->
	
	<div class="container">
				<form action="../ctrlCadastrarClasse" method="POST">
					<div class="row">
						<fieldset class="col-md-12">
							<legend>Dados classe</legend>
						</fieldset>
						
						<fieldset class="col-md-6">
							<div class="form-group">
								<input type="hidden" name="operacao" value="inscreverNovaClasse">
								<label for="nome">Nome completo</label>
								<input type="text" class="form-control" id="nome" name="nome" autofocus>	
							</div>

							<div class="form-group">
								<label for="valor-locacao"> Valor locação</label>
								
								<div class="input-group">
									<span class="input-group-addon">R$</span>
									<input type="text" class="form-control" id="valor-locacao" name="valor-locacao" 
										placeholder="00.00">
								</div>
							</div>

							<div class="form-group">
								<label for="prazo">Prazo devolução</label>
								<input type="text" class="form-control" id="prazo" name="prazo" 
									placeholder="Dias">
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