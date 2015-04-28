<%@page import="model.application.applicationTipoItem"%>
<%@page import="model.application.applicationItem"%>
<%@page import="model.application.applicationTitulo"%>
<%@include file="import/head.jsp" %>
	
<%@ include file="import/navbar.jsp"%>

	<%@ page import="org.hibernate.Session"%>
	<%@ page import="org.hibernate.SessionFactory"%>
	<%@ page import="org.hibernate.Query"%>
	<%@ page import="org.hibernate.cfg.AnnotationConfiguration"%>
	<%@ page import="java.util.List"%>
	<%@ page import="model.domain.Titulo"%>
	<%@ page import="model.domain.TipoItem"%>
	
<%
	List<Titulo> titulos = applicationTitulo.getTitulos();
	List<TipoItem> tipoItens = applicationTipoItem.getTipos(); 
%>
	<div class="jumbotrom">
		<div class="container">

			<h1><span class="fa fa-unlock-alt"></span> Incluir Locação</h1>
		
		</div>
	</div><!--fim jumbotrom-->
	
	<div class="container">
		<form action="../ctrlCadastrarLocacao" method="POST">
			<div class="row">
				<fieldset class="col-md-12">
					<legend>Dados locação</legend>
				</fieldset><!--fim fieldset-->	
				
				<fieldset class="col-sm-6 col-md-6">
					<div class="form-group">
						<input type="hidden" name="operacao" value="inscreverNovaLocacao">
						<label for="numero">Número inscrição</label>
						<input type="text" id="numero" name="numero" class="form-control">
					</div>
					
					<div class="form-group">
						<label for="titulo">Título</label>
						<select name="titulo" id="titulo" class="form-control" >
							<%
								//Percorrendo os titulos
								for(Titulo t: titulos){
									out.println("<option value=\""+t.getId()+"\">" + t.getNome() + "</option>");
								}
							%>
						</select>
					</div>
					
					<div class="form-group">
						<label for="tipo">Tipo item</label>
							<select name="tipo-item" id="tipo" class="form-control">
								<%
									//Percorrendo os tipo de itens
									for(TipoItem t: tipoItens){
										out.println("<option value=\""+t.getId()+"\">" + t.getNome() + "</option>");	
									}
								 %>
							</select>
					</div>
				</fieldset>	
				<fieldset class="col-sm-6 col-md-6">
					<div class="form-group">
						<label for="valor">Valor da locação</label>
						<div class="input-group">
							<span class="input-group-addon">R$</span>
							<input type="text" id="valor" name="valor" class="form-control" placeholder="000,00">
						</div>
					</div>
					
					<div class="form-group">
						<label for="data-locacao">Data locação</label>
							<input type="date" id="data-locacao" name="data-locacao" class="form-control">
					</div>
					
					<div class="form-group">
						<label for="data-prevista">Data prevista devolucao</label>
							<input type="date" id="data-prevista" name="data-prevista" class="form-control">
					</div>
				</fieldset>
			</div><!-- fim row -->
			<button type="submit" class="btn btn-primary btn-lg pull-left">
				<span class="glyphicon glyphicon-floppy-disk"></span>
				Salvar
			</button>
			
			<a href="pagamento.jsp">
				<button type="button" class="btn btn-success btn-lg pull-left">
					<span class="glyphicon glyphicon-usd"></span>
					Efetuar Pagamento
				</button>
			</a>
			
			<a href="../index.jsp">
				<button type="button" class="btn btn-danger btn-lg pull-left">
					<span class="glyphicon glyphicon-remove"></span>
					Cancelar
				</button>
			</a>
		</form>
	</div><!-- fim container -->
</body>
</html>