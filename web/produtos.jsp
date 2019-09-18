<%--
    Document   : produtos
    Created on : 04/09/2019, 17:44:38
    Author     : Caio Evangelista
--%>

<%@page import="modelos.Produto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minha Loja</title>
        <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

   <jsp:include page="menu.jsp">
      <jsp:param name="item" value="PRODUTOS" />
   </jsp:include>

        <div class="container">

        <h1>Hello World!</h1>

        <%
            boolean logado = false;
            if(session != null && session.getAttribute("logado") != null){
                logado = (boolean) session.getAttribute("logado");
            }

            if(logado){
        %>
        <form action="AddProduto" method="post">
            Descrição: <input name="descricao">
            Preço: <input name="preco">

            <button type="submit">OK</button>
        </form>
        <%
            }
        %>

        <table class="table">
            <thead>
               <tr>
                  <th scope="col">#</th>
                  <th scope="col">Produto</th>
                  <th scope="col">Preço</th>
               </tr>
            </thead>
            <tbody>
                  <%
                  for (Produto prod : Produto.getLista()) {

                     %>
                     <tr>
                        <th scope="row"> <%=prod.getId()%> </th>
                        <td><%=prod.getDescricao() %></td>
                        <td><%=prod.getPreco() %></td>
                     </tr>
                     <%
                  }
                  %>
            </tbody>
         </table>
        </div>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
