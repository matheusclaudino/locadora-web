<%@ include file="import/head.jsp"%>

<%@ include file="import/navbar.jsp"%>

	<div class="jumbotrom">
		<div class="container">

			<h1><span class="fa fa-usd"></span> Efetuar Pagamento</h1>
		
		</div>
	</div><!--fim jumbotrom-->
	
	<div class="container">
		<form action="../ctrlCadastrarPagamento" method="POST">
			<div class="row">
				<fieldset class="col-md-12">
					<legend>Dados pagamento</legend>
				</fieldset>
				
				<fieldset class="col-sm-6 col-md-6">
					<div class="form-group">
						<input type="hidden" name="operacao" value="inscreverNovoPagamento">
						<label for="data">Data pagamento</label>
						<input type="text" id="data" name="data" class="form-control" placeholder="dd/mm/aaaa">
					</div>
					
					<div class="form-group">
						<label for="valor">Valor</label>
						<div class="input-group">
							<span class="input-group-addon">R$</span>
							<input type="text" id="valor" name="valor" class="form-control">
						</div>
					</div>
				</fieldset><!-- fim fieldset -->
			</div><!-- fim row -->	
			
			<button type="submit" class="btn btn-primary btn-lg btn-left">
				<span class="glyphicon glyphicon-floppy-disk"></span>
				Salvar
			</button>
			
			<a href="../index.html">	
				<button type="button" class="btn btn-danger btn-lg btn-left">
				<span class="glyphicon glyphicon-remove"></span>	
					Cancelar
				</button>
			</a>
		</form>
	</div><!-- fim container -->


</body>
</html>