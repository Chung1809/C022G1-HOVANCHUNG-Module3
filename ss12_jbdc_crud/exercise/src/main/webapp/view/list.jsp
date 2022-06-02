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
    <link rel="stylesheet" href="/bootstrap-4.0.0-dist%20(1)/css/bootstrap.min.css">

</head>
<body>
<h1 align="center">Hiển thị danh sách</h1>
<p align="center"><a href="/product?action=add">Add new</a></p>


<form action="/product?action=search" method="post" style="text-align: center">

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
        <c:forEach items="${product}" var="product">
    <tr style="border: 1px solid">
        <td>${product.id}</td>
        <td>${product.nameProduct}</td>
        <td>${product.priceProduct}</td>
        <td>${product.descriptionProduct}</td>
        <td>${product.producer}</td>
        <td><a href="/product?action=edit&id=${product.id}">Edit</a></td>
        <td>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#h${product.id}">
                Delete
            </button>


            <!-- Modal -->
            <div class="modal fade" id="h${product.id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <h3>Bạn có muốn xoá không</h3>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <a href="/product?action=delete&id=${product.id}">
                                <button type="button" class="btn btn-primary">Delete</button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </td>
    </tr>

    </c:forEach>
    </tr>
</table>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="/bootstrap-4.0.0-dist%20(1)/js/bootstrap.min.js"></script>
</html>
