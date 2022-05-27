<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 5/26/2022
  Time: 3:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <style>
      .id1{
        text-align: center;
        width: 500px;
        height: 300px;
        margin: auto;
        border: 1px solid;
        background-color: antiquewhite;
      }
      .id2{
        padding: 10px;



      }
      .id3{
        border-radius: 1em;
      }
    </style>
  </head>
  <body>
  <div class="id1">
    <h2>Product Discount Calculator</h2>
    <form action="Calculator" method="get">

       <div class="id2">
         <label style="margin: 25px 25px 25px -45px;">Product Description</label>
         <input  class="id3" type="text" name="product">
       </div>
       <div class="id2">
         <label style="margin: 25px 25px 25px 25px;" >List Price</label>
         <input class="id3" type="text" name="price">
       </div>
       <div class="id2">
         <label >Discount Percent</label>
         <input class="id3" type="text" name="percent">
       </div>
       <div class="id2">
         <input class="id3" type="submit" value="Convert">
       </div>

    </form>
  </div>
  </body>
</html>
