<%@ include file="conexao.jsp" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Consultar Moradores</title>
	<link rel="stylesheet" href="style.css">
    
</head>
<body>
    <h2>Lista de Moradores</h2>
    <table border="1">
        <tr>
            <th>Nome</th>
            <th>Endereço</th>
            <th>Bairro</th>
            <th>Número</th>
            <th>Telefone</th>
            <th>Situação</th>
            <th>Motivo</th>
            <th>Ações</th>
        </tr>
        <%
            try {
            	conexao = (Connection) pageContext.getAttribute("conexao");
                String sql = "SELECT * FROM moradores";
                Statement stmt = conexao.createStatement();
                ResultSet rs = stmt.executeQuery(sql);

                while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString("nome") %></td>
            <td><%= rs.getString("endereco") %></td>
            <td><%= rs.getString("bairro") %></td>
            <td><%= rs.getString("numero") %></td>
            <td><%= rs.getString("telefone") %></td>
            <td><%= rs.getString("situacao") %></td>
            <td><%= rs.getString("motivo") %></td>
            <td>
                <a href="editarusuario.jsp?id=<%= rs.getInt("id") %>">Editar</a> |
                <a href="excluirusuario.jsp?id=<%= rs.getInt("id") %>" onclick="return confirm('Deseja excluir este morador?')">Excluir</a>
            </td>
        </tr>
        <%
                }
                rs.close();
                stmt.close();
                conexao.close();
            } catch (Exception e) {
                out.println("Erro ao consultar: " + e.getMessage());
            }
        %>
    </table>
    <br>
    <a href="cadastrarusuario.html">Cadastrar novo morador</a>

</body>
</html>
