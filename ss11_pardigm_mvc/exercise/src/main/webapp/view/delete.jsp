<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/30/2022
  Time: 9:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Delete List</h1>
<a href="/product">Back list</a>
<c:if test="${mess!=null}">
    <p>${mess}</p>
</c:if>
<form action="/product?action=delete" method="post">
    <table>
        <tr>
            <td>IDIndex</td>
            <td><input type="text" name="idIndex" placeholder="Enter ID"></td>
        </tr>
        <tr>
            <td><button type="submit" >Save</button></td>
        </tr>
    </table>
</form>
</body>
</html>
