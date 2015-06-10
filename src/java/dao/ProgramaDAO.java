/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.*;
import java.sql.SQLException;
import model.ProgramaBean;
import java.util.ArrayList;

public class ProgramaDAO {
    private Connection connection;
    
  public ProgramaDAO() throws DAOException{
    this.connection = ConnectionFactory.getConnection();
  }

  public ArrayList buscarPrograma(String dominio, float valor, String ordenacao) throws SQLException {
    //System.out.println("sub: "+ subdominio);
    ArrayList<ProgramaBean> p_list = new ArrayList<ProgramaBean>();
    ResultSet r;
    PreparedStatement statement;
    //System.out.println(dominio);
    dominio = dominio.replace("ç", "c");
    dominio = dominio.replace("ã", "a");
    dominio = dominio.replace("Ç", "c");
    dominio = dominio.replace("Ã", "a");
    dominio = dominio.replace("Ú", "u");
    dominio = dominio.replace("ú", "u");
    String SQL = "select * from ConsultaPrograma('"+dominio+"'," +valor+",'"+ordenacao+"');";
        //System.out.println(dominio);

    statement = connection.prepareStatement(SQL);
    r = statement.executeQuery();
  
    while(r.next()) {
        ProgramaBean p = new ProgramaBean();
        //s = new DominioBean();
        p.setNomeDominio(r.getString("dominio"));
        p.setNomePrograma(r.getString("descricao"));
        p.setGastoTotal(r.getFloat("total"));
        p_list.add(p);
    }
    
    return p_list;
  
  }
}