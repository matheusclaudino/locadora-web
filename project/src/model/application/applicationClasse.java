package model.application;

import java.util.List;

import model.domain.Ator;
import model.domain.Classe;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class applicationClasse {

	public static final int INSCREVER_NOVA_CLASSE_OK = 1;
	public static final int INSCREVER_NOVA_CLASSE_ERRO = 0;
	
	public static int inscreverNovaClasse(String nome, double valor, int prazo){
		if(nome.equals(""))
			return INSCREVER_NOVA_CLASSE_ERRO;
		
		Classe c = new Classe(nome, valor, prazo);
		
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessions.openSession();
		
		session.beginTransaction();
		session.save(c);
		session.getTransaction().commit();
		session.close();
		
		return INSCREVER_NOVA_CLASSE_OK;
	}
	
	public static List<Classe> getClasses(){
		List<Classe> classes;
		
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessions.openSession();

		String qClasses  = "FROM Classe";
		
		Query qryClasses = session.createQuery(qClasses);
		
		classes = (List<Classe>) qryClasses.list();
		
		session.close();
		
		return classes;
	}
}
