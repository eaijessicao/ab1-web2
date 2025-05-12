<%@ include file="conexao.jsp" %>
<%@ page import="java.sql.*" %>

<%
	conexao = (Connection) pageContext.getAttribute("conexao");
    int id = Integer.parseInt(request.getParameter("id"));

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String nome = request.getParameter("nome");
        String endereco = request.getParameter("endereco");
        String bairro = request.getParameter("bairro");
        String numero = request.getParameter("numero");
        String telefone = request.getParameter("telefone");
        String situacao = request.getParameter("situacao");
        String motivo = request.getParameter("motivo");

        try {
            String sql = "UPDATE moradores SET nome=?, endereco=?, bairro=?, numero=?, telefone=?, situacao=?, motivo=? WHERE id=?";
            PreparedStatement stmt = conexao.prepareStatement(sql);
            stmt.setString(1, nome);
            stmt.setString(2, endereco);
            stmt.setString(3, bairro);
            stmt.setString(4, numero);
            stmt.setString(5, telefone);
            stmt.setString(6, situacao);
            stmt.setString(7, motivo);
            stmt.setInt(8, id);
            stmt.executeUpdate();
            stmt.close();
            conexao.close();
            response.sendRedirect("consultausuario.jsp");
            return;
        } catch (Exception e) {
            out.println("Erro ao editar: " + e.getMessage());
        }
    }

    String nome = "", endereco = "", bairro = "", numero = "", telefone = "", situacao = "", motivo = "";
    try {
        String sql = "SELECT * FROM moradores WHERE id=?";
        PreparedStatement stmt = conexao.prepareStatement(sql);
        stmt.setInt(1, id);
        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            nome = rs.getString("nome");
            endereco = rs.getString("endereco");
            bairro = rs.getString("bairro");
            numero = rs.getString("numero");
            telefone = rs.getString("telefone");
            situacao = rs.getString("situacao");
            motivo = rs.getString("motivo");
        }
        rs.close();
        stmt.close();
    } catch (Exception e) {
        out.println("Erro ao carregar dados: " + e.getMessage());
    }
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
     <link rel="stylesheet" href="style.css">
    <meta charset="UTF-8">
    <title>Editar Morador</title>
</head>
<body>
    <h2>Editar Morador</h2>
    <form method="post">
        Nome: <input type="text" name="nome" value="<%= nome %>" required><br>
        Endereço: <input type="text" name="endereco" value="<%= endereco %>" required><br>
        Bairro: <input type="text" name="bairro" value="<%= bairro %>" required><br>
        Número: <input type="text" name="numero" value="<%= numero %>" required><br>
        Telefone: <input type="text" name="telefone" value="<%= telefone %>" required><br>
        Situação: 
        <select name="situacao">
            <option value="pendente" <%= situacao.equals("pendente") ? "selected" : "" %>>Pendente</option>
            <option value="aprovado" <%= situacao.equals("aprovado") ? "selected" : "" %>>Aprovado</option>
            <option value="recusado" <%= situacao.equals("recusado") ? "selected" : "" %>>Recusado</option>
        </select><br>
        Motivo: <textarea name="motivo"><%= motivo %></textarea><br>
        <button type="submit">Salvar Alterações</button>
    </form>
</body>
</html>
