<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/26/2022
  Time: 2:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <style>
      .id1{
        text-align: center;
        border: 1px solid;
        border-radius: 10px;
      }
      .id2{
        width: 100px;
        height: 25px;
        border-radius: 1em;
      }
      .id3{
        width: 80px;
        height: 25px;
        border-radius: 1em;
      }
    </style>
  </head>
  <body>
  <div class="id1">
    <h2>Currency Converter</h2>
    <form action="Money" method="get">
      <label>Rate</label>
      <input class="id2" type="text" name="number1" value="22000">
      <label>USD</label>
      <input class="id2" type="text" name="number2" value="0">
      <input class="id3" type="submit" value="Converter">
    </form>
  </div>
  </body>
</html>
