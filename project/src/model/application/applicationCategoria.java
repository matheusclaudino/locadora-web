package model.application;

import java.util.List;

import model.domain.Ator;
import model.domain.Categoria;
import model.domain.Diretor;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class applicationCategoria {
	public static final int INSCREVER_NOVA_CATEGORIA_OK = 1 ;
	public static final int INSCREVER_NOVA_CATEGORIA_ERRO = 0;
	
	public static int inscreverNovaCategoria(String nome){
		if(nome.equals(""))
			return INSCREVER_NOVA_CATEGORIA_ERRO;
		
		Categoria c = new Categoria(nome);
		
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessions.openSession();
		
		session.beginTransaction();
		session.save(c);
		session.getTransaction().commit();
		session.close();
		
		return INSCREVER_NOVA_CATEGORIA_OK;
	}
	
	public static List<Categoria> getCategorias(){
		List<Categoria> categorias;
		
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessions.openSession();

		String qCategorias  = "FROM Categoria";
		
		Query qryCategorias = session.createQuery(qCategorias);
		
		categorias = (List<Categoria>) qryCategorias.list();
		
		session.close();
		
		return categorias;
	}
	
	public static Categoria getCategoria(String id) {
        SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
        Session session = sessions.openSession();

        String q = "FROM Categoria WHERE id = " + id;
        
        session.beginTransaction();
        Query qry = session.createQuery(q);
        Categoria c = (Categoria)qry.uniqueResult();
        
        session.close();

        return c;
    }
	
	public static int alterar(Categoria a){
        try{
            SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
            Session session = sessions.openSession();
            
            Transaction t = session.beginTransaction();
            session.update(a);
            t.commit();
            
            session.close();
            
        } catch (Exception erro) {
            return -1;
        }
        return 0;
    }
    
    public static int excluir(Categoria a){
        try{
            SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
            Session session = sessions.openSession();
            
            Transaction t = session.beginTransaction();
            session.delete(a);
            t.commit();
            
            session.close();
            
        } catch (Exception erro) {
            return -1;
        }
        return 0;
    }
}
