package model.application;

import model.domain.Ator;
import model.domain.Socio;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
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

}
