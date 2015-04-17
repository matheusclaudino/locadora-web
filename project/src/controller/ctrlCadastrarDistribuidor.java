package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.application.applicationDistribuidor;

/**
 * Servlet implementation class ctrlCadastrarDistribuidor
 */
@WebServlet("/ctrlCadastrarDistribuidor")
public class ctrlCadastrarDistribuidor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ctrlCadastrarDistribuidor() {
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
		
		if(operacao.equals("inscreverNovoDistribuidor")){
			
			String cnpj = request.getParameter("cnpj");
			String razao = request.getParameter("razao");
			
			if(applicationDistribuidor.inscreverNovoDistribuidor(Long.parseLong(cnpj), razao) == applicationDistribuidor.INSCREVER_NOVO_DISTRIBUIDOR_OK){
				
			}else{
				
			}
		}else{
			
		}
	}

}
