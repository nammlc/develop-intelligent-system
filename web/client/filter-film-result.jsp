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
                <img src="https://upload.wikimedia.org/wikipedia/commons/0/08/Netflix_2015_logo.svg" alt="Netflix Logo">
            </div>
            <div class="navigation">
                <ul class="list">
                    <li class="list-header" style="margin-top: 26px"><a href="home.jsp" class="list-header_link">Trang chủ</a></li>
                    

                    <li class="list-header" style="margin-top: 26px">
                        <a href="#" id="search_film">
                            <i class="fa-solid fa-magnifying-glass" style="color: aliceblue;"></i>

                            <div class="search_film-list" id="search_form">
                                <form action="searchfilmcontroller" method="get">
                                    <input type="text" name="name" id="search_form_name" placeholder="Nhập Tên Phim">
                                </form>
                            </div>
                        </a>
                    </li>
                    <li class="list-header filter" style="position: relative;  margin-top: 26px"">
                        <div class="list-header_link">Lọc phim</div>
                        <div class="filter-body" >
                            <div class="filter-film">
                                <ul>
                                    <li><a href="../client/filterfilmcontroller?tag=phim+mỹ"> Phim mỹ</a> </li>
                                    <li><a href="../client/filterfilmcontroller?tag=phim+hồng+kong"> Phim hồng kong</a></li>
                                    <li><a href="../client/filterfilmcontroller?tag=phim+nhật"> Phim nhật</a> </li>
                                    <li><a href="../client/filterfilmcontroller?tag=phim+việt"> Phim việt</a> </li>
                                </ul>
                                <ul>
                                    <li><a href="../client/filterfilmcontroller?tag=phim+hành+động"> Phim hành động </a>  </li>
                                    <li><a href="../client/filterfilmcontroller?tag=phim+tình+cảm"> Phim tình cảm</a>  </li>
                                    <li><a href="../client/filterfilmcontroller?tag=phim+kinh+dị"> Phim kinh dị</a>  </li>
                                    <li><a href="../client/filterfilmcontroller?tag=phim+hoạt+hình"> Phim hoạt hình</a>  </li>
                                </ul>
                                <ul>
                                    <li><a href="../client/filterfilmcontroller?tag=phim+âm+nhạc"> Phim âm nhạc</a>  </li>
                                    <li><a href="../client/filterfilmcontroller?tag=phim+khoa+học+VT"> Phim khoa  học VT</a>  </li>
                                    <li><a href="../client/filterfilmcontroller?tag=phim+tâm+lý"> Phim tâm lý</a>  </li>
                                    <li><a href="../client/filterfilmcontroller?tag=phim+gia+đình"> Phim gia đình</a>  </li>
                                </ul>
                                <ul>
                                    <li><a href="../client/filterfilmcontroller?tag=TV+show"> TV show</a> </li>
                                    <li><a href="../client/filterfilmcontroller?tag=phim+dài+tập"> Phim dài tập</a>  </li>
                                    <li><a href="../client/filterfilmcontroller?tag=phim+chiếu+rạp"> Phim chiếu rạp</a>  </li>
                                    <li><a href="../client/filterfilmcontroller?tag=phim+võ+thuật"> Phim võ thuật</a>  </li>
                                </ul>

                            </div>
                        </div>

                    </li>
                    <% if (session.getAttribute("username") != null) {%>
                    <li class="list-header filter" ><div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false" style="background-color: #111; border: none; padding:none">
                              Welcome,  <%= session.getAttribute("username") %> !
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1" style="background: #111">
                                <li style="margin: 0"> <a class="dropdown-item" href="personal-page.jsp">Trang cá nhân</a></li>
                                
                                <li style="margin: 0"><a class="dropdown-item" href="../client/LogoutController">Đăng xuất</a></li>
                            </ul>
                        </div></li>
                        <% } else { %>
                    <li class="list-header" style="margin-top: 26px"><a href="login.jsp" class="list-header_link">Đăng nhập</a></li>
                        <% } %>
                </ul>
            </div>
        </div>
        <div class="body">
            <div class="grid" style="display: flex;">
                <div class="containner-menu" style="width: 15%;">
                    <div id="mySidenav" class="sidenav">
                        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                        
                        <a href="../client/filterfilmcontroller?tag=phim+hoạt+hình">Phim hoạt hình</a>
                        <a href="../client/filterfilmcontroller?tag=phim+hành+động">Phim hành động</a>
                        <a href="../client/filterfilmcontroller?tag=phim+hay">Phim hay</a>
                        <a href="../client/filterfilmcontroller?tag=phim+tình+cảm">Phim tình cảm</a>
                    </div>

                    <span style="font-size:30px;cursor:pointer ; margin-left: 10px;" onclick="openNav()">&#9776;
                        Menu</span>
                </div>
                <div class="containner">
                    <div class="grid-column" style=" display: flex;">
                        <div class="film-sreach-result" style="width: 70%;">
                            <div class="film--header">
                                <div class="film-type" style=" font-weight: 600;">Có ${size} bộ phim là thể loại "${tag}":
                                </div>

                            </div>
                            <div class="grid_row">
                                <c:forEach var="film" items="${film}">
                                    <a href="../client/detailfilmcontroller?id=${film.id}" style="width: 23%;" class="poster--film">
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

    </boby>

</html>