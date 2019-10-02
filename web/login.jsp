<%--
    Document   : login
    Created on : 04/09/2019, 17:26:28
    Author     : Caio Evangelista
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <!CSS>
      <link href="css/login.css" rel="stylesheet" type="text/css"/>
      <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>

      <title>Login</title>
   </head>
   <body class="text-center">

      <jsp:include page="menu.jsp">
         <jsp:param name="item" value="OFERTAS" />
      </jsp:include>

      <div style="width: 30%; display: block; margin-left: 35%; margin-top: 13%">

         <form class="form-signin" action="Login" method="post">


            <img src="image/logo.png" alt=""/>

            <label for="inputEmail" class="sr-only">Email</label>
            <input name="email" id="inputEmail" class="form-control" placeholder="Usuário ou Email" required autofocus style="margin-top: 3px">

            <label for="inputPassword" class="sr-only" >Senha</label>
            <input name="senha" type="password" id="inputPassword" class="form-control" placeholder="Senha" required style="margin-top: 3px">

            <button class="btn btn-lg btn-primary btn-block" type="submit" style="margin-top: 10px">Sign in</button>
            <p class="mt-5 mb-3 text-muted">&copy; 2019</p>
         </form>
      </div>
      <script src="js/bootstrap.min.js" type="text/javascript"></script>
   </body>
</html>
