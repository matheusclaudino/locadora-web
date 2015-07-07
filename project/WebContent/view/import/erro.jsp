 <%
 if( request.getParameter("erro") != null) {
    	if(request.getParameter("erro").equals("0")) {
        	out.println("<div class='alert alert-success'>SUCESSO <span class='fa fa-check-square-o'></span></div>");
        } else {
        	out.println("<div class='alert alert-danger'>ERRO <span class='fa fa-ban'></span></div>");
        }
    }
 %>