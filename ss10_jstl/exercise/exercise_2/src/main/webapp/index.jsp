<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/27/2022
  Time: 3:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <style>
      .id{
        margin: 200px 200px 500px 500px;
        border: 1px solid;
      }
    </style>

  </head>
  <body>
  <div class="id">
    <h2 style="text-align: center">Simple Calculator</h2>
    <form action="/calculator" method="post" style="text-align: center">
      <div>
        <label >First Operand</label>
        <input type="text" name="first-operand" placeholder="Fist">
      </div>
      <div>
        <label >Operator</label>
        <select name="operator" id="">
          <option value="+">Addition</option>
          <option value="-">Subtraction</option>
          <option value="*">Multiplication</option>
          <option value="/">Division</option>
        </select>

      </div>
      <div>
        <label >Second Operand</label>
        <input type="text" name="second-operand" placeholder="Second">
      </div>
      <div>
        <input type="submit"  name="calculator" value="Calculate">
      </div>
    </form>
  </div>
  </body>

</html>

