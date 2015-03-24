package model.domain;

public class cliente {
	private int numero_inscricao;
	private String nome;
	private String data_nascimento;
	private String sexo;
	private Boolean ativo;
	
	public cliente() {
		super();
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
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public Boolean getAtivo() {
		return ativo;
	}
	public void setAtivo(Boolean ativo) {
		this.ativo = ativo;
	}
	
	
	

}
