package model.application;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

import model.domain.Dependente;
import model.domain.Socio;

public class applicationCliente {
	
	public static final int INSCREVER_NOVO_SOCIO_OK = 1;
	public static final int INSCREVER_NOVO_SOCIO_ERRO = 0;
	public static final int INSCREVER_NOVO_DEPENDENTE_OK = 1;
	public static final int INSCREVER_NOVO_DEPENDENTE_ERRO = 0;
	
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
	
	public static int inscreverNovoDependente(Socio socio, String nome, char sexo, String data){
		if(nome.equals(""))
			return INSCREVER_NOVO_DEPENDENTE_ERRO;
		
		Dependente d = new Dependente();
		d.setNome(nome);
		d.setSexo(sexo);
		d.setData_nascimento(data);
		d.setAtivo(true);
				
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessions.openSession();
				
		session.beginTransaction();
		session.save(d);
		socio.inserirDependente(d);
		session.update(socio);
		session.getTransaction().commit();
		session.close();
		
		return INSCREVER_NOVO_DEPENDENTE_OK;
	}

}
