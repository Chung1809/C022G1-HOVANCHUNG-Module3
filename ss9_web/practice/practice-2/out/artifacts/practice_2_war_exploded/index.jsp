<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/26/2022
  Time: 2:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <style>
      .div{
        border: 1px solid;
        text-align: center;
      }
      input{
        border-radius: 2em;

      }
      .id1{
        padding: 15px;
      }
    </style>
  </head>
  <body>
  <form action="/LogIn" method="post">
    <div class="div">
      <h2>Login</h2>
      <div > <input type="text" name="username" placeholder="username" size="80"></div>
      <div><input type="text" name="password" placeholder="password" size="80"></div>
      <div> <input type="submit" value="Sign In"></div>
    </div>
  </form>
  </body>
</html>
