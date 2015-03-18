<%@include file="import/head.jsp" %>
	
<%@ include file="import/navbar.jsp"%>

	<div class="jumbotrom">
		<div class="container">

			<h1>Incluir Locação</h1>
		
		</div>
	</div><!--fim jumbotrom-->
	
	<div class="container">
		<form action="">
			<div class="row">
				<fieldset class="col-md-12">
					<legend>Dados locação</legend>
				</fieldset><!--fim fieldset-->	
				
				<fieldset class="col-sm-6 col-md-6">
					<div class="form-group">
						<label for="numero">Número incrição</label>
						<input type="text" id="numero" name="numero" class="form-control">
					</div>
					
					<div class="form-group">
						<label for="titulo">Título</label>
						<input type="text" id="titulo" name="titulo" class="form-control">
					</div>
					
					<div class="form-group">
						<label for="tipo">Tipo item</label>
						<select name="tipo" id="tipo" class="form-control" >
							<option value="dvd">DVD</option>
							<option value="fita">Fita</option>
						</select>
					</div>
					
					<div class="form-group">
						<label for="valor">Valor da locação</label>
						
						<div class="input-group">
							<span class="input-group-addon">R$</span>
							<input type="text" id="valor" name="valor" class="form-control" placeholder="000,00">
						</div>
						
					</div>
					
					<div class="form-group">
						<label for="data">Data prevista devolucao</label>
						<input type="text" id="data" name="data" class="form-control">
					</div>
				</fieldset>
			</div><!-- fim row -->
			<button type="submit" class="btn btn-default btn-lg pull-left">
				<span class="glyphicon glyphicon-floppy-disk"></span>
				Salvar
			</button>
			
			<a href="pagamento.html">
				<button type="button" class="btn btn-default btn-lg pull-left">
					<span class="glyphicon glyphicon-usd"></span>
					Efetuar Pagamento
				</button>
			</a>
			
			<a href="../index">
				<button type="button" class="btn btn-default btn-lg pull-left">
					<span class="glyphicon glyphicon-remove"></span>
					Cancelar
				</button>
			</a>
		</form>
	</div><!-- fim container -->
</body>
</html>