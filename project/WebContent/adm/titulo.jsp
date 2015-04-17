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
<%
	SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
	Session s = sessions.openSession();
	
	String queryAtor = "from Ator";
	String queryClasse = "from Classe";
	String queryDiretor = "from Diretor";
	String queryDistribuidor = "from Distribuidor";
	
	s.beginTransaction();
	Query qryAtor = s.createQuery(queryAtor);
	Query qryClasse = s.createQuery(queryClasse);
	Query qryDiretor = s.createQuery(queryDiretor);
	Query qryDistribuidor = s.createQuery(queryDistribuidor);
	
	List atores = qryAtor.list();
	List classes =  qryClasse.list();
	List diretores = qryDiretor.list();
	List distribuidores = qryDistribuidor.list();
	
%>
	<div class="jumbotrom">
		<div class="container">

			<h1><span class="fa fa-film"></span> Incluir Título</h1>
		
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
										Iterator<Diretor> idir = diretores.iterator();
										while(idir.hasNext()){
											Diretor c = idir.next();
											out.println("<option value=\""+ c.getId() +"\">"+ c.getNome() +"</option>"
													);
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
								<input type="text" class="form-control" id="categoria" name="categoria">
							</div>
							
							<div class="form-group">
								<label for="classe">Classe</label>
								<select name="classe" id="classe" class="form-control">
									<%
										Iterator<Classe> ic = classes.iterator();
										while(ic.hasNext()){
											Classe c = ic.next();
											out.println("<option value=\""+ c.getId() +"\">"+ c.getNome() +"</option>"
													);
										}
									%>
								</select>
							</div>
							
							<div class="form-group">
								<label for="distribuidor">Distribuidor</label>
								<select name="distribuidor" id="distribuidor" class="form-control">
									<%
										Iterator<Distribuidor> id = distribuidores.iterator();
										while(id.hasNext()){
											Distribuidor c = id.next();
											out.println("<option value=\""+ c.getCnpj() +"\">"+ c.getRazaoSocial() +"</option>"
													);
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
										Iterator<Ator> i = atores.iterator();
										while(i.hasNext()){
											Ator a = i.next();
											out.println(
													"<tr>"
													+ 	"<td>"+ a.getNome() +"</td>"
													+ 	"<td><input type=\"checkbox\" name=\"selecao-ator\" value=\"ativo"+ a.getId() +"\"></td>"
													+ "</tr>");
										}
									%>
								</tr>
							</table>	
							
						</fieldset><!-- fim fieldset table -->
						<%s.close();%>
					</div><!--fim row-->
					<button type="submit" class="btn btn-default btn-lg pull-left">
						<span class="glyphicon glyphicon-floppy-disk"></span>
						Salvar
					</button>
					<a href="../index">
						<button type="button" class="btn btn-default btn-lg pull-left">
							<span class="glyphicon glyphicon-remove"></span>
							Cancelar
						</button>
					</a>
					
				</form><!--fim form-->
		</div><!--fim container-->

</body>
</html>