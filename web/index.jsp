<%--
    Document   : index
    Created on : 21/08/2019, 17:26:44
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
         <link href="product.css" rel="stylesheet">
  </head>
  <body>

      <jsp:include page="menu.jsp">
         <jsp:param name="item" value="OFERTAS" />
      </jsp:include>

      <div class="container">

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

                     if(prod.isOferta()){
                        %>
                        <tr>
                           <th scope="row"> <%=prod.getId()%> </th>
                           <td><%=prod.getDescricao() %></td>
                           <td><%=prod.getPreco() %></td>
                        </tr>
                        <%
                     }
                  }
                  %>
            </tbody>
         </table>

            <div class="card mb-3" style="max-width: 540px;">
               <div class="row no-gutters">
                  <div class="col-md-4">
                     <img src="..." class="card-img" alt="...">
                  </div>
                  <div class="col-md-8">
                     <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                     </div>
                  </div>
               </div>
            </div>



      </div>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
