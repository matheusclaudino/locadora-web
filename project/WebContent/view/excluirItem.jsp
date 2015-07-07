<%@page import="model.application.applicationTipoItem"%>
<%@page import="model.application.applicationTitulo"%>
<%@page import="model.application.applicationItem"%>
<%@include file="import/head.jsp" %>
	
<%@ include file="import/navbar.jsp"%>

	<%@page import="org.hibernate.cfg.AnnotationConfiguration"%>
	<%@page import="org.hibernate.SessionFactory"%>
	<%@page import="org.hibernate.Session"%>
	<%@page import="org.hibernate.Query"%>
	<%@ page import="java.util.List"%>
	<%@ page import="model.domain.Titulo"%>
	<%@ page import="model.domain.TipoItem"%>
	<%@ page import="model.domain.Item"%>
<%
	List<Titulo> titulos = applicationTitulo.getTitulos();  
	List<TipoItem> tipoItens = applicationTipoItem.getTipos();
	Item i = applicationItem.getItem(request.getParameter("id"));
%>

	<div class="jumbotrom">
		<div class="container">

			<h1><span class="fa fa-video-camera"></span> Excluir Item</h1>
		
		</div>
	</div><!--fim jumbotrom-->
	
	<div class="container">
				<form action="../ctrlCadastrarItem" method="POST">
					<div class="row">
						<fieldset class="col-md-6">
							<legend>Dados item</legend>

							<div class="form-group">
								<input type="hidden" name="operacao" value="excluir">
								<input type="hidden" name="id" value="${param.id}">
								<label for="numero">Número série</label>
								<input type="text" class="form-control" id="numero" name="numero" value="${param.numero}" autofocus readonly="readonly">	
							</div>

							<div class="form-group">
								<label for="titulo">Título</label>
								<select name="titulo" id="titulo" class="form-control" readonly="readonly">
									<%				                                 
				                        //Percorrendo os titulos
										for(Titulo t: titulos){
											if(i.getTitulo().getId() == t.getId()){
				                                     out.println("<option value=\""+t.getId()+"\"selected>" + t.getNome() + "</option>");
				                            }else{
												out.println("<option value=\""+t.getId()+"\">" + t.getNome() + "</option>");
				                            }
										}
									 %>
								</select>
							</div>
							<div class="form-group">
								<label for="data">Data de aquisição</label>
								<input type="date" class="form-control" id="data" name="data" value="${param.data}" placeholder="dd/mm/aaaa" readonly="readonly">
							</div>
							
							<div class="form-group">
								<label for="tipo">Tipo item</label>
								<select name="tipo" id="tipo" class="form-control" readonly="readonly">
									<%
										//Percorrendo os tipo de itens
										for(TipoItem t: tipoItens){
											if(i.getTipoItem().getId() == t.getId()){
			                                     out.println("<option value=\""+t.getId()+"\"selected>" + t.getNome() + "</option>");
			                            	}else{
												out.println("<option value=\""+t.getId()+"\">" + t.getNome() + "</option>");
			                            	}
										}
									 %>
								</select>
							</div>
							
						</fieldset>	<!--fim fieldset-->
					</div><!--fim row-->
					<button type="submit" class="btn btn-primary btn-lg pull-left">
						<span class="fa fa-trash-o"></span>
						Excluir
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