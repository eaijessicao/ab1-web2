<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, java.util.Map" %>

<%
    List<Map<String, String>> usuarios = (List<Map<String, String>>) session.getAttribute("usuarios");
%>

<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <title>Consultar Usuários</title>
    <meta name="keywords" content="consulta, usuários, sistema, formulário">
    <meta name="description" content="consulta de cadastros realizados">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    
  
</head>
<body>

    <h2>Lista de moradores cadastrados</h2>

    <% if (usuarios != null && !usuarios.isEmpty()) { %>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Endereço</th>
                <th>Bairro</th>
                <th>Número</th>
                <th>Telefone</th>
                <th>Situação</th>
                <th>Motivo</th>
            </tr>
            <% for (Map<String, String> usuario : usuarios) { %>
                <tr>
                    <td><%= usuario.get("nome") %></td>
                    <td><%= usuario.get("endereco") %></td>
                    <td><%= usuario.get("bairro") %></td>
                    <td><%= usuario.get("numero") %></td>
                    <td><%= usuario.get("telefone") %></td>
                    <td><%= usuario.get("situacao") %></td>
                    <td><%= usuario.get("motivo") %></td>
                </tr>
            <% } %>
        </table>
    <% } else { %>
        <p>Nenhum usuário cadastrado ainda.</p>
    <% } %>

    <a href="cadastrarusuario.html">Cadastrar novo morador</a>

</body>
</html>
