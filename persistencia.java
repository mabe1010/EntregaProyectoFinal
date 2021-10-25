package Clases;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Usuario
 */
public class persistencia {
    private Connection cn;
    private ResultSet rs;
    private PreparedStatement ps;
    
  public String servidor, basededatos, usuario, clave, ejecutar;  
  
  public Connection conectarse () {
        try {
            Class.forName("com.mysql.jdbc.Driver");
      
      servidor = "127.0.0.1:3306/";
      basededatos = "proyectocacusuarios";
      usuario = "root";
      clave = "";
      
      cn=DriverManager.getConnection("jdbc:mysql://" + servidor + basededatos + "?autoReconnect=true&useSSL=false", usuario, clave );
      
  } catch (ClassNotFoundException ex) {
            Logger.getLogger(persistencia.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(persistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    return cn;
  }
  
  //**** Consulta a SQL
  public ResultSet consultaSQL(String Busqueda){
        try {
            ps= conectarse().prepareStatement(Busqueda);
            rs=ps.executeQuery();     
        } catch (SQLException ex) {
            Logger.getLogger(persistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
      return rs;
  }

//** Registro usuario 
public void insertarSQL(String Busqueda)
{
  try {
            ps= conectarse().prepareStatement(Busqueda);
            ps.execute();
            //rsm=rs.getMetaData();
        } catch (SQLException ex) {
            Logger.getLogger(persistencia.class.getName()).log(Level.SEVERE, null, ex);
        }           
}    
}

