<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="org.hibernate.Session"%>
	<%@ page import="org.hibernate.SessionFactory"%>
	<%@ page import="org.hibernate.Query"%>
	<%@ page import="org.hibernate.cfg.AnnotationConfiguration"%>
	<%@ page import="model.domain.Cliente"%>
	<%@ page import="java.util.Iterator"%>
	<%@ page import="java.util.List"%>
	
	<%
		SessionFactory sessions = new AnnotationConfiguration().configure().buildSessionFactory();
		Session s = sessions.openSession();
		
		String strQuery = "from Cliente";
		
		s.beginTransaction();
		Query qr = s.createQuery(strQuery);
		List clientes = qr.list();
		
		Iterator<Cliente> i = clientes.iterator();
		while (i.hasNext()){
			
			Cliente c = (Cliente)i.next();
			
			out.print(c.getNome()+"<br>");
		}
		
		s.close();
	%>


</body>
</html>