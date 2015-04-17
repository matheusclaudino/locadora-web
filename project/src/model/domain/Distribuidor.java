package model.domain;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Distribuidor {
	
	@Id
	private long cnpj;
	private String razaoSocial;
	
	
	public Distribuidor() {
		super();
	}

	
	public Distribuidor(long cnpj, String razaoSocial) {
		super();
		this.cnpj = cnpj;
		this.razaoSocial = razaoSocial;
	}

	
	public long getCnpj() {
		return cnpj;
	}


	public void setCnpj(long cnpj) {
		this.cnpj = cnpj;
	}


	public String getRazaoSocial() {
		return razaoSocial;
	}


	public void setRazaoSocial(String razaoSocial) {
		this.razaoSocial = razaoSocial;
	}

	
	
	

}
