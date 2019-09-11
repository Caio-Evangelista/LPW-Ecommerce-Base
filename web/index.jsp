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
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link href="css/product.css" rel="stylesheet" type="text/css"/>
        
       <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="product.css" rel="stylesheet">
  </head>
  <body>
      <div class="container">
          
          <%
              
              for(int i = 0; i < Produto.getLista().size(); i++){
              
              if(i % 4 == 0){
              %>
              <div class="row">
              <%
              }
                
             
              }
          
          %>
          
      </div>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
