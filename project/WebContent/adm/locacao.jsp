<%@include file="import/head.jsp" %>
	
<%@ include file="import/navbar.jsp"%>

	<%@ page import="org.hibernate.Session"%>
	<%@ page import="org.hibernate.SessionFactory"%>
	<%@ page import="org.hibernate.Query"%>
	<%@ page import="org.hibernate.cfg.AnnotationConfiguration"%>
	<%@ page import="java.util.List"%>
	<%@ page import="model.domain.Titulo"%>
	
<%
	SessionFactory sessions =  new AnnotationConfiguration().configure().buildSessionFactory();
	Session s = sessions.openSession();
	
	String qTitulo = "FROM Titulo";
	
	Query qryTitulo = s.createQuery(qTitulo);
	
	List<Titulo> titulos = qryTitulo.list();

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
						<select name="tipo" id="tipo" class="form-control" >
							<option value="dvd">DVD</option>
							<option value="fita">Fita</option>
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
						<label for="data">Data prevista devolucao</label>
						<input type="text" id="data" name="data" class="form-control">
					</div>
				</fieldset>
				<%s.close(); %>
			</div><!-- fim row -->
			<button type="submit" class="btn btn-primary btn-lg pull-left">
				<span class="glyphicon glyphicon-floppy-disk"></span>
				Salvar
			</button>
			
			<a href="pagamento.html">
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