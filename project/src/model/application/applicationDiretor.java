package model.application;

public class applicationDiretor {
	
	public static final int INSCREVER_NOVO_DIRETOR_OK = 1 ;
	public static final int INSCREVER_NOVO_DIRETOR_ERRO = 0;
	
	public static int inscreverNovoDiretor(String nome){
		if(nome.equals(""))
			return INSCREVER_NOVO_DIRETOR_ERRO;
		
		
		return INSCREVER_NOVO_DIRETOR_OK;
	}
}
