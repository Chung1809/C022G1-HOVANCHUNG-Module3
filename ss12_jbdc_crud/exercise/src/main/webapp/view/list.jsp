<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/31/2022
  Time: 4:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 align="center">Hiển thị danh sách</h1>
<p align="center"><a href="/product?action=add" >Add new</a></p>



    <form  action="/product?action=search" method="post" style="text-align: center">

        <input type="text" name="name">
        <button type="submit">Search</button>

    </form>



<table align="center" border="1" style=" border-collapse: collapse">
    <tr style="border: 1px solid">
        <th>ID</th>
        <th>NAME</th>
        <th>PRICE</th>
        <th>DESCRIPTION</th>
        <th>PRODUCER</th>
        <th colspan="2">Optional</th>
    </tr>
    <tr style="border: 1px solid">
        <c:forEach items="${product}" var="product" >
    <tr style="border: 1px solid">
        <td>${product.id}</td>
        <td>${product.nameProduct}</td>
        <td>${product.priceProduct}</td>
        <td>${product.descriptionProduct}</td>
        <td>${product.producer}</td>
        <td><a href="/product?action=edit&id=${product.id}">Edit</a></td>
        <td><a href="/product?action=delete&id=${product.id}">Delete</a></td>
    </tr>

    </c:forEach>
    </tr>
</table>
</body>
</html>
