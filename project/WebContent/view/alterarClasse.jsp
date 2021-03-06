<%@include file="import/head.jsp" %>
	
<%@ include file="import/navbar.jsp"%>

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
						<p> ID: ${param.id}</p>
						<fieldset class="col-md-6">
							<div class="form-group">
								<input type="hidden" name="idClasse" value="${param.id}">
								<input type="hidden" name="operacao" value="alterarClasse">
								<label for="nome">Nome completo</label>
								<input type="text" class="form-control" id="nome" name="nome" value="${param.nome}" autofocus>	
							</div>

							<div class="form-group">
								<label for="valor-locacao"> Valor loca��o</label>
								
								<div class="input-group">
									<span class="input-group-addon">R$</span>
									<input type="text" class="form-control" id="valor-locacao" name="valor-locacao" value="${param.valor}" 
										placeholder="00.00">
								</div>
							</div>

							<div class="form-group">
								<label for="prazo">Prazo devolu��o</label>
								<input type="text" class="form-control" id="prazo" name="prazo" value="${param.prazo}" 
									placeholder="Dias">
							</div>
						</fieldset>	<!--fim fieldset-->
					</div><!--fim row-->
					<button type="submit" class="btn btn-primary btn-lg pull-left">
						<span class="fa fa-refresh"></span>
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