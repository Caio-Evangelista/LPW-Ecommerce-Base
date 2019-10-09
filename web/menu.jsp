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
   String adicionarActive = item.equals("ADCIONAR")? active : "";

%>

<link href="css/menu.css" rel="stylesheet" type="text/css"/>

<nav class="navbar navbar-inverse">

   <a class="navbar-brand" href="index.jsp">
      <img src="image/logo.png" alt="" width="100px" style="display: block; margin-top: -10px; "/>
   </a>
   <ul class="nav navbar-nav">
      <li <%=ofertasActive%> ><a href="index.jsp">Ofertas</a></li>
      <li <%=produtosActive%> ><a href="produtos.jsp">Produtos</a></li>
      <li <%=sobreActive%> ><a href="sobre.jsp">Sobre</a></li>
      <%
            boolean logado = false;
            if(session != null && session.getAttribute("logado") != null){
                logado = (boolean) session.getAttribute("logado");
            }

            if(logado){
        %>
         <li class="dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Cadastrar
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
               <a class="dropdown-item" href="addProduto">Produtos</a>
               <a class="dropdown-item" href="#">Funcionarios</a>
            </div>
         </li>
         <li>
         <form class="form-inline" action="Login" method="post">
            <button class="btn btn-danger btn-success btn-lg" type="submit">Sair</button>
         </form>
         </li>
        <%
            }
        %>
   </ul>

</nav>
