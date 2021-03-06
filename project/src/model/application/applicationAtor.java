package model.application;

import java.util.List;

import model.domain.Ator;
import model.domain.Cliente;
import model.domain.Item;
import model.domain.Socio;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class applicationAtor {
	
	public static final int INSCREVER_NOVO_ATOR_OK = 1;
	public static final int INSCREVER_NOVO_ATOR_ERRO = 0;
	
	public static int inscreverNovoAtor(String nome){
		if(nome.equals(""))
			return INSCREVER_NOVO_ATOR_ERRO;
		
		Ator a =  new Ator(nome);
		
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessions.openSession();
				
		session.beginTransaction();
		session.save(a);
		session.getTransaction().commit();
		session.close();
		
		
		return INSCREVER_NOVO_ATOR_OK;
	}
	
	public static List<Ator> getAtores(){
		List<Ator> atores;
		
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessions.openSession();

		String qAtores  = "FROM Ator";
		
		Query qryAtores = session.createQuery(qAtores);
		
		atores = (List<Ator>) qryAtores.list();
		
		session.close();
		
		return atores;
	}

	public static Ator getAtor(String id) {
        SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
        Session session = sessions.openSession();

        String q = "FROM Ator WHERE id = " + id;
        
        session.beginTransaction();
        Query qry = session.createQuery(q);
        Ator a = (Ator)qry.uniqueResult();
        
        session.close();

        return a;
    }
	
	public static int alterar(Ator a){
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
    
    public static int excluir(Ator a){
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
