<%-- 
    Document   : detail-label
    Created on : Oct 25, 2023, 11:19:35 AM
    Author     : Admin
--%>
<%@page import="dao.labelDAO"%>
<%@page import="model.label"%>
<%@page import="java.util.ArrayList"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <title>Trang Quản Lý</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
            }

            header {
                background-color: #007BFF;
                color: #fff;
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 20px;
            }

            .logo {
                font-size: 24px;
            }

            .menu {
                display: flex;
                list-style: none;
                margin: 0;
                padding: 0;
            }

            .menu li {
                margin-right: 20px;
            }

            .menu a {
                text-decoration: none;
                color: #fff;
            }

            .container {
                display: flex;
            }

            .body{
                display: flex;

            }

            .form-body{

                margin: auto;
                width: 50%;
                margin-top: 20px;


            }

            .img-body{
                width: 50%;
                margin-top: 20px;

            }

            form{
                position: relative;
                display: block;
                width: 70%;
                box-shadow: 1px 0px 1px 1px;
                border-radius: 10px;
                height: 500px;
                padding: 10px;
                margin-left : 100px;
            }

            input[type=text],input[type=file]{
                width: 90%;
                padding: 12px 20px;
                margin : 8px 15px;
                display: inline-block;
                border-radius: 4px;
                box-sizing: border-box;

            }

            label{
                width: 100%;
                margin: 15px;

            }

            button{
                position: absolute;
                right: 0;
                border: 15px;
                background-color: #540660;
                display: block;
                color: #e3e1e1;
                padding:5px  10px ;
                margin-right: 50px;
                margin-top: 10px;
                border-radius: 7px;
            }

            .img-body-name{
                margin-bottom: 20px;
                font-size: 1.4rem;
            }
        </style>
        <link rel="stylesheet" href="">
    </head>

    <body>
        <header>
            <div class="logo">Trang quản trị</div>
            <ul class="menu">
                <li><a href="admin.jsp">Trang Chủ</a></li>
                <li><a href="home.jsp">Dự Án</a></li>
                <li><a href="#">Quản lý mẫu</a></li>
                <li><a href="#">Quản lý nhãn</a></li>
            </ul>
        </header>
        <div class="container">
            <div class="body">

                <div class="form-body">
                    <div style="margin:0 0 20px 110px ; font-size: 1.4rem"> Sửa nhãn "${label.getName()}" </div>
                    <form action="../client/editlabelcontroller" method="post" class="form-style">
                        <label for="labelID"> ID của nhãn </label> 
                        <input type="text" name="labelID" value="${label.getLabelID()}">
                        <label for="name"> Tên nhãn </label> 
                        <input type="text" name="name" value="${label.getName()}">
                        <label for="des"> Mô tả </label> 

                        <input type="text" name="des" value="${label.getDes()}">
                        
                        <label for="daycreate">Ngày tạo </label> 

                        <input type="text" name="daycreate" value="${label.getDaycreate()}">

                        <button type="submit">Submit</button>
                    </form>
                </div>
                

            </div>
        </div>
    </body>
</html>
