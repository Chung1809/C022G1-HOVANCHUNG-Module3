<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/30/2022
  Time: 9:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Search Name List</h1>
<a href="/product">Back list</a>
<c:if test="${mess!=null}">
    <p>${mess}</p>
</c:if>
<form action="/product" method="post">
    <table>
        <c:forEach items="${productFindList}" var="productFind">
            <tr>
                <td>ID</td>
                <td>${productFind.getId()}</td>
            </tr>
            <tr>
                <td>Name</td>
                <td>${productFind.getNameProduct()}</td>
            </tr>
            <tr>
                <td>Price</td>
                <td>${productFind.getPriceProduct()}</td>
            </tr>
            <tr>
                <td>Description</td>
                <td>${productFind.getdescription()}</td>
            </tr>
            <tr>
                <td>Producer</td>
                <td>${productFind.getproducer()}</td>
            </tr>

        </c:forEach>
    </table>
</form>
</body>
</html>
