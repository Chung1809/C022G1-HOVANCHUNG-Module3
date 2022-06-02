<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 6/2/2022
  Time: 2:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="bootstrap-4.0.0-dist%20(1)/css/bootstrap.min.css">

</head>
<body>
<div class="row">
    <div class="col-md-3"></div>

    <div class="col-md-6">
        <div class="col-md-12">

            <h1 align="center">Hiển thị danh sách</h1>
            <p align="center"><a href="/customer?action=add" >Thêm mới</a></p>



            <form  action="/customer?action=search" method="post" style="text-align: center">

                <input type="text" name="name">
                <button type="submit">Search</button>

            </form>



            <table align="center" border="1" style=" border-collapse: collapse">
                <tr style="border: 1px solid">
                    <th>ID</th>
                    <th>TYPE_ID</th>
                    <th>NAME</th>
                    <th>BIRTHDAY</th>
                    <th>GENDER</th>
                    <th>CARD</th>
                    <th>PHONE</th>
                    <th>NUMBER</th>
                    <th>ADDRESS</th>
                    <th colspan="2">Optional</th>
                </tr>
                <tr style="border: 1px solid">
                    <c:forEach items="${customer}" var="c" >
                <tr style="border: 1px solid">
                    <td>${c.id}</td>
                    <td>${c.typeCustomer}</td>
                    <td>${c.name}</td>
                    <td>${c.birthday}</td>
                <c:if test="${c.gender }"><td>Nam</td></c:if>
                <c:if test="${!c.gender = false}"><td>Nữ</td></c:if>
                   <td>${c.card}</td>
                   <td>${c.phone}</td>
                   <td>${c.email}</td>
                   <td>${c.address}</td

                    <td><a href="/customer?action=edit&id=${c.id}">Edit</a></td>
                    <td><a href="/customer?action=delete&id=${c.id}">Delete</a></td>
                </tr>

                </c:forEach>
                </tr>
            </table>
        </div>
    </div>

    <div class="col-md-3"></div>
</div>

</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="bootstrap-4.0.0-dist%20(1)/js/bootstrap.min.js"></script>
</html>
