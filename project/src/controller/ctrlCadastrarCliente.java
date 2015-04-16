package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

import model.application.applicationCliente;
import model.domain.Socio;

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
		
			if(applicationCliente.inscreverNovoSocio(nome, endereco, telefone, sexo, cpf, data) == applicationCliente.INSCREVER_NOVO_SOCIO_OK){
				String redirectUrl = "http://localhost:8080/LocadoraProject/index.jsp";
				response.sendRedirect(redirectUrl);
			}else{
				
			}
		
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
			String idSocio = request.getParameter("idSocio");
			String nome = request.getParameter("nome");
			char sexo = request.getParameter("sexo").charAt(0);
			String data = request.getParameter("data");
			
			SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
			Session session = sessions.openSession();
			
			String strQuery = "from Cliente where numero_inscricao = " +  idSocio;
			session.beginTransaction();
			Query qr = session.createQuery(strQuery);
			List clientes = qr.list();
			session.close();
			
			Socio socio = (Socio)clientes.get(0);
			
			if(applicationCliente.inscreverNovoDependente(socio, nome, sexo, data) == applicationCliente.INSCREVER_NOVO_DEPENDENTE_OK){
				
			}else{
				
			}
		}
		
		
	}

}
