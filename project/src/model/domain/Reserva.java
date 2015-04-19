package model.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Reserva {

	@Id
	@GeneratedValue
	private long id;
	
	@ManyToOne
	private Cliente cliente;
	@ManyToOne
	private Titulo titulo;
	@ManyToOne
	private TipoItem tipoItem;
	
	
}
