<%-- 
    Document   : personal-page
    Created on : Nov 12, 2023, 4:03:36 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        }

        section {
            max-width: 600px;
            margin: 20px auto;
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1, h2 {
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
    </style>
</head>
<body>

    <header>
        <h1>Your Name</h1>
    </header>

    <section>
        <div>
            <img src="your-profile-picture.jpg" alt="Profile Picture">
        </div>
        <h2>About Me</h2>
        <p>This is a brief description about yourself. You can talk about your interests, hobbies, or anything else you'd like to share.</p>

        <h2>My Interests</h2>
        <ul>
            <li>Interest 1</li>
            <li>Interest 2</li>
            <li>Interest 3</li>
        </ul>
    </section>

    <footer>
        &copy; 2023 Your Name
    </footer>

</body>
</html>
