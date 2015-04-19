package model.domain;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

@Entity
public class Locacao {
	
	private long id;
	private String dataLocacao;
	private String dataDevolucaoPrevista;
	private String dataDevolucao;
	private double valorCobrado;
	private double multaCobrada;
	
	@ManyToOne
	private Cliente cliente;
	@ManyToOne
	private Item item;
	
	
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public String getDataLocacao() {
		return dataLocacao;
	}
	
	public void setDataLocacao(String dataLocacao) {
		this.dataLocacao = dataLocacao;
	}
	
	public String getDataDevolucaoPrevista() {
		return dataDevolucaoPrevista;
	}
	
	public void setDataDevolucaoPrevista(String dataDevolucaoPrevista) {
		this.dataDevolucaoPrevista = dataDevolucaoPrevista;
	}
	
	public String getDataDevolucao() {
		return dataDevolucao;
	}
	
	public void setDataDevolucao(String dataDevolucao) {
		this.dataDevolucao = dataDevolucao;
	}
	
	public double getValorCobrado() {
		return valorCobrado;
	}
	
	public void setValorCobrado(double valorCobrado) {
		this.valorCobrado = valorCobrado;
	}
	
	public double getMultaCobrada() {
		return multaCobrada;
	}
	
	public void setMultaCobrada(double multaCobrada) {
		this.multaCobrada = multaCobrada;
	}
	
	public Cliente getCliente() {
		return cliente;
	}
	
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	
	public Item getItem() {
		return item;
	}
	
	public void setItem(Item item) {
		this.item = item;
	}

	
}
