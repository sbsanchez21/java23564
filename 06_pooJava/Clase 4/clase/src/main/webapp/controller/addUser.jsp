<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
	String user=request.getParameter("user");
	String pass=request.getParameter("pass");
	
	ConexionDB con=new ConexionDB();
	Statement st=con.conectar();
	int okInsert=st.executeUpdate("INSERT INTO usuarios (user,pass) VALUES('"+user+"','"+pass+"') ");
	
	if(okInsert==1) {
		response.sendRedirect("../view/inicio.jsp");	
			
	} else {
		response.sendRedirect("../view/registro.jsp?mensaje=No%20se%pudo%20registrar");	
	}

%>