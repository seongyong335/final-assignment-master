<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>GENSHIN-SET</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f5f5f5;
        }

        .container {
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 4px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
        }

        form {
            margin-top: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        .button-group {
            display: flex;
            justify-content: space-between;
            width: 100%;
        }

        button[type="submit"],
        button[type="button"] {
            padding: 8px 20px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button[type="button"] {
            background-color: #cccccc;
        }

        button[type="submit"]:hover,
        button[type="button"]:hover {
            background-color: #45a049;
        }

        button[class=delete] {
            background-color: #f44336;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>내정보</h1>
    <%
        String userId = request.getParameter("userId");
    %>
    <form method="post">
        <label>ID:</label>
        <input type="text" name="userId" value="<%=userId%>" readonly>
        <br>
        <label>Password:</label>
        <input type="password" name="userPasswd">
        <br>
        <div class="button-group">
            <button type="button" onclick="history.go(-1)">뒤로가기</button>
            <button type="submit" class="delete" formaction="/user/delete">회원탈퇴</button>
            <button type="submit" class="update" formaction="/user/update">회원수정</button>
        </div>
    </form>
</div>
</body>
</html>
