package model.application;

import java.util.List;

import model.domain.Classe;
import model.domain.Distribuidor;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class applicationDistribuidor {
	
	public static final int INSCREVER_NOVO_DISTRIBUIDOR_OK = 1;
	public static final int INSCREVER_NOVO_DISTRIBUIDOR_ERRO = 0;
	
	public static int inscreverNovoDistribuidor(long cnpj, String razao){
		if(razao.equals(""))
			return INSCREVER_NOVO_DISTRIBUIDOR_ERRO;
		
		Distribuidor d = new Distribuidor(cnpj, razao);
		
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessions.openSession();
		
		session.beginTransaction();
		session.save(d);
		session.getTransaction().commit();
		session.close();
		System.out.println("CADASTROU!");
		return INSCREVER_NOVO_DISTRIBUIDOR_OK;
	}
	
	public static List<Distribuidor> getDistribuidores(){
		List<Distribuidor> distribuidores;
		
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessions.openSession();

		String qDistribuidores  = "FROM Distribuidor";
		
		Query qryDistribuidores = session.createQuery(qDistribuidores);
		
		distribuidores = (List<Distribuidor>) qryDistribuidores.list();
		
		
		return distribuidores;
	}
	public static Distribuidor getCnpj(String cnpj){
	    SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
	    Session session = sessions.openSession();

	    String q = "FROM Distribuidor WHERE cnpj = " + cnpj;
	    
	    session.beginTransaction();
	    
	    Query qry = session.createQuery(q);
	    Distribuidor d = (Distribuidor) qry.uniqueResult();
	    
	    session.close();


	    return d;
	}
	public static int alterar(Distribuidor d){
        try{
            SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
            Session session = sessions.openSession();
            
            Transaction t = session.beginTransaction();
            session.update(d);
            t.commit();
            
            session.close();

        } catch (Exception erro) {
            return -1;
        }
        return 0;
    }
	
	public static int excluir(Distribuidor d){
        try{
            SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
            Session session = sessions.openSession();
            
            Transaction t = session.beginTransaction();
            session.delete(d);
            t.commit();
            
            session.close();
            
        } catch (Exception erro) {
            return -1;
        }
        return 0;
    }
}
