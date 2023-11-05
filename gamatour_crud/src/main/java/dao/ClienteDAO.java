package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



import database.DatabaseConnection;
import model.Cliente;

public class ClienteDAO {

    private Connection connection;
    private String sql;

    public ClienteDAO() throws SQLException {
        connection = DatabaseConnection.createConnection();
    }

    public void closeConnection() {
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void createCliente(Cliente cliente) {
        sql = "INSERT INTO cliente (nome, login, senha, cpf, email) VALUES (?, ?, ?, ?, ?)";

        try (PreparedStatement stmt = connection.prepareStatement(sql)) {

            stmt.setString(1, cliente.getNome());
            stmt.setString(2, cliente.getLogin());
            stmt.setString(3, cliente.getSenha());
            stmt.setString(4, cliente.getCpf());
            stmt.setString(5, cliente.getEmail());

            stmt.executeUpdate();

            System.out.println("Cliente criado com sucesso!");

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public Cliente findCliente(int id) {
        Cliente cliente = null;
        sql = "SELECT * FROM cliente WHERE id=?";

        try (PreparedStatement stmt = connection.prepareStatement(sql)) {

            stmt.setInt(1, id);
            ResultSet r = stmt.executeQuery();

            if (r.next()) {
                cliente = new Cliente();
                cliente.setId(r.getInt("id"));
                cliente.setNome(r.getString("nome"));
                cliente.setLogin(r.getString("login"));
                cliente.setSenha(r.getString("senha"));
                cliente.setCpf(r.getString("cpf"));
                cliente.setEmail(r.getString("email"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return cliente;
    }

    public List<Cliente> findClientes() {

        String sql = "SELECT * FROM cliente";

        List<Cliente> clientes = new ArrayList<Cliente>();

        ResultSet r = null;

        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            r = stmt.executeQuery();

            while (r.next()) {
                Cliente cliente = new Cliente();
                cliente.setId(r.getInt("id"));
                cliente.setNome(r.getString("nome"));
                cliente.setLogin(r.getString("login"));
                cliente.setSenha(r.getString("senha"));
                cliente.setCpf(r.getString("cpf"));
                cliente.setEmail(r.getString("email"));

                clientes.add(cliente);
            }
        } catch (Exception e) {

            e.printStackTrace();

        }
        return clientes;

    }

    public void updateCliente(Cliente cliente) {
        sql = "UPDATE cliente SET nome = ?, login = ?, senha = ?, cpf = ?, email = ? WHERE id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, cliente.getNome());
            stmt.setString(2, cliente.getLogin());
            stmt.setString(3, cliente.getSenha());
            stmt.setString(4, cliente.getCpf());
            stmt.setString(5, cliente.getEmail());
            stmt.setInt(6, cliente.getId());

            stmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void deleteCliente(int id) {
        sql = "DELETE FROM cliente WHERE id = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();

            System.out.println("Cliente Deletado com sucesso!");

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}	

