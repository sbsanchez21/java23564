<%@page import="dao.OradorDAO"%>
<%@page import="model.Orador"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
	String nom=request.getParameter("nomAdd");
	String ape=request.getParameter("apeAdd");
	String email=request.getParameter("emailAdd");
	String dni=request.getParameter("dniAdd");
//	String temas[]=request.getParameterValues("temasAdd");
	//TODO: obtener textaer

	Orador ora=new Orador();
	ora.setNombre(nom);
	ora.setApellido(ape);
	ora.setEmail(email);
	ora.setDni(Integer.valueOf(dni));
	
	OradorDAO dao=new OradorDAO();
	Boolean okInsert=dao.addOrador(ora);
	
	if(okInsert) {
		response.sendRedirect("../view/listaOradores.jsp?mensaje=Orador%20creado%20exitosamente");			
	} else {
		response.sendRedirect("../view/listaOradores.jsp?mensaje=No%20se%20pudo%20crear%20el%20orador");			
	}	

%>