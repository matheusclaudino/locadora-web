<%@include file="import/head.jsp" %>
	
<%@ include file="import/navbar.jsp"%>

	<div class="jumbotrom">
		<div class="container">

			<h1><span class="glyphicon glyphicon-search"></span> Consultar Classe</h1>
		
		</div>
	</div><!--fim jumbotrom-->
	
	<div class="container">
		<form>
			<div class="row">
				
				<fieldset class="col-sm-6 col-md-6">
					<div class="form-group">
						<label for="nome">Nome classe</label>
						<div class="input-group">
							<input type="text" id="nome" name="nome" class="form-control">
							<span class="input-group-addon"><span class="glyphicon glyphicon-search"></span></span>
						</div>
					</div>
				</fieldset>
				
			</div>
		</form>
		
	</div>

</body>
</html>