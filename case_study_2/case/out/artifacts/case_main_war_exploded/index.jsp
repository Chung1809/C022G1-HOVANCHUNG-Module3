<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 6/1/2022
  Time: 10:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" href="bootstrap-4.0.0-dist%20(1)/css/bootstrap.min.css">

    <style>
      *{
        box-sizing: border-box;
      }
    </style>
  </head>
  <body>
  <div class="row" style="height: 100px">
    <div class="col-md-6">
      <div class="row">
        <div class="col-md-6">
          <div class="col-md-12">
            <img src="https://furamavietnam.com/wp-content/uploads/2018/08/logo@2x.png" alt="logo " class="img-fluid" width="63" height="100">
          </div>
        </div>

        <div class="col-md-6">
          <div class="col-md-12">
            <a href="https://www.tripadvisor.com/Hotel_Review-g298085-d302750-Reviews-Furama_Resort_Danang-Da_Nang_Quang_Nam_Province.html" target="_blank">
              <div class="widget-tripadvisor">
                <div class="inside">
                  <div class="widget-tripadvisor-logo"><img src="https://smartdata.tonytemplates.com/bestel/wp-content/uploads/2018/05/widget-tripadvisor-logo.png" alt=""></div>
                  <div class="widget-tripadvisor-rating"><img src="https://furamavietnam.com/wp-content/uploads/2018/08/widget-tripadvisor-rating.png" alt=""></div>
                </div>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>

    <div class="col-md-6">
      <div class="row">
        <div class="col-md-4">
         <div class="col-md-12">
           <p>
             103 - 105 Vo Nguyen Giap Street, Khue My Ward, Ngu Hanh Son District, Danang City, Vietnam
           </p>
         </div>
          <div class="col-md-12">
            <p>7,0 km from Danang Airport</p>
          </div>
        </div>

        <div class="col-md-4">
          <div class="col-md-12">
            <div class="header-contact-icon"><i class="icon-telephone"></i></div>
            <div> Phone : 84-123-456-789</div>
          </div>
          <div class="col-md-12">
            <div>Email : abc@gmail.com</div>
          </div>
        </div>
        <div class="col-md-4" style="text-align: center;padding: 25px">
          <div><a href="index.jsp"><button type="submit">Đăng nhập</button></a></div>
        </div>
      </div>
    </div>

  </div>

  <nav class="navbar navbar-expand-lg navbar-light bg-light" >
    <a class="navbar-brand" href="#">Home</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Customer
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown1">
            <a class="dropdown-item" href="/customer/list.jsp">Show List</a>
            <a class="dropdown-item" href="#">Update</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Delete</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Employee
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown2">
            <a class="dropdown-item" href="#">Add List</a>
            <a class="dropdown-item" href="#">Update</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Delete</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Contract
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">Add List</a>
            <a class="dropdown-item" href="#">Update</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Delete</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Service
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown3">
            <a class="dropdown-item" href="#">Add List</a>
            <a class="dropdown-item" href="#">Update</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Delete</a>
          </div>
        </li>
      </ul>
      <form class="form-inline my-2 my-lg-0">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      </form>
    </div>
  </nav>

  <div class="container">

    <div>
      <div class="col-md-12">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img class="d-block w-100" src="img/1.jpg" >
            </div>
            <div class="carousel-item">
              <img class="d-block w-100" src="img/2.jpg" >
            </div>
            <div class="carousel-item">
              <img class="d-block w-100" src="img/3.jpg">
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
      </div>
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
