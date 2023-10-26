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

                <table>
                    <thead>
                        <tr>
                            <th class="table-head">ID</th>
                            <th class="table-head">Tên</th>
                            <th class="table-head">Tổng mẫu gán với nhãn</th>
                            <th class="table-head">Ngày thêm nhãn</th>
                            <th class="table-head">Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="table-column">${label.getLabelID()}</td>
                            <td class="table-column">${label.getName()}</td>
                            <td class="table-column">${label.getSumofsample()}</td>
                            <td class="table-column">${label.getDaycreate()}</td>
                            <td class="table-column"><td class="table-column">
                                <form action="../client/editlabelcontroller" method="get">
                                    <input type="hidden" name="labelID" value="${label.getLabelID()}">
                                    <button class="button-choice" type="submit">Sửa</button>
                                </form>
                                <!-- Button trigger modal -->



                                <button class="button-choice" type="button" data-bs-toggle="modal" data-bs-target="#exampleModal">Xóa</button>

                                <!-- Modal -->
                                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Xác nhận xóa</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                ...
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                                                <form action="../client/deletelabelcontroller" method="get">
                                                    <input type="hidden" name="labelID" value="${label.getLabelID()}">
                                                    <button class="button-choice" type="submit">Xóa</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>

                        </tr>
                    </tbody>
                </table>
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
