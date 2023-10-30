<%@page import="model.label"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="dao.labelDAO" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
        
        .label--list-header{
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 20px;
        }

        .label--list__name h2{
            margin-top: 10px;
        }

        .label--list__icon-search{

        }
        table {
            width: 100%;
            border-collapse: collapse;
        }

        .table-head, .table-column {
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
    </style>
    <link rel="stylesheet" href="../css/fontawesome-free-6.4.2-web/css/all.min.css">

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
        <div class="sidebar">
            <ul>
                <li style="margin-left: 25%" ><a href="#">Quản lý nhãn</a></li>
                <li style="margin-left: 25%"><a href="#">Quản lý mẫu</a></li>
                <li style="margin-left: 25%"><a href="#">Quản lý model</a></li>
            </ul>
        </div>
        <div class="label--list">
            <div class="label--list-header">
                <div class="label--list__name">
                    <a href="add-label.jsp" style="margin-bottom: 10px"> Thêm nhãn</a>
                  
                    <h2>Danh sách nhãn</h2>
                </div>
                <div class="label--list__icon-search">
                    <a title="Tìm nhãn theo tên" style="display:flex"  >
                        <form action="../client/searchlabel" method="get">
                            <input type="text" name="name"  placeholder="Nhập tên nhãn cần tìm" style="padding : 5px ; border-radius: 5px" >
                        </form>
                        <i class="fa-solid fa-magnifying-glass" style="margin-top: 3px ; margin-left: 5px ; font-size: 1.4rem"></i></a>
                </div>
            </div>
            
            <table>
                <thead>
                    <tr>
                        <th class="table-head">ID</th>
                        <th class="table-head">Tên</th>
                        <th class="table-head">Ngày thêm nhãn</th>
                        <th class="table-head">Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="label" items="<%= labelDAO.getAllLabels()%>">
                    <tr>
                        <td class="table-column"><c:out value="${label.getLabelID()}" /></td>
                        <td class="table-column"><c:out value="${label.getName()}" /></td>
                        <td class="table-column"><c:out value="${label.getDaycreate()}"/></td>
                        <td class="table-column">
                            <form action="../client/selectlabelcontroller" method="get">
                            <input type="hidden" name="labelID" value="${label.getLabelID()}">
                            <button class="button-choice" type="submit">Xem chi tiết</button>
                        </form></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
