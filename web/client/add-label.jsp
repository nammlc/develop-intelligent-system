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
    
    <link rel="stylesheet" href="../css/add-label.css">
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
                <div style="margin:0 0 20px 110px ; font-size: 1.4rem"> Thêm nhãn </div>
                <form action="../client/addlabelcontroller" method="post" class="form-style">
                    <label for="name"> Tên nhãn </label> 
                    <input type="text" name="name" value="name">
                    <label for="des"> Mô tả </label> 

                    <input type="text" name="des" value="des">
                    <button type="submit">Submit</button>
                </form>
            </div>  
        </div>
    </div>
</body>
</html>
