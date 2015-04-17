package model.application;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

import model.domain.Classe;

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
}
