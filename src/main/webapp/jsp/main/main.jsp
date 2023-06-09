<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            width: 600px;
            margin: 0 auto;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .header h3 {
            margin: 0;
        }

        .character-list {
            display: flex;
            flex-wrap: wrap;
        }

        .character-item {
            width: 74px;
            height: 90px;
            float: left;
            margin-right: 10px;
            margin-bottom: 10px;
        }

        .character-item a {
            display: block;
            text-decoration: none;
        }

        .character-image {
            height: 70px;
            width: 70px;
        }

        .star-image,
        .element-image {
            height: 16px;
            width: 16px;
            float: right;
        }

        .addCharacter-button {
            padding: 5px 10px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .logout-button {
            padding: 5px 10px;
            background-color: #f44336;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .userInfo-button {
            padding: 5px 10px;
            background-color: #cccccc;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body class="container">
    <%
        String userId = (String)request.getAttribute("userId");
    %>
    <div class="header">
        <form action="/character/list" method="post">
            <input type="hidden" name="userId" value="<%=userId%>">
            <h3>사용자 : <%= userId %></h3>
            <button type="submit" class="addCharacter-button">캐릭터 추가</button>
        </form>
            <button type="button" class="userInfo-button" onclick="location.href='/jsp/user/info.jsp?userId=<%=userId%>'" >회원정보</button>
            <button type="button" class="logout-button" onclick="location.href='/'" >로그아웃</button>
    </div>
    <div class="character-list">
        <c:forEach var="character" items="${ requestScope.userCharacterList }" varStatus="st">
            <div class="character-item">
                <a type="submit" href="/jsp/spec/select?charNo=${character.charNo}&userId=<%=request.getParameter("userId")%>">
                    <img class="character-image" src="/pic/character/${character.charName}.png"/> <br>
                    <img class="star-image" src="/pic/star/star-${character.charStar}.png"/>
                    <img class="element-image" src="/pic/element/Element_${character.charElement}.png"/>
                </a>
            </div>
        </c:forEach>
    </div>
</body>
</html>