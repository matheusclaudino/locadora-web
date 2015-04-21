<%@include file="import/head.jsp" %>
	
<%@ include file="import/navbar.jsp"%>
	
	<div class="jumbotrom">
		<div class="container">

			<h1><span class="fa fa-unlock"></span> Incluir Devolução</h1>
		
		</div>
	</div><!--fim jumbotrom-->
	
	<div class="container">
				<form>
					<div class="row">
						<fieldset class="col-md-12">
							<legend>Dados devolução</legend>
						</fieldset>
						<fieldset class="col-sm-6 col-md-6">
							<div class="form-group">
								<label for="numero">Número série</label>
								<input type="text" class="form-control" id="numero" name="numero" autofocus placeholder="Buscar">
							</div>
							
							<div class="form-group">
								<label for="item">Item</label>
								<input type="text" class="form-control" id="item" name="item">	
							</div>

							<div class="form-group">
								<label for="locacao">Locação</label>
								<input type="text" class="form-control" id="locacao" name="locacao">
							</div>
						</fieldset><!-- fim fieldset -->
						<fieldset class="col-sm-6 col-md-6">
							<div class="form-group">
								<label for="valor"> Valor</label>
								
								<div class="input-group">
									<span class="input-group-addon">R$</span>
									<input type="text" class="form-control" id="valor" name="valor" 
										placeholder="000,00">
								</div>
							</div>
							
							<div class="form-group">
								<label for="multa"> Multa</label>
								
								<div class="input-group">
									<span class="input-group-addon">R$</span>
									<input type="text" class="form-control" id="multa" name="multa" 
										placeholder="000,00">
								</div>
							</div>
							
							
						</fieldset>	<!--fim fieldset-->
					</div><!--fim row-->
					<button type="submit" class="btn btn-success btn-lg pull-left">
						<span class="glyphicon glyphicon-usd" ></span>
						Efetuar Pagamento
					</button>
					<a href="../index">
						<button type="button" class="btn btn-danger btn-lg pull-left">
							<span class="glyphicon glyphicon-remove"></span>
							Cancelar
						</button>
					</a>
				</form><!--fim form-->
		</div><!--fim container-->
</body>
</html>