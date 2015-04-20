package model.application;

import java.util.GregorianCalendar;

import model.domain.Cliente;
import model.domain.Reserva;
import model.domain.TipoItem;
import model.domain.Titulo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class applicationReserva {
	
	public static void inscreverNovaReserva(String idCliente, String idTitulo, String idTipoItem){
		GregorianCalendar calendar = new GregorianCalendar(); 
		int hora = calendar.get(calendar.HOUR_OF_DAY);
		int data = calendar.get(calendar.DATE);
		
		System.out.println("HORA: " + hora + " - " + "DATA: " + data);
		
		Cliente cli = applicationCliente.getCliente(Integer.parseInt(idCliente));
		Titulo tit = applicationTitulo.getTitulo(Integer.parseInt(idTitulo));
		TipoItem tip = applicationTipoItem.getTipoItem(Integer.parseInt(idTipoItem));

		Reserva r = new Reserva(String.valueOf(data), String.valueOf(hora), cli, tit, tip);
		
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session s = sessions.openSession();
		
		s.beginTransaction();
		s.save(r);
		s.getTransaction().commit();
		s.close();
		
	}
}
