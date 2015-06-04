/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.*;
import java.sql.SQLException;
import model.DominioBean;
import java.util.ArrayList;

public class DominioDAO {
    private Connection connection;
    
  public DominioDAO() throws DAOException{
    this.connection = ConnectionFactory.getConnection();
  }

  public ArrayList buscarDominio(String dominio, float valor) throws SQLException {
    
    //System.out.println("sub: "+ subdominio);
    ArrayList<DominioBean> dom_list = new ArrayList<DominioBean>();
    ResultSet r;
    PreparedStatement statement;
    String SQL = "select * from ConsultaDominio('" +dominio+ "'," +valor+");";
 
    statement = connection.prepareStatement(SQL);
    r = statement.executeQuery();
  
    while(r.next()) {
        DominioBean d = new DominioBean();
        //s = new DominioBean();
        d.setNomePrograma(r.getString("nomePrograma"));
        d.setGasto(r.getFloat("gasto"));
        dom_list.add(d);
    }
    
    return dom_list;
  
  }
}