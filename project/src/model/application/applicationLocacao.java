package model.application;

import model.domain.Cliente;
import model.domain.Item;
import model.domain.Locacao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class applicationLocacao {
	public static final int INSCREVER_NOVA_LOCACAO_OK = 1;
	public static final int INSCREVER_NOVA_LOCACAO_ERRO = 0;
	
	public static int inscreverNovaLocacao(String dataLocacao, String dataDevolucaoPrevista, double valorCobrado,
			Cliente cliente, Item item){
		
		Locacao l = new Locacao(dataLocacao, dataDevolucaoPrevista, valorCobrado, cliente, item);
		
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session s = sessions.openSession();
		
		s.beginTransaction();
		s.save(l);
		s.getTransaction().commit();
		s.close();
		
		return INSCREVER_NOVA_LOCACAO_OK;
	}
}
