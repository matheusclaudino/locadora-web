package model.application;

import model.domain.Cliente;
import model.domain.Item;

public class applicationLocacao {
	public static final int INSCREVER_NOVA_LOCACAO_OK = 1;
	public static final int INSCREVER_NOVA_LOCACAO_ERRO = 0;
	
	public static int inscreverNovaLocacao(String dataLocacao, String dataDevolucaoPrevista, double valorCobrado,
			Cliente cliente, Item item){
		
		return INSCREVER_NOVA_LOCACAO_OK;
	}
}
