package model.domain;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class Socio extends Cliente {
	
	@Column(nullable = false)
	private String cpf;
	private String endereco;
	private String telefone;
	
	public Socio() {
		super();
	}
	
	
	
	public Socio(String nome, String data_nascimento,
			char sexo, Boolean ativo, String cpf, String endereco, String telefone) {
		super(nome, data_nascimento, sexo, ativo);
		this.cpf = cpf;
		this.endereco = endereco;
		this.telefone = telefone;
	}



	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	
	
}
