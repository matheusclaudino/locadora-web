package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.application.applicationCliente;

/**
 * Servlet implementation class ctrlCadastrarCliente
 */
@WebServlet("/ctrlCadastrarCliente")
public class ctrlCadastrarCliente extends HttpServlet {
	private static final long serialVersionUID = 8542024816932636910L;

	/**
     * @see HttpServlet#HttpServlet()
     */
    public ctrlCadastrarCliente() {
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
		
		String operacao =  request.getParameter("operacao");
		PrintWriter out = response.getWriter();
		
		if(operacao.equals("inscreverNovoSocio")){
			String nome = request.getParameter("nome");
			String endereco = request.getParameter("endereco");
			String telefone = request.getParameter("telefone");
			char sexo = request.getParameter("sexo").charAt(0);
			String cpf = request.getParameter("cpf");
			String data = request.getParameter("data-nascimento");
		
			applicationCliente.inscreverNovoSocio(nome, endereco, telefone, sexo, cpf, data);
		
		/*out.println("<html>"
					+ "<head>Cadastrar Cliente</head>"
					+ "<body>"
						+ "Nome: " + nome
						+ "Endereço: " + endereco
						+ "Telefone: " + telefone
						+ "Sexo: " + sexo
						+ "CPF: " + cpf
						+ "Data: " + data
					+ "</body>"
				+ "</html>");*/
		}
		else if(operacao.equals("inscreverNovoDependente")){
			String nome = request.getParameter("nome");
			char sexo = request.getParameter("sexo").charAt(0);
			String data = request.getParameter("data");
			
			out.println("<html>"
					+ "<head>Cadastrar Cliente</head>"
					+ "<body>"
						+ "Nome: " + nome
						+ "Sexo: " + sexo
						+ "Data: " + data
					+ "</body>"
				+ "</html>");
		}
		
		
	}

}
