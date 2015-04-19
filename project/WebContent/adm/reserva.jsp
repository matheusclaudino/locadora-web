<%@ include file="import/head.jsp"%>

<%@ include file="import/navbar.jsp"%>
	
	<%@page import="org.hibernate.cfg.AnnotationConfiguration"%>
	<%@page import="org.hibernate.SessionFactory"%>
	<%@page import="org.hibernate.Session"%>
	<%@page import="org.hibernate.Query"%>
	<%@page import="java.util.List"%>
	<%@page import="model.domain.Cliente"%>
	<%@page import="model.domain.Titulo"%>
	<%@page import="model.domain.Item"%>
	
<%
	SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
	Session s = sessions.openSession();
	
	String qCliente = "FROM Cliente"; 
	String qTitulo = "FROM Titulo";
	String qItem = "FROM TipoItem";
	
	Query qryCliente = s.createQuery(qCliente);
	Query qryTitulo = s.createQuery(qTitulo);
	Query qryItem = s.createQuery(qItem);
	
	List<Cliente> clientes = qryCliente.list();
	List<Titulo> titulos = qryTitulo.list();
	List<Item> itens = qryItem.list();
	
%>
	<div class="jumbotrom">
		<div class="container">

			<h1><span class="fa fa-check-square-o"></span> Incluir Reserva</h1>
		
		</div>
	</div><!--fim jumbotrom-->
	
	<div class="container">
		<form>
			<div class="row">
				<fieldset class="col-md-12">
					<legend>Dados reserva</legend>
				</fieldset>
				
				<fieldset class="col-sm-6 col-md-6">
					<div class="form-group">
						<label for="numero">Número inscrição</label>
						<input type="text" id="numero" name="numero" class="form-control">
					</div>
					
					<div class="form-group">
						<label for="titulo">Título</label>
						<input type="text" id="titulo" name="titulo" class="form-control">
					</div>
					
					<div class="form-group">
						<label for="tipo">Tipo item</label>
						<select id="tipo" name="tipo" class="form-control">
							<option value="dvd">DVD</option>
							<option value="fita">Fita</option>
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