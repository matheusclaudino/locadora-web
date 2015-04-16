package model.domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Ator {
	@Id
    @GeneratedValue
	private long id;
	@Column(nullable = false)
	private String nome;
	@ManyToMany(cascade = CascadeType.ALL, 
				mappedBy="atores"
	)
	private Set<Titulo> titulos = new HashSet<Titulo>();
	
	public Ator(){
		
	}

	public Ator(String nome) {
		super();
		this.nome = nome;
	}	

	public Ator(String nome, Set<Titulo> titulos) {
		super();
		this.nome = nome;
		this.titulos = titulos;
	}


	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
}
