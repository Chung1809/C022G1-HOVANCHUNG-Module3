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
<form action="/product?action=search" method="post">
    <table>
        <tr>
            <td>Name</td>
            <input type="text" name="name">
        </tr>
        <tr>
            <td><button type="submit"  >Search</button></td>
        </tr>
    </table>
</form>
</body>
</html>
