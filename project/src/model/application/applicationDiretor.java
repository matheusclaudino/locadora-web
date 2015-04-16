package model.application;

import model.domain.Diretor;

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
}
