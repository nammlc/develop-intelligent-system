<%@page import="dao.filmDAO"%>
<%@page import="model.film"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="vi">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="../css/fontawesome-free-6.4.2-web/css/all.min.css">
        <link rel="icon" type="image/png" href="https://seeklogo.com/images/N/netflix-n-logo-0F1ED3EBEB-seeklogo.com.png"
              sizes="196x196" />
        <link rel="stylesheet" href="../css/search-film-result.css">
        <link rel="stylesheet" href="../css/main.css">
        <title> Develop Intelligent System </title>
    </head>

    <body>
        <div class="header">
            <div class="logo">
                <a href="/isystem/client/home.jsp"> <img src="https://upload.wikimedia.org/wikipedia/commons/0/08/Netflix_2015_logo.svg" alt="Netflix Logo"> </a>
            </div>
            <div class="navigation">
                <ul class="list">
                    <li class="list-header"><a href="#" class="list-header_link">Trang chủ</a></li>
                    <li class="list-header">
                        <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton2"
                                    data-bs-toggle="dropdown" aria-expanded="false"
                                    style="background-color: rgb(19, 18, 18); border: none; margin-top: -6px;">
                                Thể loại phim
                            </button>
                            <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownMenuButton2"
                                style="border-right: 10px;">
                                <li style="margin: 0;"><a class="dropdown-item active" href="#">Phim bộ</a></li>
                                <li style="margin: 0;"><a class="dropdown-item" href="#">Phim hành động</a></li>
                                <li style="margin: 0;"><a class="dropdown-item" href="#">Phim tình cảm</a></li>
                                <li style="margin: 0;"><a class="dropdown-item" href="#">Phim 18+</a></li>
                                <li style="margin: 0;"><a class="dropdown-item" href="#">Phim mới cập nhật</a></li>

                            </ul>
                        </div>
                    </li>

                    <li class="list-header">
                        <a href="#" id="search_film">
                            <i class="fa-solid fa-magnifying-glass" style="color: aliceblue;"></i>

                            <div class="search_film-list" id="search_form">
                                <form action="..client/searchfilmcontroller" method="get">
                                    <input type="text" name="" id="search_form_name" placeholder="Nh?p Tên Phim">
                                </form>
                            </div>
                        </a>
                    </li>
                    <li class="list-header"><a href="login.html" class="list-header_link">Đăng nhập</a></li>
                    <!-- <input type="search" name="search" id="" placeholder="find your film"> -->
                </ul>
            </div>
        </div>
        <div class="body">
            <div class="grid" style="display: flex;">
                <div class="containner-menu" style="width: 15%;">
                    <div id="mySidenav" class="sidenav">
                        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                        <a href="#">Phim mới</a>
                        <a href="#">Phim hành động</a>
                        <a href="#">Phim 18+</a>
                        <a href="#">Phim tình cảm</a>
                    </div>

                    <span style="font-size:30px;cursor:pointer ; margin-left: 10px;" onclick="openNav()">&#9776;
                        Menu</span>
                </div>
                <div class="containner">
                    <div class="grid-column" style=" display: flex;">
                        <div class="film-sreach-result" style="width: 70%;">
                            <div class="film--header">
                                <div class="film-type" style=" font-weight: 600;">Kết quả tìm kiếm :
                                </div>
                            </div>
                            <div class="grid_row">
                                <c:forEach var="film" items="${film}">
                                    <a href="detail-film.jsp" style="width: 23%;" class="poster--film">
                                        <div class="poster--film__img">
                                            <img src=" ${film.imglink}" alt=""
                                                 style="width: 140px;">

                                        </div>
                                        <div class="poster--film__img--play-icon">
                                            <i class="fa-solid fa-play"></i>
                                        </div>
                                    </a>
                                    <div class="film-info" style="width: 70%;">
                                        <div class="poster--film__name">
                                            <h1> ${film.name}</h1>
                                        </div>
                                        <div class="poster--film__des">
                                            <p>${film.filmtype}</p>
                                            <p>Độ tuổi : ${film.label}</p>
                                            <p>Thời gian : ${film.timeremain} phút</p>

                                        </div>

                                    </div>
                                </c:forEach>
                            </div>
                            
                        </div>
                        <div class="film-search-relate" style="width: 20%; margin: 15px;">
                            phim liên quan
                        </div>
                    </div>
                </div>
                <div class="containner-right" style="width: 15%;">

                </div>
            </div>

        </div>



        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@5.0.2/dist/umd/popper.min.js"
                integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
                integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        

    </boby>

</html>