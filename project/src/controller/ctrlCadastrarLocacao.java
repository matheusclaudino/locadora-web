package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.application.applicationLocacao;
import model.domain.Cliente;
import model.domain.Item;
import model.domain.Titulo;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

/**
 * Servlet implementation class ctrlCadastrarLocacao
 */
@WebServlet("/ctrlCadastrarLocacao")
public class ctrlCadastrarLocacao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ctrlCadastrarLocacao() {
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
		
		if(operacao.equals("inscreverNovaLocacao")){
			
			String numero = request.getParameter("numero");
			String titulo = request.getParameter("titulo");
			String tipo = request.getParameter("tipo-item");
			String valor = request.getParameter("valor");
			String dataLocacao = request.getParameter("data-locacao");
			String dataPrevista = request.getParameter("data-prevista");
			
			SessionFactory s = new AnnotationConfiguration().configure().buildSessionFactory();
			Session session = s.openSession();
			
			String queryCliente = "FROM Cliente WHERE numero_inscricao =" + numero;
			/*String query = "select item.id, titulo.nome, tipoitem.nome from item, titulo, tipoitem WHERE titulo.id = item.titulo_id";*/
			String queryTitulo = "FROM Titulo WHERE id =" + titulo;
			String queryItem = "FROM Item";
			
			
			session.beginTransaction();
			Query qryCliente = session.createQuery(queryCliente);
			Query qryTitulo = session.createQuery(queryTitulo);
			Query qryItem = session.createQuery(queryItem);
			
			Cliente cliente =  (Cliente) qryCliente.uniqueResult();
			Titulo t = (Titulo) qryTitulo.uniqueResult();
			List<Item> itens = qryItem.list();
			Item itemEscolhido = new Item();
			
			//pegando o item a ser locado
			for(Item item: itens){
				if((t.getId() == item.getTitulo().getId()) && (Integer.parseInt(tipo) == item.getTipoItem().getId())){
					itemEscolhido = item;
				}
			}
			
			System.out.println("ITEM: " + itemEscolhido.getTipoItem().getNome());
			
			session.close();
			
			if(applicationLocacao.inscreverNovaLocacao(dataLocacao, dataPrevista, Double.parseDouble(valor), cliente, itemEscolhido) == applicationLocacao.INSCREVER_NOVA_LOCACAO_OK){
				
			}else{
				
			}
			
		}else{
			
		}
	}

}
