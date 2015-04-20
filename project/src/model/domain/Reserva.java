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
	private String data;
	private String hora;
	
	@ManyToOne
	private Cliente cliente;
	@ManyToOne
	private Titulo titulo;
	@ManyToOne
	private TipoItem tipoItem;
	
	
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public String getData() {
		return data;
	}
	
	public void setData(String data) {
		this.data = data;
	}
	
	public String getHora() {
		return hora;
	}
	
	public void setHora(String hora) {
		this.hora = hora;
	}
	
	public Cliente getCliente() {
		return cliente;
	}
	
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	
	public Titulo getTitulo() {
		return titulo;
	}
	
	public void setTitulo(Titulo titulo) {
		this.titulo = titulo;
	}
	
	public TipoItem getTipoItem() {
		return tipoItem;
	}
	
	public void setTipoItem(TipoItem tipoItem) {
		this.tipoItem = tipoItem;
	}
	
	
	
	
	
	
}
