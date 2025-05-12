<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="conexao.jsp" %>

<%
    String nome = request.getParameter("nome");
    String endereco = request.getParameter("endereco");
    String bairro = request.getParameter("bairro");
    String numero = request.getParameter("numero");
    String telefone = request.getParameter("telefone");
    String situacao = request.getParameter("situacao");
    String motivo = request.getParameter("motivo");

    try {
    	conexao = (Connection) pageContext.getAttribute("conexao");
        String sql = "INSERT INTO moradores (nome, endereco, bairro, numero, telefone, situacao, motivo) VALUES (?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement stmt = conexao.prepareStatement(sql);
        stmt.setString(1, nome);
        stmt.setString(2, endereco);
        stmt.setString(3, bairro);
        stmt.setString(4, numero);
        stmt.setString(5, telefone);
        stmt.setString(6, situacao);
        stmt.setString(7, motivo);

        stmt.executeUpdate();
        stmt.close();
        conexao.close();
    } catch (Exception e) {
        out.println("Erro ao cadastrar: " + e.getMessage());
    }
%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Cadastro Concluído</title>
    <link rel="stylesheet" href="style.css">
    
    
</head>
<body>
    <h2>Cadastro realizado com sucesso!</h2>
    <a href="cadastrarusuario.html">Cadastrar outro morador</a>
    <a href="consultausuario.jsp">Consultar moradores</a>
</body>
</html>
