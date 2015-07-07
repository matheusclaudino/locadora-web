package model.application;

import java.util.List;

import model.domain.Distribuidor;
import model.domain.Item;
import model.domain.TipoItem;
import model.domain.Titulo;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
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
	
	public static List<Item> getItens(){
		List<Item> itens;
		
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessions.openSession();

		String qItens  = "FROM Item";
		
		Query qry = session.createQuery(qItens);
		
		itens = (List<Item>) qry.list();
		
		
		return itens;
	}
	
	public static Item getItem(String id) {
        SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
        Session session = sessions.openSession();

        String q = "FROM Item WHERE id = " + id;
        
        session.beginTransaction();
        Query qry = session.createQuery(q);
        Item i = (Item)qry.uniqueResult();
        
        session.close();

        return i;
    }
    
    public static int alterar(Item i){
        try{
            SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
            Session session = sessions.openSession();
            
            Transaction t = session.beginTransaction();
            session.update(i);
            t.commit();
            
            session.close();
            
        } catch (Exception erro) {
            return -1;
        }
        return 0;
    }
    
    public static int excluir(Item i){
        try{
            SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
            Session session = sessions.openSession();
            
            Transaction t = session.beginTransaction();
            session.delete(i);
            t.commit();
            
            session.close();
            
        } catch (Exception erro) {
            return -1;
        }
        return 0;
    }
}
