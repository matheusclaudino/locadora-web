package model.application;

import java.util.GregorianCalendar;

public class applicationPagamento {

	public static void inscreverNovaLocacao(){
		GregorianCalendar calendar = new GregorianCalendar(); 
		int hora = calendar.get(calendar.HOUR_OF_DAY);
		int day = calendar.get(calendar.DATE);
		int month = calendar.get(calendar.MONTH);
		int year = calendar.get(calendar.YEAR);
		
		String data = String.valueOf(year) + "-" + String.valueOf(month) + "-" + String.valueOf(day) ;
		
		
	}
	
}
