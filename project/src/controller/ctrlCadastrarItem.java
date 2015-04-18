package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.application.applicationItem;
import model.domain.TipoItem;
import model.domain.Titulo;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

/**
 * Servlet implementation class ctrlCadastrarItem
 */
@WebServlet("/ctrlCadastrarItem")
public class ctrlCadastrarItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ctrlCadastrarItem() {
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
		
		if(operacao.equals("inscreverNovoItem")){
			
			String numero = request.getParameter("numero");
			String titulo = request.getParameter("titulo");
			String data = request.getParameter("data");
			String tipo = request.getParameter("tipo");
			
			SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
			Session s = sessions.openSession();	
			
			String qTitulo = "FROM Titulo WHERE id =" + titulo;
			String qTipo = "FROM TipoItem WHERE id =" + tipo;
		
			s.beginTransaction();
			Query qryTitulo = s.createQuery(qTitulo);
			Query qryTipo = s.createQuery(qTipo);
			
			Titulo t = (Titulo)qryTitulo.uniqueResult();
			TipoItem ti = (TipoItem)qryTipo.uniqueResult();
			
			s.close();
			
			if(applicationItem.inscreverNovoItem(Long.parseLong(numero), data, t, ti) == applicationItem.INSCREVER_NOVO_ITEM_OK){
				
			}else{
				
			}
		}
	}

}
