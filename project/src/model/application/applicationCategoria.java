package model.application;

import model.domain.Categoria;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
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
}
