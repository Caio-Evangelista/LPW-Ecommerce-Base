<%--
    Document   : menu
    Created on : 18/09/2019, 16:14:22
    Author     : Desenvolvimento
--%>

<%@page import="db.Mock"%>
<%
   Mock.makeMock();

   String item = request.getParameter("item");
   String active = "class=\"active\"";

   String ofertasActive = item.equals("OFERTAS")? active : "";
   String produtosActive = item.equals("PRODUTOS")? active : "";
   String sobreActive = item.equals("SOBRE")? active : "";

%>


<nav class="navbar navbar-inverse">

   <a class="navbar-brand" href="#">
      <img src="image/logo.png" width="30" height="30" class="d-inline-block align-top" alt="">
      Bootstrap
   </a>
   <ul class="nav navbar-nav">
      <li <%=ofertasActive%> ><a href="index.jsp">Ofertas</a></li>
      <li <%=produtosActive%> ><a href="produtos.jsp">Produtos</a></li>
      <li <%=sobreActive%> ><a href="sobre.jsp">Sobre</a></li>
   </ul>
   <ul class="nav navbar-nav navbar-right">
      <li><a href="login.jsp">Entrar</a></li>
   </ul>
</nav>