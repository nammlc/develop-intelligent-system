<%-- Document : personal-page Created on : Nov 12, 2023, 4:03:36 PM Author : Admin --%>

<%@page import="dao.userDAO" %>
<%@page import="model.user" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../css/fontawesome-free-6.4.2-web/css/all.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <title>My Personal Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0;
            }

            header {
                background-color: #333;
                color: white;
                text-align: center;
                padding: 10px;
                height: 50px;
            }
            header a {
                display: block;
                padding: 10px;
                text-decoration: none;
                text-align: start;
                color: #fff;
            }
            section {
                max-width: 600px;
                margin: 20px auto;
                background-color: white;
                padding: 20px;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            h1,
            h2 {
                color: #333;
            }

            img {
                border-radius: 50%;
                max-width: 100px;
            }

            ul {
                list-style-type: none;
                padding: 0;
            }

            li {
                margin-bottom: 10px;
            }

            footer {
                background-color: #333;
                color: white;
                text-align: center;
                padding: 10px;
                position: fixed;
                bottom: 0;
                width: 100%;
            }

            .option {
                display: flex;
                justify-content: space-between;
            }

            .option a {
                margin-top: 25px;

            }
            .option a:hover{
                cursor: pointer;
            }

            .form-edit {
            }

            .overlay {
                position: fixed;
                background-color: #d1c8c8;
                opacity: 0.9;
                top: 0;
                bottom: 0;
                right: 0;
                left: 0;
                z-index: 1;
                display: none;
            }

            .overlay form {
                position: absolute;
                top: 28%;
                width: 500px;
                padding: 10px;
                text-align: center;
                left: 33%;
                background-color: rgb(246, 221, 191);
                border-radius: 10px;
            }

            form input {
                display: block;
                background-color: #fffcfc;
                width: 95%;
                padding: 10px;
                margin-bottom: 10px;
                border-radius: 10px;
                font-weight: 700;

            }

            form h1 {
                text-align: start;
                text-decoration: blue;
            }
            form h1:hover{
                cursor: pointer;
            }

            button {
                padding: 10px;
                border-radius: 10px;
            }

            button:hover {
                opacity: 0.7;
            }
            #label{
                display: none;
            }
        </style>
    </head>

    <body id="body">

        <header>
            <a href="home.jsp" >Home</a>
        </header>

        <section>
            <div class="option">
                <h2>Hello, ${user.fullname}</h2>
                <a id="edit-form"> Edit information</a>
            </div>

            <ul>
                <c:set var="username" value="${username}" />
                <c:set var="user" value="${userDAO.getUser(username)}" />

                <li> Fullname : ${user.fullname}</li>
                <li>Email: ${user.email}</li>
                <li>Phone number: ${user.phonenum}</li>
                <li>Username: ${user.username}</li>
                <li>Day of birth: ${user.dob}</li>
                <li>
                    <h1>Đăng video</h1> 
                    <div class="client-upload">
                        <form>
                            <input type="file" id="fileInput">
                        </form>
                    </div>
                </li>
                <video id="uploadedVideo" controls width="400">
                    <!-- Nội dung sẽ hiển thị nếu trình duyệt không hỗ trợ video -->
                    <source src="" type="video/mp4">

                </video>
                
                <div id ="label" > 
                    <h1 style="font-size: 1rem">  Hành động : Đấm , đá , bạo lực </h1><!-- comment -->
                    <h1 style="font-size: 1rem">  Giới hạn độ tuổi : 18 tuổi </h1>
                </div>

            </ul>
        </section>
        <div class="form-edit">
            <div class="overlay" id="overlay">
                <form action="../client/usercontroller" method="post" class="formmmm">
                    <div class="option">
                        <h1>Edit information</h1>
                        <i id="exit" class="fa-solid fa-xmark"
                           style="margin-top: 30px; font-size: 1.5rem; margin-right: 10px;"></i>
                    </div>

                    <input type="text" name="fullname" placeholder="fullname" value="${user.fullname}" required>
                    <input type="text" name="email" placeholder="email" value="${user.email}" readonly required>
                    <input type="text" name="phonenum" placeholder="phonenum" value="${user.phonenum}" readonly required>
                    <input type="text" name="username" placeholder="username" value="${user.username}" readonly required>
                    <input type="date" name="dob" placeholder="dob" value="${user.dob}" required>
                    <button>Submit</button>

                </form>
            </div>
        </div>
        <footer>
            copyright @ 2023 Lê Công Nam
        </footer>
        <script>
            var formEdit = document.getElementById("edit-form");
            var overlay = document.getElementById("overlay");
            var body = document.getElementById("body");
            var exit = document.getElementById("exit");
            var label = document.getElementById("label");
            
            formEdit.addEventListener("click", function () {
                console.log("click");
                overlay.style.display = "block";

            });
            exit.addEventListener("click", function () {
                console.log("click");
                overlay.style.display = "none";

            });
            document.getElementById('fileInput').addEventListener('change', function (event) {
                const file = event.target.files[0]; // 
                const reader = new FileReader();
                label.style.display = "block";
                reader.onload = function (event) {
                    const mp4Data = event.target.result; // 

                    
                    const videoElement = document.getElementById('uploadedVideo');
                    videoElement.src = mp4Data; // 
                    videoElement.load(); // 
                };

                /
                reader.readAsDataURL(file); 
            });
        </script>
    </body>

</html>