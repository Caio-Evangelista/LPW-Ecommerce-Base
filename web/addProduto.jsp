<%--
    Document   : addProduto
    Created on : 09/10/2019, 16:03:51
    Author     : Desenvolvimento
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minha Loja</title>
        <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
  </head>
  <body>

      <jsp:include page="menu.jsp">
         <jsp:param name="item" value="ADD" />
      </jsp:include>

     <%
            boolean logado = false;
            if(session != null && session.getAttribute("logado") != null){
                logado = (boolean) session.getAttribute("logado");
            }

            if(logado){
        %>
        <div class="text-center" style="display: block; margin-top: 5%;">
            <h1><img src="image/logo.png" alt=""/>Cadastro de Produtos</h1>
        </div>

        <div class="container" style="width: 70%; display: block; margin-left: 15%; margin-top: 5%;">

         <form class="form-signin" action="AddProduto" method="post">

            <div class="form-row">
               <div class="form-group col-md-6">
                 <label>Título</label>
                 <input type="email" class="form-control">
               </div>

               <div class="form-group col-md-6">
                 <label for="inputPassword4">Imagem (URL)</label>
                 <input class="form-control">
               </div>
            </div>
            <div class="form-row">
               <div class="form-group col-md-12">
                  <label for="inputAddress">Descrição</label>
                  <textarea class="form-control" aria-label="With textarea"></textarea>
               </div>
            </div>
            <button type="submit" class="btn btn-success btn-lg btn-block" style="margin-top: 20%;">Cadastrar</button>
         </form>
      </div>
        <%
            }else{
            %>
            <jsp:forward page="login.jsp"/>
            <%
            }
        %>

   </body>
</html>
