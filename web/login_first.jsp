
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>手机号码登录</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            display: flex;
            align-items: center;
        }

        .image-container {
            flex: 1;
            padding: 20px;
        }

        .login-container {
            flex: 1;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .login-form {
            margin-bottom: 20px;
        }

        .form-field {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        .form-field label {
            flex: 1;
        }

        .form-field input[type="text"],
        .form-field input[type="password"] {
            flex: 2;
            padding: 5px;
        }

        .remember-me {
            margin-bottom: 10px;
        }

        .login-btn {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="image-container">
        <img src="media/login/1.png" alt="Image">
    </div>
    <div class="login-container">
        <h2>登录</h2>
        <form class="login-form" action="login-second.jsp" method="post">
            <div class="form-field">
                <label for="phone">手机号:</label>
                <input type="text" id="phone" name="phone" required>
            </div>
            <div class="form-field">
                <label for="password">密码:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="remember-me">
                <input type="checkbox" id="remember" name="remember">
                <label for="remember">记住密码</label>
            </div>
            <button type="submit" class="login-btn">登录</button>
        </form>
        <p>新用户？ <a href="registration.jsp">注册</a></p>
    </div>
</div>
</body>
</html>
