<%@ page import="java.sql.*" %>
<%
    String url = "jdbc:mysql://localhost:3306/cadastro_moradores";
    String usuarioBD = "jessica";
    String senhaBD = "003030";

    Connection conexao = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conexao = DriverManager.getConnection(url, usuarioBD, senhaBD);
        pageContext.setAttribute("conexao", conexao); 
    } catch (Exception e) {
        out.println("Erro de conexão: " + e.getMessage());
    }
%>
