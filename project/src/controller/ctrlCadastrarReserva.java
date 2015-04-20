package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.application.applicationReserva;
import model.domain.Cliente;
import model.domain.TipoItem;
import model.domain.Titulo;

/**
 * Servlet implementation class ctrlCadastrarReserva
 */
@WebServlet("/ctrlCadastrarReserva")
public class ctrlCadastrarReserva extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ctrlCadastrarReserva() {
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
		
		if(operacao.equals("inscreverNovaReserva")){
			
			String cliente = request.getParameter("cliente");
			String titulo = request.getParameter("titulo");
			String tipoItem = request.getParameter("tipo");
			
			applicationReserva.inscreverNovaReserva(cliente, titulo, tipoItem);
			
		}
	}

}
