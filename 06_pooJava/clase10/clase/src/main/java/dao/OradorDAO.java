package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import db.ConexionDB;
import model.Orador;

/**
 * Concentra todas las consultas, eliminaciones,
 * modificaciones y creaciones de la tabala 
 * Oradores 
 * 
 * @author Santos
 *
 */
public class OradorDAO {
	
	/**
	 * Obtiene todos los oradores de la tabla oradores
	 * SE conecta a la db, trae todos los oradores
	 * 
	 * @return Lista de oradores
	 */
	public List<Orador> listOradores() {
		ConexionDB con=new ConexionDB();
		
		Statement st=con.conectar();
		ResultSet rs;
		List<Orador> listOra=new ArrayList<Orador>();
		try {
			rs = st.executeQuery("SELECT * FROM oradores");
			//mapeo relacion objeto ORM, hibernate, jpa
			//transformamos cada una de las filas de la tabla oradores en un objeto Orador
			
			while(rs.next()){ 
				Orador ora=new Orador();
				ora.setId(rs.getInt("id"));
				ora.setNombre(rs.getString("nombre"));
				ora.setApellido(rs.getString("apellido"));
				ora.setEmail(rs.getString("email"));
				ora.setTemas(rs.getString("temas"));
				ora.setFotoPerfil(rs.getString("fotoPerfil"));
				listOra.add(ora);
			}
						
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		return listOra;
	}
	
	/**
	 * Inserta un orador en la tabla oradores
	 * @param Objeto Orador con los datos a insertar
	 * @return True si se insertó ok, false si no se insertó
	 */
	public Boolean addOrador(Orador ora) {
		ConexionDB con=new ConexionDB();
		
		Integer insertOk;
		try {
			Statement st=con.conectar();
			insertOk = st.executeUpdate("INSERT INTO oradores (nombre, apellido, email, dni, resenia, temas) VALUES ('"+ora.getNombre()+"','"+ora.getApellido()+"','"+ora.getEmail()+"',"+ora.getDni()+" ,'','') ");
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		
		return insertOk==1;
	}
	
	
	/**
	 * Inserta un orador en la tabla oradores
	 * @param Objeto Orador con los datos a insertar
	 * @return True si se insertó ok, false si no se insertó
	 */
	public Boolean updOrador(Orador ora) {
		ConexionDB con=new ConexionDB();
		
		Integer insertOk;
		try {
			Statement st=con.conectar();
			insertOk = st.executeUpdate("INSERT INTO oradores (nombre, apellido, email, dni, resenia, temas) VALUES ('"+ora.getNombre()+"','"+ora.getApellido()+"','"+ora.getEmail()+"',"+ora.getDni()+" ,'','') ");
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		
		return insertOk==1;
	}

}
