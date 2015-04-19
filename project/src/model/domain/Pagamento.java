package model.domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Pagamento {
	@Id
	@GeneratedValue
	private long id;
	private String data;
	private double valor;
	
	@ManyToMany(cascade = CascadeType.ALL)
	private Set<Locacao> locacoes = new HashSet<Locacao>();
	
	
}
