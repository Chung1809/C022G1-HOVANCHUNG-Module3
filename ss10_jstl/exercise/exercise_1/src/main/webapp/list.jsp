<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/27/2022
  Time: 2:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>
        .id1{
            width: 50px;
            height: 30px;
        }
        .id2{
            margin: 100px 100px 500px 500px ;
            border: 1px solid;
            width: 500px;
            height: 300px;

        }
    </style>
</head>
<body>
<table class="id2"  >
    <tr>
        <th >STT</th>
        <th >Tên</th>
        <th >Ngày Sinh</th>
        <th >Địa chỉ</th>
        <th >Ảnh</th>
    </tr>
    <c:forEach items="${customerList}" var="customers" varStatus="cus" >
    <tr>
        <td>${cus.count}</td>
        <td><c:out value="${customers.name}"> </c:out></td>
        <td><c:out value="${customers.birthDay}"> </c:out> </td>
        <td><c:out  value="${customers.address}"> </c:out> </td>
        <td>
            <img src="${customers.customer}" alt="" width="50px" height="30px">
        </td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
