package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation;

import model.application.applicationClasse;
import model.application.applicationDistribuidor;
import model.domain.Classe;
import model.domain.Distribuidor;

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
		PrintWriter out = response.getWriter();
		
		if(operacao.equals("inscreverNovoDistribuidor")){
			
			String cnpj = request.getParameter("cnpj");
			String razao = request.getParameter("razao");
			String redirectUrl;
			
			if(applicationDistribuidor.inscreverNovoDistribuidor(Long.parseLong(cnpj), razao) == applicationDistribuidor.INSCREVER_NOVO_DISTRIBUIDOR_OK){
				response.sendRedirect("view/consultarDistribuidor.jsp?erro=0");
		    }else{
		    	response.sendRedirect("view/consultarDistribuidor.jsp?erro=-1");
		    }
			
		}else if(operacao.equals("alterar")){

			Distribuidor d =  applicationDistribuidor.getCnpj(request.getParameter("cnpj"));
			
            d.setCnpj(Integer.parseInt(request.getParameter("cnpj")));
            d.setRazaoSocial(request.getParameter("razao"));
            
            if(applicationDistribuidor.alterar(d) == 0){
                response.sendRedirect("view/consultarDistribuidor.jsp?erro=0");
            }else{
                response.sendRedirect("view/consultarDistribuidor.jsp?erro=-1");
            }
		}else if(operacao.equals("excluir")){

			Distribuidor d =  applicationDistribuidor.getCnpj(request.getParameter("cnpj"));

			if(applicationDistribuidor.excluir(d) == 0){
	                response.sendRedirect("view/consultarDistribuidor.jsp?erro=0");
	            }else{
	                response.sendRedirect("view/consultarDistribuidor.jsp?erro=-1");
	            }
			
		}
	}

}
