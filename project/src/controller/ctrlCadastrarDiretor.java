package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.application.applicationDiretor;

/**
 * Servlet implementation class ctrlCadastrarDiretor
 */
@WebServlet("/ctrlCadastrarDiretor")
public class ctrlCadastrarDiretor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ctrlCadastrarDiretor() {
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
		
		if(operacao.equals("inscreverNovoDiretor")){
			String nome = request.getParameter("nome");
			
			if(applicationDiretor.inscreverNovoDiretor(nome) ==  applicationDiretor.INSCREVER_NOVO_DIRETOR_OK){
				
			}else{
				
			}
		}else{
			
		}
	}

}
