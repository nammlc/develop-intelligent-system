<%-- 
    Document   : login.jsp
    Created on : Nov 10, 2023, 12:56:19 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/login.css">
    <script src="../js/login.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
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
                <h1 class="opacity">Login</h1>
                <form action="../client/LoginController" method="get">
                    <input type="text" placeholder="USERNAME" name="username">
                    <input type="password" placeholder="PASSWORD" name="passwd">
                    <button class="opacity">Login</button>
                </form>
                <h1 class="opacity" style="font-size: 1rem; text-align: center">${err} </h1>
                <div class="register-forget opacity">
                    <h1 style="font-size: 1rem;">New User ? <a href="signup.jsp" >Sign Up Here</a></h1>
                    <h1 style="font-size: 1rem;"><a href="forget-passwd.jsp">Forget password</a></h1>
                </div>
            </div>
        </div>
        <div class="theme-btn-container"></div>
    </section>

</body>

</html>
