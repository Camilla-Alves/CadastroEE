<%-- 
    Document   : ProdutoDados
    Created on : 16 de mai. de 2024, 05:12:35
    Author     : Camz
--%>
<%@page import="cadastroee.model.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cadastro de Produtos</title>
</head>
<body>
    <%
        Produto produto = (Produto) request.getAttribute("produto");
        String acao = produto != null ? "alterar" : "incluir";
    %>

    <h1><%=acao == "alterar" ? "Alteração" : "Cadastro"%> de Produto</h1>
    <a href="ServletProdutoFC?acao=listar">Voltar</a>
    <br><br> 
    <div>
        <form action="ServletProdutoFC" method="post">
            <input type="hidden" name="acao" value="<%=acao%>">
            <% if (produto != null) { %>
                <input type="hidden" name="id" value="<%=produto.getIdProduto()%>">
            <% } %>
            
                <label for="idProduto">ID:</label>
                <input type="text" id="idProduto" name="idProduto" required>

                <label for="nome">Nome:</label>
                <input type="text" name="nome" value="<%=produto != null ? produto.getNome() : ""%>" required>
  
                <label for="quantidade">Quantidade:</label>
                <input type="text" name="quantidade" value="<%=produto != null ? produto.getQuantidade() : ""%>" required>
    
                <label for="precoVenda">Preço de Venda:</label>
                <input type="text" name="precoVenda" value="<%=produto != null ? produto.getPrecoVenda() : ""%>" required>
            </div>
            <br><br> 
            <div>
                <input type="submit" value="<%=acao == "incluir" ? "Adicionar Produto" : "Alterar"%>">
            </div>
        </form>
    </div>
</body>
</html>
