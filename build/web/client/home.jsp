<%@page import="model.film"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="dao.filmDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



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
        <link rel="stylesheet" href="../css/home.css">
        <link rel="stylesheet" href="../css/main.css">
        <title> Develop Intelligent System </title>
    </head>

    <body>
        <div class="header">
            <div class="logo">
                <img src="https://upload.wikimedia.org/wikipedia/commons/0/08/Netflix_2015_logo.svg" alt="Netflix Logo">
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
                                <form action="searchfilmcontroller" method="get">
                                    <input type="text" name="name" id="search_form_name" placeholder="Nhập Tên Phim">
                                </form>
                            </div>
                        </a>
                    </li>
                    <li class="list-header"><a href="" class="list-header_link">Lọc phim</a></li>
                    <li class="list-header"><a href="login.html" class="list-header_link">Đăng nhập</a></li>
                    <!-- <input type="search" name="search" id="" placeholder="find your film"> -->
                </ul>
            </div>
        </div>
        <div class="body">
            <div class="slider">

                <div class="slider-backgr">
                    <img src="https://images3.alphacoders.com/882/882548.jpg"
                         alt="" style="width: 1536px ; height: 450px;">
                </div>
                <div class="slider-name-film">
                    Stranger Things
                </div>
                <div class="slider-des-film">
                    When a young boy vanishes, small town uncovers a mystery involving secret experiments, terrifying
                    supernatural forces and a strange litte girl.
                </div>
                <div class="silder--choice">
                    <div class="slider--choice__play">
                        <button><i class="fa-solid fa-play"></i> Play</button>
                    </div>
                    <div class="slider--choice__add-to-list">
                        <button><i class="fa-solid fa-plus"></i> Add to my list</button>
                    </div>
                </div>

            </div>
            <div class="grid">
                <div class="containner">
                    <div class="containner-menu" style="width: 20%; ">
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
                    <div class="grid-column" style=" border-right : 1px solid ; border-left: 1px solid;">
                        <div class="film--header">
                            <div class="film-type" style=" font-weight: 600;">Phim mới
                                nổi bật</div>
                            <div class="film-type__view-all">
                                <a href="new-film.jsp"> Xem tất cả </a>
                            </div>

                        </div>
                        <% ArrayList<film> filmList = (ArrayList<film>) request.getAttribute("film");
                        int stt = 1;%>

                        <div class="grid_row" style="display: flex; border-bottom: 1px solid;">
                            <c:forEach var="film" items="<%= filmDAO.getAllFilms()%>">
                                <div class="grid_row-12">
                                    <a href="detail-film.jsp">
                                        <div class="poster--film">
                                            <div class="poster--film__img">
                                                <img src="<c:out value="${film.imglink}" />" alt="">
                                            </div>
                                            <div class="poster--film__img--play-icon">
                                                <i class="fa-solid fa-play"></i>
                                            </div>
                                            <div class="poster--film__label">
                                                <c:out value="${film.label}" />
                                            </div>
                                            <div class="poster--film__type">
                                                <h1><c:out value="${film.filmtype}" /></h1>
                                            </div>
                                            <div class="poster--film__name">
                                                <h1><c:out value="${film.name}" /></h1>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </c:forEach>

                        </div>
                        <div class="film--header">
                            <div class="film-type" style=" font-weight: 600;">Phim chiếu rạp mới
                                nổi bật</div>
                            <div class="film-type__view-all">
                                <a href=""> Xem tất cả </a>
                            </div>

                        </div>
                        <div class="grid_row" style="display: flex;">
                        </div>
                    </div>
                    <div class="containner-right" style="width: 20%;">

                    </div>


                </div>
            </div>
            <div class="footer" style="display: flex;">
                <div class="body-side" ></div>
                <div class="grid-column" >
                    <div class="grid_row" style="border-top: 1px solid rgb(128, 128, 128); ">
                        <div class="logo" style="margin-top: 20px; width: 50%; ; ">
                            <a href="home.html">
                                <img src="https://upload.wikimedia.org/wikipedia/commons/0/08/Netflix_2015_logo.svg" alt="Netflix Logo" style="width: 250px; margin-bottom: 10px;">
                            </a>
                            <div class="netflix-describe" style="font-size: 0.8rem; margin-right: 10px;">
                                Netflix là dịch vụ xem video trực tuyến của Mỹ, nội dung chủ yếu là phim và các chương trình truyền hình, rất phổ biến ở Mỹ và nhiều nước khác trên thế giới mang đến đa dạng các loại chương trình truyền hình, phim, phim tài liệu đoạt giải thưởng và nhiều nội dung khác trên hàng nghìn thiết bị có kết nối Internet.
                            </div>
                        </div>
                        <div class="grid_row-12" style="margin-top: 20px; width: 23%; ">
                            <ul style="margin-top: 20px; list-style: none; padding-left: 0;">
                                <li>Lê Công Nam</li>
                                <li>PTHTTM</li>
                                <li>Nhóm 22</li>
                                <li>Gán Nhãn Cho Phim</li>
                            </ul>
                        </div>
                        <div class="grid_row-12" style="margin-top: 20px; width: 23%;">
                            <ul style="margin-top: 20px; list-style: none; padding-left: 0; font-size: 1rem;">
                                <li><a style="text-decoration: none; color: #fff;" href="https://www.facebook.com/lecongnam0604/"><i style=" margin-right: 10px; "class="fa-brands fa-facebook" ></i> facebook</a></li>
                                <li><a style="text-decoration: none; color: #fff;" href="https://www.instagram.com/namlc0604/"><i style=" margin-right: 10px; "class="fa-brands fa-instagram" ></i>instagram</a></li>
                                <li><a style="text-decoration: none; color: #fff;" href="https://drive.google.com/drive/u/0/my-drive"><i style=" margin-right: 10px; "class="fa-regular fa-envelope"></i>gmail</a></li>
                                <li><a style="text-decoration: none; color: #fff;" href="" title="0961256092"><i style=" margin-right: 10px; "class="fa-solid fa-phone"></i>phone number</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
                <div class="body-side" ></div>
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
                            var search = document.getElementById("search_film");
                            var search_form = document.getElementById("search_form");
                            var search_form_name = document.getElementById("search_form_name");
                            search.addEventListener("click", function () {
                                if (search_form.style.display === "none") {
                                    search_form.style.display = "block";
                                } else {
                                    search_form.style.display = "block";
                                }
                            });
                            search_form_name.addEventListener("blur", function () {
                                console.log("blur");
                                search_form.style.display = "none";
                            });
                            function openNav() {
                                console.log("open");
                                document.getElementById("mySidenav").style.width = "220px";
                            }

                            function closeNav() {
                                document.getElementById("mySidenav").style.width = "0";
                            }
        </script>

    </body>

</html>