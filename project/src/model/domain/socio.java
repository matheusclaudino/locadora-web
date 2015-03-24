package model.domain;

import javax.persistence.Column;
import javax.persistence.Entity;

@Entity
public class socio extends cliente {
	
	@Column(nullable = false)
	private String cpf;
	private String endereco;
	private String telefone;
	
	public socio() {
		super();
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
