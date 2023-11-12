<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../css/login.css">
        <script src="../js/login.js"></script>
        <title>Document</title>
    </head>

    <body>
        <section class="container">
            <div class="background-container"></div>
            <div class="logo">
                <a href="home.jsp"><img src="https://upload.wikimedia.org/wikipedia/commons/0/08/Netflix_2015_logo.svg" alt="Netflix Logo"></a>
            </div>
            <div class="login-container">         
                <div class="form-container">
                    <h1 class="opacity">Forget password</h1>
                    
                    <form action="../client/ForgetPasswdController" method="GET" required>
                        <input type="text" placeholder="Your Email" name="email" required>
                        
                        <button class="opacity" type="submit">Nhập mã</button>
                        
                    </form>
                    <div class="register-forget opacity">
                        <h1 style="font-size: 1rem;"><a href="" >Policy and user</a></h1>
                        <h1 style="font-size: 1rem;">Have account? <a href="login.jsp">Login</a></h1>
                    </div>
                </div>
            </div>
            <div class="theme-btn-container"></div>
        </section>

    </body>

</html>