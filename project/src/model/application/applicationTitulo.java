package model.application;

import java.util.List;
import java.util.Set;

import model.domain.Ator;
import model.domain.Categoria;
import model.domain.Classe;
import model.domain.Diretor;
import model.domain.Distribuidor;
import model.domain.Titulo;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class applicationTitulo {
	public static final int INSCREVER_NOVO_TITULO_OK = 1;
	public static final int INSCREVER_NOVO_TITULO_ERRO = 0;
	
	public static int inscreverNovoTitulo(String nome, String ano, String sinopse, Set<Ator> atores,
			Classe classe, Categoria categoria, Diretor diretor,
			Distribuidor distribuidor){
		if(nome.equals(""))
			return INSCREVER_NOVO_TITULO_ERRO;
		
		Titulo t = new Titulo(nome, ano, sinopse, atores, classe, categoria, diretor, distribuidor);
		
		for(Ator a: atores){
			System.out.println("ATOR: " + a.getNome());
		}
		
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessions.openSession();
		
		session.beginTransaction();
		session.save(t);
		session.getTransaction().commit();
		session.close();
		
		return INSCREVER_NOVO_TITULO_OK;
	}
	
	public static Titulo getTitulo(int id){
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessions.openSession();
		
		String qTitulo = "FROM Titulo WHERE id =" + id;
		
		Query qryTitulo = session.createQuery(qTitulo);
		
		Titulo ti = (Titulo) qryTitulo.uniqueResult();
		
		return ti;
	}
	
	public static List<Titulo> getTitulos(){
		List<Titulo> titulos;
		
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessions.openSession();
		
		String qTitulo = "FROM Titulo";
		
		Query qryTitulo = session.createQuery(qTitulo);
		
		titulos = (List<Titulo>) qryTitulo.list();
		
		return titulos;
	}
}
