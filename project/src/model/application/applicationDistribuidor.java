package model.application;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

import model.domain.Distribuidor;

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
		
		return INSCREVER_NOVO_DISTRIBUIDOR_OK;
	}
}
