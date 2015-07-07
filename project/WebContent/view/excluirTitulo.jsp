
<%@include file="import/head.jsp" %>
	
<%@ include file="import/navbar.jsp"%>

	<%@page import="org.hibernate.cfg.AnnotationConfiguration"%>
	<%@page import="org.hibernate.SessionFactory"%>
	<%@page import="org.hibernate.Session"%>
	<%@page import="org.hibernate.Query"%>
	<%@ page import="java.util.List"%>
	<%@ page import="java.util.ArrayList"%>
	<%@ page import="model.domain.Titulo"%>
	<%@ page import="model.domain.TipoItem"%>
	<%@ page import="model.domain.Item"%>
	<%@ page import="model.domain.Ator"%>
	<%@ page import="model.domain.Classe"%>
	<%@ page import="model.domain.Diretor"%>
	<%@ page import="model.domain.Distribuidor"%>
	<%@ page import="model.domain.Categoria"%>
	<%@page import="model.application.applicationTipoItem"%>
	<%@page import="model.application.applicationTitulo"%>
	<%@page import="model.application.applicationItem"%>
	<%@page import="model.application.applicationCategoria"%>
	<%@page import="model.application.applicationDistribuidor"%>
	<%@page import="model.application.applicationDiretor"%>
	<%@page import="model.application.applicationClasse"%>
	<%@page import="model.application.applicationAtor"%>
	<%@page import="java.util.Iterator"%>
<%
	List<Ator> atores = applicationAtor.getAtores();
	List<Classe> classes =  applicationClasse.getClasses();
	List<Diretor> diretores = applicationDiretor.getDiretores();
	List<Distribuidor> distribuidores = applicationDistribuidor.getDistribuidores();
	List<Categoria> categorias = applicationCategoria.getCategorias();
	List<Titulo> titulos = applicationTitulo.getTitulos();  
	List<TipoItem> tipoItens = applicationTipoItem.getTipos();
	int id = Integer.parseInt(request.getParameter("id"));
	Titulo titulo = applicationTitulo.getTitulo(id);
	//List<Ator> listAtores = new ArrayList<Ator>(titulo.getAtores());

%>

	<div class="jumbotrom">
		<div class="container">

			<h1><span class="fa fa-film"></span> Excluir Título</h1>
		
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
									<input type="hidden" name="operacao" value="excluir">
									<input type="hidden" name="id" value="${param.id}">
									<label for="nome">Nome</label>
									<input type="text" class="form-control" id="nome" name="nome" autofocus value="<%out.print(titulo.getNome());%>" readonly="readonly">	
								</div>
								
								<div class="form-group">
									<label for="sinopse">Sinopse</label>
									<textarea class="form-control" id="sinopse" name="sinopse" rows="5" placeholder="Escreva a sinopse" value="<%out.print(titulo.getSinopse());%>" readonly="readonly"></textarea>
								</div>
	
								<div class="form-group">
									<label for="diretor">Diretor</label>
									<select name="diretor" id="diretor" class="form-control" readonly="readonly">
									<%
										for(Diretor c: diretores){
											if(titulo.getDiretor().getId() == c.getId()){
			                                     out.println("<option value=\""+c.getId()+"\"selected>" + c.getNome() + "</option>");
			                            	}else{
												out.println("<option value=\""+c.getId()+"\">" + c.getNome() + "</option>");
			                            	}
										}
									%>
									</select>
								</div>
								
								<div class="form-group">
									<label for="ano">Ano</label>
									<input type="text" class="form-control" id="ano" name="ano" placeholder="aaaa" readonly="readonly" value="<%out.print(titulo.getAno());%>">
								</div>
						</fieldset>	<!--fim fieldset-->
						<fieldset class="col-sm-6 col-md-6">
							
							<div class="form-group">
								<label for="categoria">Categoria</label>
									<select name="categoria" id="categoria" class="form-control" readonly="readonly">
									<%
									for(Categoria c: categorias){
										if(titulo.getCategoria().getId() == c.getId()){
		                                     out.println("<option value=\""+c.getId()+"\"selected>" + c.getNome() + "</option>");
		                            	}else{
											out.println("<option value=\""+c.getId()+"\">" + c.getNome() + "</option>");
		                            	}
									}
									%>
									</select>
							</div>
							
							<div class="form-group">
								<label for="classe">Classe</label>
								<select name="classe" id="classe" class="form-control" readonly="readonly">
									<%
									for(Classe c: classes){
										if(titulo.getClasse().getId() == c.getId()){
		                                     out.println("<option value=\""+c.getId()+"\"selected>" + c.getNome() + "</option>");
		                            	}else{
											out.println("<option value=\""+c.getId()+"\">" + c.getNome() + "</option>");
		                            	}
									}	
									%>
								</select>
							</div>
							
							<div class="form-group">
								<label for="distribuidor">Distribuidor</label>
								<select name="distribuidor" id="distribuidor" class="form-control" readonly="readonly">
									<%
									for(Distribuidor c: distribuidores){
										if(titulo.getDistribuidor().getCnpj() == c.getCnpj()){
		                                     out.println("<option value=\""+c.getCnpj()+"\"selected>" +c.getRazaoSocial() + "</option>");
		                            	}else{
											out.println("<option value=\""+ c.getCnpj() +"\">"+ c.getRazaoSocial() +"</option>");
		                            	}
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
									<%/*
									for(Ator c: atores){																				
										out.println(
											"<tr>"
											+ 	"<td>"+ c.getNome() +"</td>"
											+ 	"<td><input type=\"checkbox\" name=\"selecao-ator\" value=\""+ c.getId() + "\"");
										for(Ator a: listAtores){
											if(c.getId() == a.getId()){
												out.println("checked");
											}
											out.println("readonly=\"readonly\"></td></tr>");
										}
											
									}
									
									for(Ator c: atores){																				
										out.println(
											"<tr>"
											+ 	"<td>"+ c.getNome() +"</td>"
											+ 	"<td><input type=\"checkbox\" name=\"selecao-ator\" value=\""+ c.getId() + "\"");
											for(Ator a: titulo.getAtores()){
												if(c.getId() == a.getId()){
													out.println("checked");
												}
													out.println("></td></tr>");
											}
									}
									 Iterator i = atores.iterator();
									
                                     while (i.hasNext()) {
                                         Ator a = (Ator) i.next();
                                         out.println(
                                         "<tr>"
	                                         + "<td>" + a.getNome() + "</td>"
                                             + "<td><input type=\"checkbox\" name=\"selecionado-ator"+ a.getId()+ "\" value=\"" + a.getId() +"\" ");
                                          for(Ator ator: titulo.getAtores()){if(ator.getId() == a.getId()){out.println("checked");}}
                                         out.print(">" + "</td>" + "</tr>");
                                     }*/
		
									%>
							</table>	
							
						</fieldset><!-- fim fieldset table -->
					</div><!--fim row-->
					<button type="submit" class="btn btn-primary btn-lg pull-left">
						<span class="fa fa-trash-o"></span>
						Excluir
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