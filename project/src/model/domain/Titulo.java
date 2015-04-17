package model.domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

@Entity
public class Titulo {
	@Id
    @GeneratedValue
	private long id;
	@Column(nullable = false)
	private String nome;
	private String ano;
	private String sinopse;

	@ManyToMany(cascade = CascadeType.ALL)
	private Set<Ator> atores = new HashSet<Ator>();
	@ManyToOne
	private Classe classe;
	@ManyToOne
	private Categoria categoria;
	@ManyToOne
	private Diretor diretor;
	@ManyToOne
	private Distribuidor distribuidor;
	
	
	public Titulo(){
				
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

	public String getAno() {
		return ano;
	}

	public void setAno(String ano) {
		this.ano = ano;
	}

	public String getSinopse() {
		return sinopse;
	}

	public void setSinopse(String sinopse) {
		this.sinopse = sinopse;
	}

	public Set<Ator> getAtores() {
		return atores;
	}

	public void setAtores(Set<Ator> atores) {
		this.atores = atores;
	}

	public Classe getClasse() {
		return classe;
	}

	public void setClasse(Classe classe) {
		this.classe = classe;
	}
	
	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

	public Diretor getDiretor() {
		return diretor;
	}

	public void setDiretor(Diretor diretor) {
		this.diretor = diretor;
	}

	public Distribuidor getDistribuidor() {
		return distribuidor;
	}

	public void setDistribuidor(Distribuidor distribuidor) {
		this.distribuidor = distribuidor;
	}

	
}

