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

            .sidebar {
                width: 250px;
                background-color: #333;
                color: #fff;
                padding: 20px 0;
            }

            .sidebar ul {
                list-style: none;
                padding: 0;
            }

            .sidebar ul li {
                margin-bottom: 10px;
            }

            .sidebar a {
                text-decoration: none;
                color: #fff;
            }

            .label--list {
                flex: 1;
                padding: 20px;
            }

            .label--list-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin: 20px;
            }

            .label--list__name h2 {
                margin: 0;
            }

            .label--list__icon-search {
            }

            table {
                width: 100%;
                border-collapse: collapse;
            }

            .table-head,
            .table-column {
                padding: 10px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            .table-head {
                background-color: #333;
                color: #fff;
            }

            .button-choice {
                background-color: #007BFF;
                color: #fff;
                border: none;
                padding: 10px 20px;
                cursor: pointer;
            }
            .label--des{
                margin-top: 20px;
            }
            .form-style{
                width: 400px;
                display: block;
                background-color: #7d7878;
                border-radius: 10px;
            }
            input[type=text]{
                width: 90%;
                padding: 12px 20px;
                margin : 8px 15px;
                display: inline-block;
                border-radius: 4px;
                box-sizing: border-box;
            }
            label{
                margin: 0 15px;
            }
            button{
                width: 90%;
                padding: 12px 20px;
                margin : 8px 15px;
                display: inline-block;
                border-radius: 10px;
                box-sizing: border-box;
                background-color: #2a4ed1;
            }
        </style>
        <link rel="stylesheet" href="">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>

    <body>
        <header>
            <div class="logo">Trang quản trị</div>
            <ul class="menu">
                <li><a href="#">Trang Chủ</a></li>
                <li><a href="#">Dự Án</a></li>
                <li><a href="#">Quản lý mẫu</a></li>
                <li><a href="#">Quản lý nhãn</a></li>
            </ul>
        </header>
        <div class="container">
            <div class="sidebar">
                <ul>
                    <li><a href="#">Quản lý nhãn</a></li>
                    <li><a href="#">Quản lý mẫu</a></li>
                    <li><a href="#">Quản lý model</a></li>
                </ul>
            </div>
            <div class="label--list">
                <div class="label--list-header">
                    <div class="label--list__name">
                        <h2>Chi tiết nhãn</h2>
                    </div>
                    <div class="label--list__icon-search">
                        <i class="fa-solid fa-magnifying-glass">Tìm nhãn</i>
                    </div>
                </div>

                <form action="../client/editlabelcontroller" method="post" class="form-style">
                    <label for="name"> Tên nhãn </label> 
                    <input type="text" name="name" value="${label.getName()}">
                    <label for="describee"> Mô tả </label> 

                    <input type="text" name="describee" value="${label.getDescribe()}">
                    <label for="imgdes">Ảnh mô tả nhãn </label> 

                    <input type="text" name="imgdes" value="${label.getImgdes()}">
                    <label for="imgdes">Tổng số mẫu gắn với nhãn </label> 

                    <input type="text" name="sumofsample" value="${label.getSumofsample()}">
                                        <label for="labelID">ID của nhãn</label> 

                    <input type="text" name="labelID" value="${label.getLabelID()}">
                                        <label for="daycreate">Ngày tạo </label> 

                    <input type="text" name="daycreate" value="${label.getDaycreate()}">

                    <button type="submit" style="margin: 0 15px">Submit</button>
                </form>
                <div class="label--des">
                    <div class="lebel-imgdes">
                        <div class=""> Ảnh mô tả nhãn</div>
                        <img src="${label.getImgdes()}" alt="" style="width: 350px; height: 250px;"> 
                    </div>
                    <div class="label-des">
                        <p>${label.getDescribe()}</p>
                    </div>
                </div>


            </div>
        </div>
    </body>
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

        </html>
