package model.application;

import model.domain.TipoItem;
import model.domain.Titulo;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class applicationTipoItem {
	public static final int INSCREVER_NOVO_TIPO_ITEM_OK = 1;
	public static final int INSCREVER_NOVO_TIPO_ITEM_ERRO = 0;
	
	public static int inscreverNovoTipoItem(String nome){
		if(nome.equals(""))
			return INSCREVER_NOVO_TIPO_ITEM_ERRO;
		
		TipoItem t = new TipoItem(nome);
		
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session s = sessions.openSession();
		
		s.beginTransaction();
		s.save(t);
		s.getTransaction().commit();
		s.close();
		
		return INSCREVER_NOVO_TIPO_ITEM_OK;
	}
	
	public static TipoItem getTipoItem(int id){
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessions.openSession();
		
		String qTipoItem = "FROM TipoItem WHERE id =" + id;
		
		Query qryTipoItem = session.createQuery(qTipoItem);
		
		TipoItem tip = (TipoItem) qryTipoItem.uniqueResult();
		
		return tip;
	}
}
