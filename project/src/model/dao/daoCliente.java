package model.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

import model.domain.Socio;

public class daoCliente {
	
	public static final int INSCREVER_NOVO_SOCIO_OK = 1;
	public static final int INSCREVER_NOVO_SOCIO_ERRO = 0;
	
	public static int inscreverNovoSocio(String nome, String endereco, String telefone, char sexo, String cpf, String data){
		
		if(nome.equals("") || cpf.equals(""))
			return INSCREVER_NOVO_SOCIO_ERRO;
		
		Socio s =  new Socio( nome,  data,
				 sexo,  true,  cpf,  endereco,  telefone);
		
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessions.openSession();
				
		session.beginTransaction();
		session.save(s);
		session.getTransaction().commit();
		session.close();
		
		return INSCREVER_NOVO_SOCIO_OK;
	}
	
	public static int inscreverNovoDependente(String nome, char sexo, String data){
		if(nome.equals(""))
			return INSCREVER_NOVO_SOCIO_ERRO;
		
		
		return INSCREVER_NOVO_SOCIO_OK;
	}

}
