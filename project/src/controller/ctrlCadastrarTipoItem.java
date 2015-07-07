package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.application.applicationTipoItem;
import model.domain.TipoItem;

/**
 * Servlet implementation class ctrlCadastrarTipoItem
 */
@WebServlet("/ctrlCadastrarTipoItem")
public class ctrlCadastrarTipoItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ctrlCadastrarTipoItem() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String operacao = request.getParameter("operacao");
		
		if(operacao.equals("inscreverNovoTipoItem")){
			String nome = request.getParameter("nome");
			
			if(applicationTipoItem.inscreverNovoTipoItem(nome) == applicationTipoItem.INSCREVER_NOVO_TIPO_ITEM_OK){
				
				response.sendRedirect("view/consultarTipoItem.jsp?erro=0");
            }else{
                response.sendRedirect("view/consultarTipoItem.jsp?erro=-1");
            }
		}else if (operacao.equals("alterar")) {
			TipoItem c =  applicationTipoItem.getTipoItem(Integer.parseInt(request.getParameter("id")));
            c.setNome(request.getParameter("nome"));

            if(applicationTipoItem.alterar(c) == 0){
                response.sendRedirect("view/consultarTipoItem.jsp?erro=0");
            }else{
                response.sendRedirect("view/consultarTipoItem.jsp?erro=-1");
            }

        } else if (operacao.equals("excluir")) {
        	TipoItem c =  applicationTipoItem.getTipoItem(Integer.parseInt(request.getParameter("id")));

            if(applicationTipoItem.excluir(c) == 0){
                response.sendRedirect("view/consultarTipoItem.jsp?erro=0");
            }else{
                response.sendRedirect("view/consultarTipoItem.jsp?erro=-1");
            }
        }
		
	}

}
