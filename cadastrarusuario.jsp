<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, java.util.ArrayList, java.util.Map, java.util.HashMap" %>

<%
    List<Map<String, String>> usuarios = (List<Map<String, String>>) session.getAttribute("usuarios");
    if (usuarios == null) {
        usuarios = new ArrayList<>();
        session.setAttribute("usuarios", usuarios);
    }

    String nome = request.getParameter("nome");
    String endereco = request.getParameter("endereco");
    String bairro = request.getParameter("bairro");
    String numero = request.getParameter("numero");
    String telefone = request.getParameter("telefone");
    String situacao = request.getParameter("situacao");
    String motivo = request.getParameter("motivo");

    Map<String, String> usuario = new HashMap<>();
    usuario.put("nome", nome);
    usuario.put("endereco", endereco);
    usuario.put("bairro", bairro);
    usuario.put("numero", numero);
    usuario.put("telefone", telefone);
    usuario.put("situacao", situacao);
    usuario.put("motivo", motivo);

    usuarios.add(usuario);
%>

<!DOCTYPE html>
<html lang="pt">
<head>
     <meta charset="UTF-8">
    <meta name="keywords" content="cadastro, usuários, sistema, formulário">
    <meta name="description" content="cadastro finalizado">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    
    <div class="cadastro_container">
        <h2>Cadastro realizado com sucesso!</h2>
   
        <a href="cadastrarusuario.html" class="b-cadastro">Cadastrar outro morador</a>
        <a href="consultausuario.jsp" class="b-cadastro">Consultar moradores cadastrados</a>
    </div>
</body>
</html>
