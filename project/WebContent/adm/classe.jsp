<%@include file="import/head.jsp" %>
	
<%@ include file="import/navbar.jsp"%>

	<div class="jumbotrom">
		<div class="container">

			<h1><span class="fa fa-list-ol"></span> Incluir Classe</h1>
		
		</div>
	</div><!--fim jumbotrom-->
	
	<div class="container">
				<form>
					<div class="row">
						<fieldset class="col-md-12">
							<legend>Dados pessoais</legend>
						</fieldset>
						
						<fieldset class="col-md-6">
							<div class="form-group">
								<label for="nome">Nome completo</label>
								<input type="text" class="form-control" id="nome" name="nome" autofocus>	
							</div>

							<div class="form-group">
								<label for="valor-locacao"> Valor locação</label>
								
								<div class="input-group">
									<span class="input-group-addon">R$</span>
									<input type="email" class="form-control" id="valor-locacao" name="valor-locacao" 
										placeholder="000,00">
								</div>
							</div>

							<div class="form-group">
								<label for="prazo">Prazo devolção</label>
								<input type="text" class="form-control" id="prazo" name="prazo" 
									placeholder="dias">
							</div>
						</fieldset>	<!--fim fieldset-->
					</div><!--fim row-->
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
				</form><!--fim form-->
		</div><!--fim container-->

</body>
</html>