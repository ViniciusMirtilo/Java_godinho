/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author PTOLEDO
 */
public class FabricaConexao {
    
    public static Connection getConexao() throws ClassNotFoundException, SQLException {

        //MySQL
        // O método forName carrega e inicia o driver passado por parâmetro
        Class.forName("com.mysql.jdbc.Driver");
        String URL = "jdbc:mysql://localhost:3306/trabalhoGodin";
        String USER = "root";
        String PASSWORD = "";
        // Estabelecendo a conexão
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
    
}
