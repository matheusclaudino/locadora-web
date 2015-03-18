<%@ include file="import/head.jsp"%>

<%@ include file="import/navbar.jsp"%>

	<div class="jumbotrom">
		<div class="container">

			<h1>Incluir Título</h1>
		
		</div>
	</div><!--fim jumbotrom-->
	
	<div class="container">
				<form>
					<div class="row">
						<fieldset class="col-md-12">
							<legend>Dados título</legend>
						</fieldset><!--fim fieldset-->	
						<fieldset class="col-sm-6 col-md-6">	
								<div class="form-group">
									<label for="nome">Nome</label>
									<input type="text" class="form-control" id="nome" name="nome" autofocus>	
								</div>
								
								<div class="form-group">
									<label for="ator">Atores</label>
									<input type="text" class="form-control" id="ator" name="ator" >	
								</div>
	
								<div class="form-group">
									<label for="diretor">Diretor</label>
									<input type="text" class="form-control" id="diretor" name="diretor">
								</div>
								
								<div class="form-group">
									<label for="ano">Ano</label>
									<input type="text" class="form-control" id="ano" name="ano" placeholder="aaaa">
								</div>
						</fieldset>	<!--fim fieldset-->
						<fieldset class="col-sm-6 col-md-6">
							
								<div class="form-group">
									<label for="sinopse">Sinopse</label>
									<input type="text" class="form-control" id="sinopse" name="sinopse">
								</div>
							
							<div class="form-group">
								<label for="categoria">Categoria</label>
								<input type="text" class="form-control" id="categoria" name="categoria">
							</div>
							
							<div class="form-group">
								<label for="classe">Classe</label>
								<select name="classe-correspondente" id="classe" class="form-control">
									<option value="cla1">...</option>
									<option value="cla2">...</option>
								</select>
							</div>
							
							<div class="form-group">
								<label for="distribuidor">Distribuidor</label>
								<select name="distribuidor-correspondente" id="distribuidor" class="form-control">
									<option value="dis1">...</option>
									<option value="dis2">...</option>
								</select>
							</div>
							
						</fieldset>	<!--fim fieldset-->
					</div><!--fim row-->
					<button type="submit" class="btn btn-default btn-lg pull-left">
						<span class="glyphicon glyphicon-floppy-disk"></span>
						Salvar
					</button>
					
				</form><!--fim form-->
		</div><!--fim container-->

</body>
</html>