package model.application;

import model.domain.Item;
import model.domain.TipoItem;
import model.domain.Titulo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class applicationItem {
	public static final int INSCREVER_NOVO_ITEM_OK = 1;
	public static final int INSCREVER_NOVO_ITEM_ERRO = 0;
	
	public static int inscreverNovoItem(long numeroSerie, String data, Titulo titulo, TipoItem tipoItem){
		if(numeroSerie == 0)
			return INSCREVER_NOVO_ITEM_ERRO;
		
		Item i = new Item(numeroSerie, data, titulo, tipoItem);
		
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session s = sessions.openSession();
		
		s.beginTransaction();
		s.save(i);
		s.getTransaction().commit();
		s.close();
		
		return INSCREVER_NOVO_ITEM_OK;
	}
}
