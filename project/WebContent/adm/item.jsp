<%@include file="import/head.jsp" %>
	
<%@ include file="import/navbar.jsp"%>

	<%@page import="org.hibernate.cfg.AnnotationConfiguration"%>
	<%@page import="org.hibernate.SessionFactory"%>
	<%@page import="org.hibernate.Session"%>
	<%@page import="org.hibernate.Query"%>
	<%@ page import="java.util.List"%>
	<%@ page import="model.domain.Titulo"%>
	<%@ page import="model.domain.TipoItem"%>
	
<%
	//Criando conexão
	SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
	Session s = sessions.openSession();
	
	String qTitulo = "FROM Titulo";
	String qTipoItem = "FROM TipoItem";
	
	s.beginTransaction();
	
	Query qryTitulo = s.createQuery(qTitulo);
	Query qryTipoItem = s.createQuery(qTipoItem);
	
	List<Titulo> titulos = qryTitulo.list();  
	List<TipoItem> tipoItens = qryTipoItem.list();
%>

	<div class="jumbotrom">
		<div class="container">

			<h1><span class="fa fa-video-camera"></span> Incluir Item</h1>
		
		</div>
	</div><!--fim jumbotrom-->
	
	<div class="container">
				<form action="../ctrlCadastrarItem" method="POST">
					<div class="row">
						<fieldset class="col-md-6">
							<legend>Dados item</legend>

							<div class="form-group">
								<input type="hidden" name="operacao" value="inscreverNovoItem">
								<label for="numero">Número série</label>
								<input type="text" class="form-control" id="numero" name="numero" autofocus>	
							</div>

							<div class="form-group">
								<label for="titulo">Título</label>
								<select name="titulo" id="titulo" class="form-control">
									<%
										//Percorrendo os titulos
										for(Titulo t: titulos){
											out.println("<option value=\""+t.getId()+"\">" + t.getNome() + "</option>");
										}
									 %>
								</select>
							</div>
							
							<div class="form-group">
								<label for="data">Data de aquisição</label>
								<input type="date" class="form-control" id="data" name="data" placeholder="dd/mm/aaaa">
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
							
						</fieldset>	<!--fim fieldset-->
						<%s.close(); %>
					</div><!--fim row-->
					<button type="submit" class="btn btn-primary btn-lg pull-left">
						<span class="glyphicon glyphicon-floppy-disk"></span>
						Salvar
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