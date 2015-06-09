/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.*;
import java.sql.SQLException;
import model.SubdominioBean;
import java.util.ArrayList;

public class SubdominioDAO {
    private Connection connection;
    
  public SubdominioDAO() throws DAOException{
    this.connection = ConnectionFactory.getConnection();
  }

  public ArrayList buscarSubdominioPorMes(String subdominio, int mes) throws SQLException {
    
    //System.out.println("sub: "+ subdominio);
    ArrayList<SubdominioBean> sub_list = new ArrayList<SubdominioBean>();
    ResultSet r;
    PreparedStatement statement;
    subdominio = subdominio.replace("Ã§", "c");
    subdominio = subdominio.replace("Ã£", "a");
    String SQL = "select * from Consulta1('" +subdominio + "'," +mes+");";
 
    statement = connection.prepareStatement(SQL);
    r = statement.executeQuery();
  
    while(r.next()) {
        SubdominioBean s = new SubdominioBean();
        s = new SubdominioBean();
        s.setName(r.getString("nome"));
        s.setGastoTotal((r.getFloat("total")));
        sub_list.add(s);
    }
    
    return sub_list;
  
  }
}