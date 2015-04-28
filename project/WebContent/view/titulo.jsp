<%@page import="model.application.applicationCategoria"%>
<%@page import="model.application.applicationDistribuidor"%>
<%@page import="model.application.applicationDiretor"%>
<%@page import="model.application.applicationClasse"%>
<%@page import="model.application.applicationAtor"%>
<%@ include file="import/head.jsp"%>

<%@ include file="import/navbar.jsp"%>

	<%@page import="org.hibernate.cfg.AnnotationConfiguration"%>
	<%@page import="org.hibernate.SessionFactory"%>
	<%@page import="org.hibernate.Session"%>
	<%@page import="org.hibernate.Query"%>
	<%@page import="java.util.List"%>
	<%@ page import="java.util.Iterator"%>
	<%@ page import="model.domain.Ator"%>
	<%@ page import="model.domain.Classe"%>
	<%@ page import="model.domain.Diretor"%>
	<%@ page import="model.domain.Distribuidor"%>
	<%@ page import="model.domain.Categoria"%>
	
<%	
	List<Ator> atores = applicationAtor.getAtores();
	List<Classe> classes =  applicationClasse.getClasses();
	List<Diretor> diretores = applicationDiretor.getDiretores();
	List<Distribuidor> distribuidores = applicationDistribuidor.getDistribuidores();
	List<Categoria> categorias = applicationCategoria.getCategorias();
%>
	<div class="jumbotrom">
		<div class="container">

			<h1><span class="fa fa-film"></span> Incluir Título</h1>
		
		</div>
	</div><!--fim jumbotrom-->
	
	<div class="container">
				<form action="../ctrlCadastrarTitulo" method="POST">
					<div class="row">
						<fieldset class="col-md-12">
							<legend>Dados título</legend>
						</fieldset><!--fim fieldset-->	
						<fieldset class="col-sm-6 col-md-6">	
								<div class="form-group">
									<input type="hidden" name="operacao" value="inscreverNovoTitulo">
									<label for="nome">Nome</label>
									<input type="text" class="form-control" id="nome" name="nome" autofocus>	
								</div>
								
								<div class="form-group">
									<label for="sinopse">Sinopse</label>
									<textarea class="form-control" id="sinopse" name="sinopse" rows="5" placeholder="Escreva a sinopse"></textarea>
								</div>
	
								<div class="form-group">
									<label for="diretor">Diretor</label>
									<select name="diretor" id="diretor" class="form-control">
									<%
										for(Diretor c: diretores){
											out.println("<option value=\""+ c.getId() +"\">"+ c.getNome() +"</option>");
										}
									%>
									</select>
								</div>
								
								<div class="form-group">
									<label for="ano">Ano</label>
									<input type="text" class="form-control" id="ano" name="ano" placeholder="aaaa">
								</div>
						</fieldset>	<!--fim fieldset-->
						<fieldset class="col-sm-6 col-md-6">
							
							<div class="form-group">
								<label for="categoria">Categoria</label>
									<select name="categoria" id="categoria" class="form-control">
									<%
										for(Categoria c: categorias){
											out.println("<option value=\""+ c.getId() +"\">"+ c.getNome() +"</option>");
										}
									%>
									</select>
							</div>
							
							<div class="form-group">
								<label for="classe">Classe</label>
								<select name="classe" id="classe" class="form-control">
									<%
										for(Classe c: classes){
												out.println("<option value=\""+ c.getId() +"\">"+ c.getNome() +"</option>");
										}	
									%>
								</select>
							</div>
							
							<div class="form-group">
								<label for="distribuidor">Distribuidor</label>
								<select name="distribuidor" id="distribuidor" class="form-control">
									<%
										for(Distribuidor c: distribuidores){
												out.println("<option value=\""+ c.getCnpj() +"\">"+ c.getRazaoSocial() +"</option>");
										}
									%>
								</select>
							</div>
							
						</fieldset>	<!--fim fieldset-->
						<fieldset class="col-sm-6 col-md-6">
							<label>Atores</label>
							<table class="table table-striped table-bordered">
								<tr>
									<th>Nome</th>
									<th>Selecionar</th>
								</tr>
								<tr>
									<%
										for(Ator c: atores){
											out.println(
													"<tr>"
													+ 	"<td>"+ c.getNome() +"</td>"
													+ 	"<td><input type=\"checkbox\" name=\"selecao-ator\" value=\""+ c.getId() +"\"></td>"
													+ "</tr>");
										}
									%>
								</tr>
							</table>	
							
						</fieldset><!-- fim fieldset table -->
					</div><!--fim row-->
					<button type="submit" class="btn btn-primary btn-lg pull-left">
						<span class="glyphicon glyphicon-floppy-disk"></span>
						Salvar
					</button>
					<a href="../index">
						<button type="button" class="btn btn-danger btn-lg pull-left">
							<span class="glyphicon glyphicon-remove"></span>
							Cancelar
						</button>
					</a>
					
				</form><!--fim form-->
		</div><!--fim container-->

</body>
</html>