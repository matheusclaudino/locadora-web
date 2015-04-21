package model.application;

import java.util.List;

import model.domain.Cliente;
import model.domain.Dependente;
import model.domain.Socio;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

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
	
	public static Cliente getCliente(int id){
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessions.openSession();
		
		String qCliente = "FROM Cliente WHERE numero_inscricao =" + id;
		
		Query qryCliente = session.createQuery(qCliente);
		
		Cliente cli = (Cliente) qryCliente.uniqueResult();
		
		session.close();
		
		return cli;
	}
	
	public static List<Socio> getSocios(){
		List<Socio> socios;
		
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sessions.openSession();
		
		String qSocios = "FROM Cliente WHERE DTYPE = Socio";
		
		Query qrySocios = session.createQuery(qSocios);
		
		socios = (List<Socio>) qrySocios.list();
		
		session.close();
		
		return socios;
	}
}
