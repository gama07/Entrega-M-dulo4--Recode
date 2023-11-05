package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClienteDAO;
import model.Cliente;

@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));

        try {
            ClienteDAO clienteDAO = new ClienteDAO();
            Cliente cliente = clienteDAO.findCliente(id);

            req.setAttribute("cliente", cliente);

            RequestDispatcher rd = req.getRequestDispatcher("atualizar.jsp");
            rd.forward(req, res);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        try {
            Cliente cliente = new Cliente();
            cliente.setId(Integer.parseInt(req.getParameter("id")));
            cliente.setNome(req.getParameter("nome"));
            cliente.setLogin(req.getParameter("login"));
            cliente.setSenha(req.getParameter("senha"));
            cliente.setCpf(req.getParameter("cpf"));
            cliente.setEmail(req.getParameter("email"));

            ClienteDAO clienteDAO = new ClienteDAO();
            clienteDAO.updateCliente(cliente);

            
            Cliente clienteAtualizado = clienteDAO.findCliente(cliente.getId());
            req.setAttribute("cliente", clienteAtualizado);

            RequestDispatcher rd = req.getRequestDispatcher("atualizar.jsp");
            rd.forward(req, res);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
