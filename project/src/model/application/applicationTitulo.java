package model.application;

import java.util.Set;

import model.domain.Ator;
import model.domain.Categoria;
import model.domain.Classe;
import model.domain.Diretor;
import model.domain.Distribuidor;
import model.domain.Titulo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class applicationTitulo {
	private static final int INSCREVER_NOVO_TITULO_OK = 1;
	private static final int INSCREVER_NOVO_TITULO_ERRO = 0;
	
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
}
