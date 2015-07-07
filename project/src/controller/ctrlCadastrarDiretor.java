package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.application.applicationDiretor;
import model.domain.Diretor;

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
			    response.sendRedirect("view/consultarDiretor.jsp?erro=0");
            }else{
                response.sendRedirect("view/consultarDiretor.jsp?erro=-1");
            }
		}else if (operacao.equals("alterar")) {
			Diretor a =  applicationDiretor.getDiretor(request.getParameter("id"));
            a.setNome(request.getParameter("nome"));

            if(applicationDiretor.alterar(a) == 0){
                response.sendRedirect("view/consultarDiretor.jsp?erro=0");
            }else{
                response.sendRedirect("view/consultarDiretor.jsp?erro=-1");
            }

        } else if (operacao.equals("excluir")) {
            Diretor a =  applicationDiretor.getDiretor(request.getParameter("id"));

            if(applicationDiretor.excluir(a) == 0){
                response.sendRedirect("view/consultarDiretor.jsp?erro=0");
            }else{
                response.sendRedirect("view/consultarDiretor.jsp?erro=-1");
            }
        }
		
	}

}
