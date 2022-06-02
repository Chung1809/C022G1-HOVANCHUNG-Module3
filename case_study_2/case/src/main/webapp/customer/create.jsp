<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 6/2/2022
  Time: 3:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Add List</h1>
<a href="/customer">Back list</a>
<c:if test="${mess!=null}">
    <p>${mess}</p>
</c:if>
<form action="/customer?action=add" method="post">
    <table>
        <tr>
            <td>TypeID</td>
            <td><input type="text" name="id" placeholder="Enter ID"></td>
        </tr>
        <tr>
            <td>Name</td>
            <td><input type="text" name="name" placeholder="Enter Name"></td>
        </tr>
        <tr>
            <td>Birthday</td>
            <td><input type="text" name="birthday" placeholder="Enter Birthday"></td>
        </tr>
        <tr>
            <td>Gender</td>
            <td>
                <input type="radio" name="gender" value="true"> Nam
                <input type="radio" name="gender" value="false"> Nữ
            </td>
        </tr>

        <tr>
            <td>Card</td>
            <td><input type="text" name="card" placeholder="Enter Card"></td>
        </tr>
        <tr>
            <td>Phone</td>
            <td><input type="text" name="phone" placeholder="Enter Phone"></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><input type="text" name="email" placeholder="Enter Email"></td>
        </tr>
        <tr>
            <td>Address</td>
            <td><input type="text" name="address" placeholder="Enter Address"></td>
        </tr>
        <tr>
            <td><button type="submit" >Save</button></td>
        </tr>
    </table>
</form>
</body>
</html>
