<%@include file="import/head.jsp" %>
	
<%@ include file="import/navbar.jsp"%>

	<div class="jumbotrom">
		<div class="container">

			<h1>Incluir Item</h1>
		
		</div>
	</div><!--fim jumbotrom-->
	
	<div class="container">
				<form>
					<div class="row">
						<fieldset class="col-md-6">
							<legend>Dados item</legend>

							<div class="form-group">
								<label for="numero">Número série</label>
								<input type="text" class="form-control" id="numero" name="numero" autofocus>	
							</div>

							<div class="form-group">
								<label for="titulo">Título</label>
								<input type="text" class="form-control" id="titulo" name="titulo">
							</div>
							
							<div class="form-group">
								<label for="data">Data de aquisição</label>
								<input type="text" class="form-control" id="data" name="data" placeholder="dd/mm/aaaa">
							</div>
							
							<div class="form-group">
								<label for="tipo">Tipo item</label>
								<select name="tipo-item" id="tipo" class="form-control">
									<option value="dvd">DVD</option>
									<option value="fita">Fita</option>
								</select>
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