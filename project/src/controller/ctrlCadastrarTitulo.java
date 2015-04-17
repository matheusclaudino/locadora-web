package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.domain.Ator;
import model.domain.Classe;
import model.domain.Diretor;
import model.domain.Distribuidor;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

/**
 * Servlet implementation class ctrlCadastrarTitulo
 */
@WebServlet("/ctrlCadastrarTitulo")
public class ctrlCadastrarTitulo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ctrlCadastrarTitulo() {
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
		
		if(operacao.equals("inscreverNovoTitulo")){
			
			String nome = request.getParameter("nome");
			String sinopse = request.getParameter("sinopse");
			String diretor = request.getParameter("diretor");
			String ano = request.getParameter("ano");
			String categoria = request.getParameter("categoria");
			String classe = request.getParameter("classe");
			String distribuidor = request.getParameter("distribuidor");
			String atores[] = request.getParameterValues("selecao-ator");
			ArrayList<Ator> ator= new ArrayList();
			
			SessionFactory  sessions = new AnnotationConfiguration().configure().buildSessionFactory();
			//Pegando todos os atores selecionados no checkbox no banco
				for(String s: atores){
					Session session = sessions.openSession();
					int id = Integer.parseInt(s.toString());
					
					String strQuery = "FROM Ator WHERE id = " + id;
					session.beginTransaction();
					Query qr = session.createQuery(strQuery);
					Ator a = (Ator)qr.uniqueResult();
					
					ator.add(a);
					session.close();
				}
			
			SessionFactory s = new AnnotationConfiguration().configure().buildSessionFactory();
			Session session = s.openSession();
			
			String queryClasse = "from Classe WHERE id =" + classe;
			String queryDiretor = "FROM Diretor WHERE id = " +  diretor;
			String queryDistribuidor = "from Distribuidor WHERE cnpj = " + distribuidor;
			
			session.beginTransaction();
			Query qryClasse = session.createQuery(queryClasse);
			Query qryDiretor = session.createQuery(queryDiretor);
			Query qryDistribuidor = session.createQuery(queryDistribuidor);

			Classe cla =  (Classe) qryClasse.uniqueResult();
			Diretor dir = (Diretor) qryDiretor.uniqueResult();
			Distribuidor dis = (Distribuidor) qryDistribuidor.uniqueResult();
			
			session.close();
			
			
			
		}else{
			
		}
	}

}
