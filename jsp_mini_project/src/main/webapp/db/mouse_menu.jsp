<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        li {
            /* display: inline-block; */
        
            text-align: center;      
            line-height: 30px;
            margin : 0;
            float: left;
            list-style: none;
        }
        a {
            display:block;
            padding:10px 20px;
            background-color:#ccc;
        }
        a:link, a:visited {
            color:black;
            text-decoration: none;
        }
        a:hover {
            background-color:#000;
            color:#fff;
        }
        .menu {
            display: none;
        }
        .top-menu:hover .menu{
            display: block;
        }

    </style>
</head>
<body>
    <ul>
        <li class="top-menu">
            <a href="#">소 개</a>
            <div class="menu">
                <a href="#">Menu1</a>
                <a href="#">Menu2</a>
                <a href="#">Menu3</a>
            </div>
        </li>
        <li class="top-menu">
            <a href="#">대여용품</a>
            <div class="menu">
                <a href="#">Menu1</a>
                <a href="#">Menu2</a>
            </div>
        </li>
        <li class="top-menu">
            <a href="#">이용방법</a>
            <div class="menu">
                <a href="#">Menu1</a>
                <a href="#">Menu2</a>
                <a href="#">Menu3</a>
                <a href="#">Menu4</a>
            </div>
        </li>
        <li class="top-menu">
            <a href="#">마이페이지</a>
            <div class="menu">
                <a href="#">Menu1</a>
            </div>
        </li>
    </ul>
</body>
</html>