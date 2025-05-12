<%@ include file="conexao.jsp" %>
<%
    try {
        int id = Integer.parseInt(request.getParameter("id"));

        String sql = "DELETE FROM moradores WHERE id=?";
        PreparedStatement stmt = conexao.prepareStatement(sql);
        stmt.setInt(1, id);
        stmt.executeUpdate();
        stmt.close();

        conexao.close();
        response.sendRedirect("consultausuario.jsp");
    } catch (Exception e) {
        out.println("Erro ao excluir: " + e.getMessage());
    }
%>
