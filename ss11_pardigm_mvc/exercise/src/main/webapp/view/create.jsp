<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/30/2022
  Time: 3:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Add List</h1>
<a href="/product">Back list</a>
<c:if test="${mess!=null}">
    <p>${mess}</p>
</c:if>
<form action="/product" method="post">
    <table>
        <tr>
            <td>ID</td>
            <td><input type="text" name="id" placeholder="Enter ID"></td>
        </tr>
        <tr>
            <td>Name</td>
            <td><input type="text" name="name" placeholder="Enter Name"></td>
        </tr>
        <tr>
            <td>Price</td>
            <td><input type="text" name="price" placeholder="Enter Price"></td>
        </tr>
        <tr>
            <td>Description</td>
            <td><input type="text" name="description" placeholder="Enter Description"></td>
        </tr>
        <tr>
            <td>Producer</td>
            <td><input type="text" name="producer" placeholder="Enter Producer"></td>
        </tr>
        <tr>
           <td><button type="submit" >Save</button></td>
        </tr>
    </table>
</form>
</body>
</html>
