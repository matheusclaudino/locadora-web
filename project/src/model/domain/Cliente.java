package model.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Cliente {
	
	@Id
	@GeneratedValue
	private int numero_inscricao;
	@Column(nullable = false)
	private String nome;
	private String data_nascimento;
	private char sexo;
	private Boolean ativo;
	
	public Cliente() {
		super();
	}
	
	
	
	public Cliente(String nome, String data_nascimento,
			char sexo, Boolean ativo) {
		super();
		this.nome = nome;
		this.data_nascimento = data_nascimento;
		this.sexo = sexo;
		this.ativo = ativo;
	}



	public int getNumero_inscricao() {
		return numero_inscricao;
	}
	public void setNumero_inscricao(int numero_inscricao) {
		this.numero_inscricao = numero_inscricao;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getData_nascimento() {
		return data_nascimento;
	}
	public void setData_nascimento(String data_nascimento) {
		this.data_nascimento = data_nascimento;
	}
	public char getSexo() {
		return sexo;
	}
	public void setSexo(char sexo) {
		this.sexo = sexo;
	}
	public Boolean getAtivo() {
		return ativo;
	}
	public void setAtivo(Boolean ativo) {
		this.ativo = ativo;
	}
	
	
	

}
