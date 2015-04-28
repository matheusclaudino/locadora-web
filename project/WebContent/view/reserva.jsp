<%@page import="model.application.applicationTipoItem"%>
<%@page import="model.application.applicationTitulo"%>
<%@page import="model.application.applicationCliente"%>
<%@ include file="import/head.jsp"%>

<%@ include file="import/navbar.jsp"%>
	
	<%@page import="org.hibernate.cfg.AnnotationConfiguration"%>
	<%@page import="org.hibernate.SessionFactory"%>
	<%@page import="org.hibernate.Session"%>
	<%@page import="org.hibernate.Query"%>
	<%@page import="java.util.List"%>
	<%@page import="model.domain.Cliente"%>
	<%@page import="model.domain.Titulo"%>
	<%@page import="model.domain.TipoItem"%>
	
<%
	List<Cliente> clientes = applicationCliente.getClientes();
	List<Titulo> titulos = applicationTitulo.getTitulos();
	List<TipoItem> tipoItens = applicationTipoItem.getTipos();
%>
	<div class="jumbotrom">
		<div class="container">

			<h1><span class="fa fa-check-square-o"></span> Incluir Reserva</h1>
		
		</div>
	</div><!--fim jumbotrom-->
	
	<div class="container">
		<form action="../ctrlCadastrarReserva" method="POST">
			<div class="row">
				<fieldset class="col-md-12">
					<legend>Dados reserva</legend>
				</fieldset>
				
				<fieldset class="col-sm-6 col-md-6">
					<div class="form-group">
						<input type="hidden" name="operacao" value="inscreverNovaReserva">
						<label for="numero">Número inscrição</label>
						<select id="numero" name="numero" class="form-control">
							<%
								for(Cliente t: clientes){
									out.println("<option value=\""+ t.getNumero_inscricao() +"\">"+ t.getNumero_inscricao() + " - " + t.getNome()  +"</option>");
								}
							%>
						</select>
					</div>
					
					<div class="form-group">
						<label for="titulo">Título</label>
						<select id="titulo" name="titulo" class="form-control">
							<%
								for(Titulo t: titulos){
									out.println("<option value=\""+ t.getId() +"\">"+ t.getNome() +"</option>");
								}
							%>
						</select>
					</div>
					
					<div class="form-group">
						<label for="tipo">Tipo item</label>
						<select id="tipo" name="tipo" class="form-control">
							<%
								for(TipoItem t: tipoItens){
									out.println("<option value=\""+ t.getId() +"\">"+ t.getNome() +"</option>");
								}
							%>
						</select>
					</div>
				</fieldset><!-- fim fieldset -->
			</div><!-- fim row -->
			
			<button type="submit" class="btn btn-primary btn-lg pull-left">
				<span class="glyphicon glyphicon-floppy-disk"></span>
				Salvar
			</button>
			
			<a href="../index.html">
				<button type="button" class="btn btn-danger btn-lg pull-left">
				<span class="glyphicon glyphicon-remove"></span>
					Cancelar
				</button>
			</a>
			
		</form>
	</div><!-- fim container -->

</body>
</html>