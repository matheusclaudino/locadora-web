package model.application;

import java.util.List;

import model.domain.Categoria;
import model.domain.Diretor;
import model.domain.Item;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class applicationDiretor {
	
	public static final int INSCREVER_NOVO_DIRETOR_OK = 1 ;
	public static final int INSCREVER_NOVO_DIRETOR_ERRO = 0;
	
	public static int inscreverNovoDiretor(String nome){
		if(nome.equals(""))
			return INSCREVER_NOVO_DIRETOR_ERRO;
		
		Diretor d = new Diretor(nome);
		
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessions.openSession();
		
		session.beginTransaction();
		session.save(d);
		session.getTransaction().commit();
		session.close();
		
		return INSCREVER_NOVO_DIRETOR_OK;
	}
	
	public static List<Diretor> getDiretores(){
		List<Diretor> diretores;
		
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessions.openSession();

		String qDiretores  = "FROM Diretor";
		
		Query qryDiretores = session.createQuery(qDiretores);
		
		diretores = (List<Diretor>) qryDiretores.list();
		
		session.close();
		
		return diretores;
	}
	
	public static Diretor getDiretor(String id) {
        SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
        Session session = sessions.openSession();

        String q = "FROM Diretor WHERE id = " + id;
        
        session.beginTransaction();
        Query qry = session.createQuery(q);
        Diretor d = (Diretor)qry.uniqueResult();
        
        session.close();

        return d;
    }
}
