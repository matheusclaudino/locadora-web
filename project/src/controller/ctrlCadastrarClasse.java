package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.application.applicationClasse;

/**
 * Servlet implementation class ctrlCadastrarClasse
 */
@WebServlet("/ctrlCadastrarClasse")
public class ctrlCadastrarClasse extends HttpServlet {
	private static final long serialVersionUID = 7358451081807740262L;

	/**
     * @see HttpServlet#HttpServlet()
     */
    public ctrlCadastrarClasse() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		PrintWriter out = response.getWriter();
		String operacao = request.getParameter("operacao");
		
		if(operacao.equals("inscreverNovaClasse")){
			String nome = request.getParameter("nome");
			String valor = request.getParameter("valor-locacao");
			String prazo = request.getParameter("prazo");
			
			if(applicationClasse.inscreverNovaClasse(nome, Double.parseDouble(valor), Integer.parseInt(prazo)) == applicationClasse.INSCREVER_NOVA_CLASSE_OK){
				
			}else{
				
			}
			
			
		}
	}

}
