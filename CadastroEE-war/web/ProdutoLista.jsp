<%-- 
    Document   : ProdutoLista
    Created on : 16 de mai. de 2024, 04:49:07
    Author     : Camz
--%>
<%@page import="cadastroee.model.Produto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Produtos</title>
</head>
<body>
    <h1>Listagem de Produtos</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Quantidade</th>
            <th>Preço</th>
            <th>Opções</th>
        </tr>
        <% 
            List<Produto> produtos = (List<Produto>) request.getAttribute("produtos");
            if (produtos != null) {
                for (Produto produto : produtos) {
        %>
        <tr>
            <td><%= produto.getIdProduto() %></td>
            <td><%= produto.getNome() %></td>
            <td><%= produto.getQuantidade() %></td>
            <td><%= produto.getPrecoVenda() %></td>
            <td>
                <a  href="ServletProdutoFC?acao=formAlterar&id=<%=produto.getIdProduto()%>">Alterar</a>
                <a  href="ServletProdutoFC?acao=excluir&id=<%=produto.getIdProduto()%>">Excluir</a>
            </td>
        </tr>
        <% 
                }
            }
        %>
    </table>
    <br>
    <a href="ServletProdutoFC?acao=formIncluir">Novo Produto</a>
</body>
</html>
