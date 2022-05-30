<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/30/2022
  Time: 8:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Update List</h1>
<a href="/product">Back list</a>
<c:if test="${mess!=null}">
    <p>${mess}</p>
</c:if>
<form action="/product?action=edit" method="post">
    <table>


        <tr>
            <td>Name</td>
            <td><input type="text" name="name" placeholder="Enter Name " value="${product.getNameProduct()}"></td>
        </tr>
        <tr>
            <td>Price</td>
            <td><input type="text" name="price" placeholder="Enter Price" value="${product.getPriceProduct()}"></td>
        </tr>
        <tr>
            <td>Description</td>
            <td><input type="text" name="description" placeholder="Enter Description" value="${product.getDescriptionProduct()}"></td>
        </tr>
        <tr>
            <td>Producer</td>
            <td><input type="text" name="producer" placeholder="Enter Producer" value="${product.getProducer()}"></td>
        </tr>
        <tr>
            <td><button type="submit" >Update</button></td>
        </tr>
    </table>
</form>
</body>
</html>
