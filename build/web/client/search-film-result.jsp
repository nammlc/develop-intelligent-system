<%@page import="dao.filmDAO"%>
<%@page import="model.film"%>
<%@page import="java.util.ArrayList"%>

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
                    <li class="list-header"><a href="#" class="list-header_link">Trang ch?</a></li>
                    <li class="list-header">
                        <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton2"
                                    data-bs-toggle="dropdown" aria-expanded="false"
                                    style="background-color: rgb(19, 18, 18); border: none; margin-top: -6px;">
                                Th? lo?i phim
                            </button>
                            <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="dropdownMenuButton2"
                                style="border-right: 10px;">
                                <li style="margin: 0;"><a class="dropdown-item active" href="#">Phim b?</a></li>
                                <li style="margin: 0;"><a class="dropdown-item" href="#">Phim hành ??ng</a></li>
                                <li style="margin: 0;"><a class="dropdown-item" href="#">Phim tình c?m</a></li>
                                <li style="margin: 0;"><a class="dropdown-item" href="#">Phim 18+</a></li>
                                <li style="margin: 0;"><a class="dropdown-item" href="#">Phim m?i c?p nh?t</a></li>

                            </ul>
                        </div>
                    </li>

                    <li class="list-header">
                        <a href="#" id="search_film">
                            <i class="fa-solid fa-magnifying-glass" style="color: aliceblue;"></i>

                            <div class="search_film-list" id="search_form">
                                <form action="/searchfilmcontroller" method="get">
                                    <input type="text" name="" id="search_form_name" placeholder="Nh?p Tên Phim">
                                </form>
                            </div>
                        </a>
                    </li>
                    <li class="list-header"><a href="login.html" class="list-header_link">??ng nh?p</a></li>
                    <!-- <input type="search" name="search" id="" placeholder="find your film"> -->
                </ul>
            </div>
        </div>
        <div class="body">
            <div class="grid" style="display: flex;">
                <div class="containner-menu" style="width: 15%;">
                    <div id="mySidenav" class="sidenav">
                        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                        <a href="#">Phim m?i</a>
                        <a href="#">Phim hành ??ng</a>
                        <a href="#">Phim 18+</a>
                        <a href="#">Phim tình c?m</a>
                    </div>

                    <span style="font-size:30px;cursor:pointer ; margin-left: 10px;" onclick="openNav()">&#9776;
                        Menu</span>
                </div>
                <div class="containner">
                    <div class="grid-column" style=" display: flex;">
                        <div class="film-sreach-result" style="width: 70%;">
                            <div class="film--header">
                                <div class="film-type" style=" font-weight: 600;">K?t qu? tìm ki?m :
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
                                            <p>
                                                Loki: Ph?n 2 ? Loki Season 2 (2023) khi Steve Rogers, Tony Stark và Scott Lang
                                                quay tr? v? c?t m?c 2012, ngay khi tr?n chi?n ? New York k?t thúc, ?? ?m??n t?m?
                                                quy?n tr??ng c?a Loki. Nh?ng m?t tai n?n b?t ng? x?y ??n, khi?n Loki nh?t ???c
                                                kh?i l?p ph??ng Tesseract và ti?n th? t?u thoát.
                                            </p>
                                            <p>
                                                Cu?c tr?n thoát này ?ã d?n ??n dòng th?i gian b? r?i lo?n. C?c TVA ? t? ch?c b?o
                                                v? tính nguyên v?n c?a dòng ch?y th?i gian, bu?c ph?i can thi?p, ?i gô c? ông
                                                th?n này v? làm vi?c. T?i ?ây, Loki có hai l?a ch?n, m?t là giúp TVA ?n ??nh l?i
                                                th?i gian, không thì b? tiêu h?y. D? nhiên Loki ch?n l?a ch?n th? nh?t. Nh?ng
                                                ?ây là n??c ?i vô cùng m?o hi?m, vì ông th?n này th??ng l?c l?a, ?l??n l?o?,
                                                chuyên ?âm lén nh? b?n tính t? nhiên c?a gã.
                                            </p>
                                        </div>

                                    </div>
                                </c:forEach>
                            </div>
                            <div class="grid_row" style="margin-top: 20px;">
                                <nav class="navbar navbar-expand-lg navbar-light bg-dark" style="padding: 0">
                                    <div class="container-fluid" style="background-color: #111;">
                                        <a class="navbar-brand" href="#" style="color: aliceblue;" id="film-info">Thông
                                            tin</a>
                                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                                data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                                                aria-label="Toggle navigation">
                                            <span class="navbar-toggler-icon"></span>
                                        </button>
                                        <div class="collapse navbar-collapse" id="navbarNav">
                                            <ul class="navbar-nav">
                                                <li class="nav-item">
                                                    <a class="nav-link active" aria-current="page" href="#"
                                                       style="color: aliceblue;" id="film-actor">Di?n Viên</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="#" style="color: aliceblue;"
                                                       id="film-trailer">Trailer</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </nav>
                                <div class="film-click" id="film-click"></div>
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
        <script>
                        function openNav() {
                            console.log("open");
                            document.getElementById("mySidenav").style.width = "240px";
                        }

                        function closeNav() {
                            document.getElementById("mySidenav").style.width = "0";
                        }
                        var film_info = document.getElementById("film-info");
                        var film_actor = document.getElementById("film-actor");
                        var film_trailer = document.getElementById("film-trailer");
                        var film_click = document.getElementById("film-click");
                        film_info.addEventListener("click", function () {
                            console.log("click");

                            film_click.innerHTML = `
            
                    <p>
                        Loki: Ph?n 2 ? Loki Season 2 (2023) khi Steve Rogers, Tony Stark và Scott Lang quay tr? v? c?t m?c 2012, ngay khi tr?n chi?n ? New York k?t thúc, ?? ?m??n t?m? quy?n tr??ng c?a Loki. Nh?ng m?t tai n?n b?t ng? x?y ??n, khi?n Loki nh?t ???c kh?i l?p ph??ng Tesseract và ti?n th? t?u thoát.
                    </p>
                    <p>
                    Cu?c tr?n thoát này ?ã d?n ??n dòng th?i gian b? r?i lo?n. C?c TVA ? t? ch?c b?o v? tính nguyên v?n c?a dòng ch?y th?i gian, bu?c ph?i can thi?p, ?i gô c? ông th?n này v? làm vi?c. T?i ?ây, Loki có hai l?a ch?n, m?t là giúp TVA ?n ??nh l?i th?i gian, không thì b? tiêu h?y. D? nhiên Loki ch?n l?a ch?n th? nh?t. Nh?ng ?ây là n??c ?i vô cùng m?o hi?m, vì ông th?n này th??ng l?c l?a, ?l??n l?o?, chuyên ?âm lén nh? b?n tính t? nhiên c?a gã.
                    </p>
            
                `
                        });
                        film_trailer.addEventListener('click', function () {

                            film_click.innerHTML = `
                <iframe width="560" height="315" src="https://www.youtube.com/embed/_hU9KqVfBuI?si=EWJJrmQ_RgjgYO-s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>            `
                        });

        </script>

    </boby>

</html>