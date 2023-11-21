/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import model.Servico;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Servico;
import util.FabricaConexao;

/**
 *
 * @author PTOLEDO
 */
public class ServicoDAO {
    
    public void cadastrar(Servico prod) throws ClassNotFoundException, SQLException {
        Connection con = FabricaConexao.getConexao();
        PreparedStatement comando = con.prepareStatement("insert into produtos (name, descricao, preco) values (?,?,?)");
        comando.setString(1, prod.getName());
        comando.setString(2, prod.getDescricao());
        comando.setDouble(3, prod.getPreco());
        comando.execute();
        con.close();
    }
    
    public void deletar(Servico prod) throws ClassNotFoundException, SQLException {
        Connection con = FabricaConexao.getConexao();
        PreparedStatement comando = con.prepareStatement("delete from produtos where id = ?");
        comando.setInt(1, prod.getId());
        comando.execute();
        con.close();
    }
    
    public void atualizar(Servico prod) throws ClassNotFoundException, SQLException {
        Connection con = FabricaConexao.getConexao();
        PreparedStatement comando = con.prepareStatement("update produtos set name = ?, descricao = ?, preco = ? where id = ?");
        comando.setString(1, prod.getName());
        comando.setString(2, prod.getDescricao());
        comando.setDouble(3, prod.getPreco());
        comando.setInt(4, prod.getId());
        comando.execute();
        con.close();
    }    
    
    public Servico consultarById(Servico prod) throws ClassNotFoundException, SQLException {
        Connection con = FabricaConexao.getConexao();
        PreparedStatement comando = con.prepareStatement("select * from produtos where id = ?");
        comando.setInt(1, prod.getId());
        ResultSet rs = comando.executeQuery();
        Servico p = new Servico();
        if (rs.next()) {
            p.setId(rs.getInt("id"));
            p.setName(rs.getString("name"));
            p.setDescricao(rs.getString("descricao"));
            p.setPreco(rs.getDouble("preco")); 
        }       
        con.close();
        return p;
    }
    
    public List<Servico> consultarTodos() throws ClassNotFoundException, SQLException {
        Connection con = FabricaConexao.getConexao();
        PreparedStatement comando = con.prepareStatement("select * from produtos");        
        ResultSet rs = comando.executeQuery();        
        List<Servico> lprod = new ArrayList<Servico>();
        int cont = 0;
        while(rs.next()){
            Servico prod = new Servico();
            prod.setId(rs.getInt("id"));
            prod.setName(rs.getString("name"));
            prod.setDescricao(rs.getString("descricao"));
            prod.setPreco(rs.getDouble("preco")); 
            lprod.add(prod);
            cont++;
        }
        System.out.println("Cont..: " + cont);
        con.close();
        return lprod;
    }    
}
