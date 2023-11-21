<%-- 
    Document   : erro
    Created on : 22/05/2023, 09:38:26
    Author     : PTOLEDO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://fonts.googleapis.com">
        <link rel="stylesheet" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Geologica:wght@300&display=swap" rel="stylesheet">
        <title>Falha na operação</title>
        
        <style>
            body{
                font-family: 'Geologica', sans-serif;
            }
            h1{
                color: #C8AA6E;
                font-size: 50px;
            }
            a{
                background-color: red; /* Green */
                border: none;
                color: white;
                border-radius: 10px;
                padding: 10px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
            }
        </style>
    </head>
    <body>
        
        <a class="volta" href="/WebApplication1/index.html">Volta</a>
        <%
           String msg = (String) request.getAttribute("message");
        %>
        <h1><%out.println(msg);%> não realizado</h1>
    </body>
</html>
