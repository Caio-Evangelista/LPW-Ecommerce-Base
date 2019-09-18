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

      <div class="conteiner">

         <form class="form-signin" action="Login" method="post">

         <h1 class="h3 mb-3 font-weight-normal">Faça o Login</h1>

         <label for="inputEmail" class="sr-only">Email</label>
         <input name="email" type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>

         <label for="inputPassword" class="sr-only">Senha</label>
         <input name="senha" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
         <div class="checkbox mb-3">
            <label>
               <input type="checkbox" value="remember-me"> Remember me
            </label>
         </div>
         <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
         <p class="mt-5 mb-3 text-muted">&copy; 2019</p>
      </form>
      </div>
      <script src="js/bootstrap.min.js" type="text/javascript"></script>
   </body>
</html>
