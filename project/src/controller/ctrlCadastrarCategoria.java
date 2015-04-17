package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.application.applicationCategoria;
import model.application.applicationDiretor;

/**
 * Servlet implementation class ctrlCadastrarCategoria
 */
@WebServlet("/ctrlCadastrarCategoria")
public class ctrlCadastrarCategoria extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ctrlCadastrarCategoria() {
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
		
		if(operacao.equals("inscreverNovaCategoria")){
			String nome = request.getParameter("nome");
			
			if(applicationCategoria.inscreverNovaCategoria(nome) ==  applicationCategoria.INSCREVER_NOVA_CATEGORIA_OK){
				
			}else{
				
			}
		}else{
			
		}
		
	}

}
