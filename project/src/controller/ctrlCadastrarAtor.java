package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.application.applicationAtor;
import model.domain.Ator;

/**
 * Servlet implementation class ctrlCadastrarAtor
 */
@WebServlet("/ctrlCadastrarAtor")
public class ctrlCadastrarAtor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ctrlCadastrarAtor() {
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
		
		if(operacao.equals("inscreverNovoAtor")){
			String nome = request.getParameter("nome");
			if(applicationAtor.inscreverNovoAtor(nome) == applicationAtor.INSCREVER_NOVO_ATOR_OK){
				 response.sendRedirect("view/consultarAtor.jsp?erro=0");
			}else{
                response.sendRedirect("view/consultarAtor.jsp?erro=-1");
			}
		}else if (operacao.equals("alterar")) {
			Ator a =  applicationAtor.getAtor(request.getParameter("id"));
            a.setNome(request.getParameter("nome"));

            if(applicationAtor.alterar(a) == 0){
                response.sendRedirect("view/consultarAtor.jsp?erro=0");
            }else{
                response.sendRedirect("view/consultarAtor.jsp?erro=-1");
            }

        } else if (operacao.equals("excluir")) {
            Ator a =  applicationAtor.getAtor(request.getParameter("id"));

            if(applicationAtor.excluir(a) == 0){
                response.sendRedirect("view/consultarAtor.jsp?erro=0");
            }else{
                response.sendRedirect("view/consultarAtor.jsp?erro=-1");
            }
        }
		
	}

}
