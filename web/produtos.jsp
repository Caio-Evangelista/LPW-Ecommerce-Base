<%--
    Document   : produtos
    Created on : 04/09/2019, 17:44:38
    Author     : Caio Evangelista
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

        <jsp:useBean id="produtos" class="modelos.Produto" />
        
        <c:forEach var="prod" items="${produtos.lista}">
            <pre> ${prod.descricao} </pre>
        </c:forEach>

        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
