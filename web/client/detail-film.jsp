<%-- 
    Document   : detail-film
    Created on : Oct 23, 2023, 7:48:37 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    <link rel="stylesheet" href="../css/detail-film.css">
    <link rel="stylesheet" href="../css/main.css">
    <title> Develop Intelligent System </title>
</head>

<body id="body">
    <div class="header">
        <div class="logo">
            <a href="home.html">
                <img src="https://upload.wikimedia.org/wikipedia/commons/0/08/Netflix_2015_logo.svg" alt="Netflix Logo">
            </a>
        </div>
        <div class="navigation">
            <ul class="list">
                <li class="list-header"><a href="#" class="list-header_link" style="color: aliceblue;">Trang chủ</a>
                </li>
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
                            <form action="" method="get">
                                <input type="text" name="" id="search_form_name" placeholder="Type Your Film's Name">
                                <input type="submit" value="Search">
                            </form>
                        </div>
                    </a>
                </li>
                <li class="list-header"><a href="login.html" class="list-header_link" style="color: aliceblue;">Đăng
                        nhập</a></li>
                <!-- <input type="search" name="search" id="" placeholder="find your film"> -->
            </ul>
        </div>
    </div>
    <div class="body" style="display: flex;">
        <div class="body-side" ></div>
        <div class="grid-column" >
            <div class="film-streaming">
                <div class="film-video">
                    <iframe width="860" height="460"
                        src="https://www.youtube.com/embed/NniWrbnDuy4?si=HVWDyIkaylEvmZkW" title="YouTube video player"
                        frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                        allowfullscreen></iframe>
                    <div class="film-name-and-choice">
                        <div class="film-name">
                            Đốt Rừng Phương Nam
                        </div>
                        <div class="film-choice" id="light">
                            <i class="fa-regular fa-lightbulb"></i> Bật Đèn
                        </div>
                    </div>

                    <div class="film-describe">
                        <p>
                            Biệt Đội Đánh Thuê 4 – The Expendables 4 (2023) là phim hành động Mỹ được đạo diễn bởi Scott
                            Waugh với phần kịch bản do Spenser Cohen, Max Adams và John Joseph Connolly chấp bút.
                        </p>
                        <p>
                            Đây là phần hậu truyện của Biệt đội đánh thuê 3 và đồng thời cũng là phần phim thứ bốn của
                            loạt
                            phim Biệt đội đánh thuê.
                        </p>
                        <p>
                            Biệt Đội Đánh Thuê 4 bao gồm các chiến binh kỳ cựu và tân binh, đang đối mặt với nhiệm vụ
                            nguy
                            hiểm: ngăn chặn Suharato Rahmat, một tên buôn vũ khí nguy hiểm, khỏi giao kíp nổ hạt nhân
                            cho
                            Ocelot, một kẻ độc ác đe dọa thế giới. Hành trình từ một nhà máy vũ khí cũ ở Qadhafi đến con
                            thuyền Jantara sẽ hé lộ những bí mật và sự thật đáng kinh ngạc về Ocelot.
                        </p>
                    </div>
                </div>
                <div class="film-info">
                    <table class="table" id="table">
                        <tr>
                            <td>Tên Phim</td>
                            <td> Đốt rừng Phương Nam</td>
                        </tr>
                        <tr>
                            <td>Đạo Diễn</td>
                            <td> Nguyễn Quang Dũng</td>
                        </tr>
                        <tr>
                            <td>Diễn Viên Chính</td>
                            <td> Trấn Thành</td>
                        </tr>
                        <tr>
                            <td>Thời Lượng</td>
                            <td> 106 phút (1h46m)</td>
                        </tr>
                    </table>
                </div>
            </div>

        </div>
        <div class="body-side" ></div>
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
                        <li><a style="text-decoration: none;" href="https://www.facebook.com/lecongnam0604/"><i style=" margin-right: 10px; "class="fa-brands fa-facebook" ></i> facebook</a></li>
                        <li><a style="text-decoration: none;" href="https://www.instagram.com/namlc0604/"><i style=" margin-right: 10px; "class="fa-brands fa-instagram" ></i>instagram</a></li>
                        <li><a style="text-decoration: none;" href="https://drive.google.com/drive/u/0/my-drive"><i style=" margin-right: 10px; "class="fa-regular fa-envelope"></i>gmail</a></li>
                        <li><a style="text-decoration: none;" href="" title="0961256092"><i style=" margin-right: 10px; "class="fa-solid fa-phone"></i>phone number</a></li>
                        
                    </ul>
                </div>
            </div>
        </div>
        <div class="body-side" ></div>
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
        var light = document.getElementById("light");
        var body = document.getElementById("body");
        var table = document.getElementById("table");

        light.addEventListener('click', function () {
            console.log("click");
            var computedStyle = getComputedStyle(body);
            var backgroundColor = computedStyle.backgroundColor;

            if (backgroundColor === "rgb(17, 17, 17)") {
                body.style.backgroundColor = "rgb(255, 255, 255)";
                body.style.color = "rgb(17, 17, 17)";
                table.style.color = "rgb(17, 17, 17)";
                light.innerHTML = `<i class="fa-solid fa-lightbulb"></i>   Tắt Đèn`;
            } else {
                body.style.backgroundColor = "rgb(17, 17, 17)";
                body.style.color = "rgb(255, 255, 255)";
                table.style.color = "rgb(255, 255, 255)";
                light.innerHTML = `<i class="fa-regular fa-lightbulb"></i>   Bật Đèn`;
            }
        });

    </script>
</body>

</html>
