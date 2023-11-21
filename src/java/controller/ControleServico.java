/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.ServicoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Servico;

/**
 *
 * @author PTOLEDO
 */
@WebServlet(name = "Controle_Produto", urlPatterns = {"/Controle_Produto"})
public class ControleServico extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            ServicoDAO pdao = new ServicoDAO();
            Servico prod = new Servico();

            String op = request.getParameter("op");
            String msg = "Operação";

            switch (op) {
                case "CADASTRAR":
                    {
                        String name = request.getParameter("txtname");
                        String des = request.getParameter("txtdescricao");
                        double preco = Double.parseDouble(request.getParameter("txtpreco"));
                        prod.setName(name);
                        prod.setDescricao(des);
                        prod.setPreco(preco);
                        try {
                            pdao.cadastrar(prod);
                            msg = "Cadastrar";
                        } catch (ClassNotFoundException | SQLException ex) {
                            System.out.println("Erro:" + ex.getMessage());
                        }       break;
                    }
                case "DELETAR":
                    {
                        int id = Integer.parseInt(request.getParameter("txtid"));
                        prod.setId(id);
                        try {
                            pdao.deletar(prod);
                            msg = "Deletar";
                        } catch (ClassNotFoundException | SQLException ex) {
                            System.out.println("Erro:" + ex.getMessage());
                        }       break;
                    }
                case "ALTERAR":
                    {
                        int id = Integer.parseInt(request.getParameter("txtid"));
                        prod.setId(id);
                        try {
                            prod = pdao.consultarById(prod);
                            request.setAttribute("prod", prod);
                            request.getRequestDispatcher("resultadoalterar.jsp").forward(request, response);
                        } catch (ClassNotFoundException | SQLException ex) {
                            System.out.println("Erro:" + ex.getMessage());
                        }       break;
                    }
                case "EFETIVAR ALTERAÇÃO":
                    {
                        String name = request.getParameter("txtname");
                        int id = Integer.parseInt(request.getParameter("txtid"));
                        String descricao = request.getParameter("txtdescricao");
                        double preco = Double.parseDouble(request.getParameter("txtpreco"));
                        prod.setId(id);
                        prod.setName(name);
                        prod.setDescricao(descricao);
                        prod.setPreco(preco);
                        try {
                            pdao.atualizar(prod);
                            msg = "Alterar";
                        } catch (ClassNotFoundException | SQLException ex) {
                            System.out.println("Erro:" + ex.getMessage());
                        }       break;
                    }
                case "CONSULTAR BY ID":
                    {
                        int id = Integer.parseInt(request.getParameter("txtid"));
                        prod.setId(id);
                        try {
                            prod = pdao.consultarById(prod);
                            request.setAttribute("prod", prod);
                            request.getRequestDispatcher("resultadoconsultarbyid.jsp").forward(request, response);
                        } catch (ClassNotFoundException | SQLException ex) {
                            System.out.println("Erro:" + ex.getMessage());
                        }       break;
                    }
                case "CONSULTAR TODOS":
                    try {
                        List<Servico> lprod  = pdao.consultarTodos();
                        request.setAttribute("lprod", lprod);
                        request.getRequestDispatcher("resultadoconsultartodos.jsp").forward(request, response);
                    } catch (ClassNotFoundException | SQLException ex) {
                        System.out.println("Erro:" + ex.getMessage());
                    }   break;
                default:
                    break;
            }
            request.setAttribute("message", msg);
            request.getRequestDispatcher("resultadooperacao.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
