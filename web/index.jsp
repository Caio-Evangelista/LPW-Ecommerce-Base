<%--
    Document   : index
    Created on : 21/08/2019, 17:26:44
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
        <link href="product.css" rel="stylesheet">

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:include page="menu.jsp">
           <jsp:param name="item" value="OFERTAS" />
        </jsp:include>

        <jsp:useBean id="produtos" class="modelos.Produto" />

        <c:forEach var="prod" items="${produtos.lista}">
            <c:if test="${produtos.oferta}">
                <pre> ${prod.descricao} </pre>
            </c:if>
        </c:forEach>


        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
